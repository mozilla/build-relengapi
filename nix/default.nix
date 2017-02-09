let
  _pkgs = import <nixpkgs> {};
  _nixpkgs = _pkgs.fetchFromGitHub (builtins.fromJSON (builtins.readFile ./nixpkgs.json));
in
{ pkgs ? import _nixpkgs {}
}:

let

  filterSource = src:
    { name ? null
    , include ? [ "/" ]
    , exclude ? []
    }:
      assert name == null -> include != null;
      assert name == null -> exclude != null;
      let
        _include= if include == null then [
          "/VERSION"
          "/${name}"
          "/tests"
          "/MANIFEST.in"
          "/settings.py"
          "/setup.py"
        ] else include;
        _exclude = if exclude == null then [
          "/${name}.egg-info"
          "/build"
        ] else exclude;
        startsWith = s: x: builtins.substring 0 (builtins.stringLength x) s == x;
        relativePath = path:
          builtins.substring (builtins.stringLength (builtins.toString src))
                             (builtins.stringLength path)
                             path;
      in
        builtins.filterSource (path: type: 
          if builtins.any (x: x) (builtins.map (startsWith (relativePath path)) _exclude) then false
          else if builtins.any (x: x) (builtins.map (startsWith (relativePath path)) _include) then true
          else false
        ) src;

  python =
    import ./requirements.nix { inherit pkgs; };

  name =
    "relengapi";

  version =
    pkgs.lib.removeSuffix "\n"
      (builtins.head (pkgs.lib.splitString "\n"
        (builtins.readFile ./../VERSION)));

in python.mkDerivation {
  namePrefix = "";
  name = "${name}-${version}";

  src = filterSource ./.. { inherit name; };

  buildInputs = [
    #pkgs.makeWrapper
    #pkgs.glibcLocales
    pkgs.which
    pkgs.git

    # dev
    python.packages."MySQL-python"
    python.packages."codecov"
    python.packages."coverage"
    python.packages."coverage"
    python.packages."isort"
    python.packages."mock"
    python.packages."mockcache"
    python.packages."mockldap"
    python.packages."moto"
    python.packages."nose"
    python.packages."pep8"
    python.packages."pyflakes"
  ];

  propagatedBuildInputs = [

    # core
    python.packages."Flask"
    python.packages."Flask-Login"
    python.packages."Flask-BrowserID"
    python.packages."Sphinx"
    python.packages."SQLAlchemy"
    python.packages."celery"
    python.packages."alembic"
    python.packages."requests"
    python.packages."wrapt"
    python.packages."itsdangerous"
    python.packages."blinker"
    python.packages."pytz"
    python.packages."WSME"
    python.packages."croniter"
    python.packages."python-dateutil"
    python.packages."simplejson"
    python.packages."boto"
    python.packages."python-memcached"
    python.packages."elasticache-auto-discovery"
    python.packages."IPy"
    python.packages."furl"
    python.packages."redo"
    python.packages."bzrest"
    python.packages."structlog"
    python.packages."mozdef-client"
    python.packages."requests-futures"
    python.packages."taskcluster"

    # ldap
    python.packages."python-ldap"

    # production
    python.packages."psycopg2"
  ];

  doCheck = false;

  checkPhase = ''
    export RELENGAPI_SETTINGS=settings_example.py
    export VIRTUAL_ENV=something
    export PATH=$out/bin:$PATH
    sh ./validate.sh
  '';

  postShellHook = ''
    export RELENGAPI_SETTINGS=settings_example.py
    export VIRTUAL_ENV=something
    export AUTHENTICATE_MAIL=example@mozilla.com
  '';

}

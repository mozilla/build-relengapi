{ pkgs, python }:

self: super: {

  "sphinx-rtd-theme" = python.overrideDerivation super."sphinx-rtd-theme" (old: {
    propagatedNativeBuildInputs =
      builtins.filter
        (x: (builtins.parseDrvName x.name).name != "${python.__old.python.libPrefix}-Sphinx")
        old.propagatedNativeBuildInputs;
    patchPhase = ''
      sed -i -e "s|install_requires=open('requirements.txt').read().splitlines(),|install_requires=[],|" setup.py
    '';
  });

  "mock" = python.overrideDerivation super."mock" (old: {
    propagatedNativeBuildInputs =
      builtins.filter
        (x: (builtins.parseDrvName x.name).name != "${python.__old.python.libPrefix}-Sphinx")
        old.propagatedNativeBuildInputs;
  });

  "flower" = python.overrideDerivation super."flower" (old: {
    propagatedNativeBuildInputs =
      builtins.filter
        (x: (builtins.parseDrvName x.name).name != "${python.__old.python.libPrefix}-flower")
        old.propagatedNativeBuildInputs;
  });

  "WSME" = python.overrideDerivation super."WSME" (old: {
    buildInputs = old.buildInputs ++ [ self."pbr" ];
    propagatedNativeBuildInputs = old.propagatedNativeBuildInputs ++
      [ self."six"
        self."WebOb"
        self."simplegeneric"
        self."pytz"
        self."ipaddr"
      ];
  });

  "python-ldap" = python.overrideDerivation super."python-ldap" (old: {
     NIX_CFLAGS_COMPILE = "-I${pkgs.cyrus_sasl.dev}/include/sasl";
  });

}

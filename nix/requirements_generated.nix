# generated using pypi2nix tool (version: 1.8.0)
#
# COMMAND:
#   pypi2nix -V 2.7 -r ../requirements-prod.txt -r ../requirements-test.txt -v -E mysql openldap cyrus_sasl openssl zlib postgresql -N NIX_CFLAGS_COMPILE="-I${pkgs.cyrus_sasl.dev}/include/sasl $NIX_CFLAGS_COMPILE"
#

{ pkgs, python, commonBuildInputs ? [], commonDoCheck ? false }:

self: {

  "Babel" = python.mkDerivation {
    name = "Babel-1.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/33/27/e3978243a03a76398c384c83f7ca879bc6e8f1511233a621fcada135606e/Babel-1.3.tar.gz"; sha256 = "9f02d0357184de1f093c10012b52e7454a1008be6a5c185ab7a3307aceb1d12e"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."pytz"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Internationalization utilities";
    };
  };



  "ConcurrentLogHandler" = python.mkDerivation {
    name = "ConcurrentLogHandler-0.9.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/fd/e5/0dc4f256bcc6484d454006b02f33263b20f762a433741b29d53875e0d763/ConcurrentLogHandler-0.9.1.tar.gz"; sha256 = "8225a590fd4194c413fa26675bde5f6b80ad79e4182d5876ba3e264f77755918"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: OSI Approved :: Apache Software License";
      description = "Concurrent logging handler (drop-in replacement for RotatingFileHandler)";
    };
  };



  "Flask" = python.mkDerivation {
    name = "Flask-0.10.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/db/9c/149ba60c47d107f85fe52564133348458f093dd5e6b57a5b60ab9ac517bb/Flask-0.10.1.tar.gz"; sha256 = "4c83829ff83d408b5e1d4995472265411d2c414112298f2eb4b359d9e4563373"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Jinja2"
      self."Werkzeug"
      self."itsdangerous"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "A microframework based on Werkzeug, Jinja2 and good intentions";
    };
  };



  "Flask-BrowserID" = python.mkDerivation {
    name = "Flask-BrowserID-0.0.4";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/93/ae/6f330c73d54fdcc4190ced869ddaf02f7105fcd31c465e9e7caa79c88a4d/Flask-BrowserID-0.0.4.tar.gz"; sha256 = "79a72ff110c3dcdfbe91977fb79ed7ceb4f290aa2100942603077d39c5801dbe"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Flask"
      self."Flask-Login"
      self."requests"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Flask support for BrowserID authentication";
    };
  };



  "Flask-Login" = python.mkDerivation {
    name = "Flask-Login-0.3.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/bb/15/6a5d3d5714034b3875d38f6f12c0604c8c3deeb03ffb6e42540af1d1a8e9/Flask-Login-0.3.0.tar.gz"; sha256 = "f2f144cdadfd03ca84cb65c3a5162a21b57262bebdd83e6db20077d460c45d52"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Flask"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "User session management for Flask";
    };
  };



  "IPy" = python.mkDerivation {
    name = "IPy-0.75";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/1e/88/b5a29c13e55c71d2a133d0dd17f65565b9bc500fa61d8a49f47098c26bec/IPy-0.75.tar.gz"; sha256 = "0fa14af4792cc0b6f61cb5a1cd8fbdf7ddbaa6864ef82681021b750e9e6b2b61"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Class and tools for handling of IPv4 and IPv6 addresses and networks";
    };
  };



  "Jinja2" = python.mkDerivation {
    name = "Jinja2-2.8";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/f2/2f/0b98b06a345a761bec91a079ccae392d282690c2d8272e708f4d10829e22/Jinja2-2.8.tar.gz"; sha256 = "bc1ff2ff88dbfacefde4ddde471d1417d3b304e8df103a7a9437d47269201bf4"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Babel"
      self."MarkupSafe"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "A small but fast and easy to use stand-alone template engine written in pure python.";
    };
  };



  "Mako" = python.mkDerivation {
    name = "Mako-1.0.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/8e/a4/aa56533ecaa5f22ca92428f74e074d0c9337282933c722391902c8f9e0f8/Mako-1.0.1.tar.gz"; sha256 = "45f0869febea59dab7efd256fb451c377cbb7947bef386ff0bb44627c31a8d1c"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."MarkupSafe"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "A super-fast templating language that borrows the  best ideas from the existing templating languages.";
    };
  };



  "MarkupSafe" = python.mkDerivation {
    name = "MarkupSafe-0.18";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/98/cf/197c3b0f73224b84eb419a967f87565bcc0b0c1147012397e6bd2d45e253/MarkupSafe-0.18.tar.gz"; sha256 = "b7d5d688bdd345bfa897777d297756688cf02e1b3742c56885e2e5c2b996ff82"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Implements a XML/HTML/XHTML Markup safe string for Python";
    };
  };



  "MySQL-python" = python.mkDerivation {
    name = "MySQL-python-1.2.5";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/a5/e9/51b544da85a36a68debe7a7091f068d802fc515a3a202652828c73453cad/MySQL-python-1.2.5.zip"; sha256 = "811040b647e5d5686f84db415efd697e6250008b112b6909ba77ac059e140c74"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.gpl1;
      description = "Python interface to MySQL";
    };
  };



  "Pygments" = python.mkDerivation {
    name = "Pygments-2.0.2";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/f4/c6/bdbc5a8a112256b2b6136af304dbae93d8b1ef8738ff2d12a51018800e46/Pygments-2.0.2.tar.gz"; sha256 = "7320919084e6dac8f4540638a46447a3bd730fca172afc17d2c03eed22cf4f51"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Pygments is a syntax highlighting package written in Python.";
    };
  };



  "SQLAlchemy" = python.mkDerivation {
    name = "SQLAlchemy-1.0.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/44/39/e314711fa5585a817f3cfaa4de05f22c510e6c3b8159814bda6159586918/SQLAlchemy-1.0.3.tar.gz"; sha256 = "3c25d5e038b4f49d8492c18608ead181b09b7a38d301faccecc12b80e2c2f6c1"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Database Abstraction Library";
    };
  };



  "Sphinx" = python.mkDerivation {
    name = "Sphinx-1.3.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/d9/56/7c0b0e60c69ae5e995c9a6c9bbe66ad381a00a44cd090f21dcd179c47460/Sphinx-1.3.1.tar.gz"; sha256 = "1a6e5130c2b42d2de301693c299f78cc4bd3501e78b610c08e45efc70e2b5114"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Babel"
      self."Jinja2"
      self."Pygments"
      self."SQLAlchemy"
      self."alabaster"
      self."docutils"
      self."mock"
      self."nose"
      self."simplejson"
      self."six"
      self."snowballstemmer"
      self."sphinx-rtd-theme"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Python documentation generator";
    };
  };



  "WSME" = python.mkDerivation {
    name = "WSME-0.6.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/a1/a8/b28da3b40283921af9b8ba1d4ccac07cb45b7a11ec75ee39e8fb00a24702/WSME-0.6.1.tar.gz"; sha256 = "ef9742ddb06b97c025de46912cdebf3f74c3e0ffcd58e767b94cad1784a51723"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Simplify the writing of REST APIs, and extend them with additional protocols.";
    };
  };



  "WebOb" = python.mkDerivation {
    name = "WebOb-1.2.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/6c/b0/9012df5d40a15fdfa9c233580b8b555b943b8797ce588aa6ce90390c6f7b/WebOb-1.2.3.tar.gz"; sha256 = "325c249f3ac35e72b75ba13b2c60317def0c986a24a413ebf700509ea4c73a13"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Sphinx"
      self."coverage"
      self."nose"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "WSGI request and response object";
    };
  };



  "Werkzeug" = python.mkDerivation {
    name = "Werkzeug-0.9.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/8d/3b/79b28e9436f321763bfa47d7784bedb8f0b6b7da92b2979ee5a2a60f3bc6/Werkzeug-0.9.3.tar.gz"; sha256 = "ead3a6baf49f8fc594d88dca910d60c61e26e3bb89467ff034c47f6b57b3089a"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "The Swiss Army knife of Python web development";
    };
  };



  "alabaster" = python.mkDerivation {
    name = "alabaster-0.7.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/df/64/8266bf8fcbb0f5ad2b3a23518f7d009ea2d98ad477a49288a5a8dd9dad18/alabaster-0.7.3.tar.gz"; sha256 = "0703c1ea5a6af0bb6d0cec24708301334949d56ebc7f95c64028d9c66f9d8d5d"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "A configurable sidebar-enabled Sphinx theme";
    };
  };



  "alembic" = python.mkDerivation {
    name = "alembic-0.7.7";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/41/80/58c25d9a4e8321376a0231ef4cedd22f93c899c28c93bc236ca991a0f291/alembic-0.7.7.tar.gz"; sha256 = "abdeded3f92766d30d2e00015f73573e23f96bcb38037fac199a75445e3e66c6"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Mako"
      self."SQLAlchemy"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "A database migration tool for SQLAlchemy.";
    };
  };



  "amqp" = python.mkDerivation {
    name = "amqp-1.4.9";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/cc/a4/f265c6f9a7eb1dd45d36d9ab775520e07ff575b11ad21156f9866da047b2/amqp-1.4.9.tar.gz"; sha256 = "2dea4d16d073c902c3b89d9b96620fb6729ac0f7a923bbc777cb4ad827c0c61a"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.lgpl2;
      description = "Low-level AMQP client for Python (fork of amqplib)";
    };
  };



  "anyjson" = python.mkDerivation {
    name = "anyjson-0.3.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/c3/4d/d4089e1a3dd25b46bebdb55a992b0797cff657b4477bc32ce28038fdecbc/anyjson-0.3.3.tar.gz"; sha256 = "37812d863c9ad3e35c0734c42e0bf0320ce8c3bed82cd20ad54cb34d158157ba"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Wraps the best available JSON implementation available in a common interface";
    };
  };



  "appdirs" = python.mkDerivation {
    name = "appdirs-1.4.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/bd/66/0a7f48a0f3fb1d3a4072bceb5bbd78b1a6de4d801fb7135578e7c7b1f563/appdirs-1.4.0.tar.gz"; sha256 = "8fc245efb4387a4e3e0ac8ebcc704582df7d72ff6a42a53f5600bbb18fdaadc5"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "A small Python module for determining appropriate \" +         \"platform-specific dirs, e.g. a \"user data dir\".";
    };
  };



  "backports.ssl-match-hostname" = python.mkDerivation {
    name = "backports.ssl-match-hostname-3.4.0.2";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/3a/15/f9e48bfd2b971ade10ad0c03babab057791c260b05322cbd3f47e27be108/backports.ssl_match_hostname-3.4.0.2.tar.gz"; sha256 = "07410e7fb09aab7bdaf5e618de66c3dac84e2e3d628352814dc4c37de321d6ae"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.psfl;
      description = "The ssl.match_hostname() function from Python 3.4";
    };
  };



  "billiard" = python.mkDerivation {
    name = "billiard-3.3.0.23";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/64/a6/d7b6fb7bd0a4680a41f1d4b27061c7b768c673070ba8ac116f865de4e7ca/billiard-3.3.0.23.tar.gz"; sha256 = "692a2a5a55ee39a42bcb7557930e2541da85df9ea81c6e24827f63b80cd39d0b"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Python multiprocessing fork with improvements and bugfixes";
    };
  };



  "blinker" = python.mkDerivation {
    name = "blinker-1.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/c9/66/c15dbe2e2cac59bf1d4670d52aa88b8746fd5a47f8353aa4ffac0dde00c4/blinker-1.3.tar.gz"; sha256 = "6811010809262261e41ab7b92f3f6d23f35cf816fbec2bc05077992eebec6e2f"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Fast, simple object-to-object and broadcast signaling";
    };
  };



  "boto" = python.mkDerivation {
    name = "boto-2.38.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/e5/6e/13022066f104f6097a7414763c5658d68081ad0bc2b0630a83cd498a6f22/boto-2.38.0.tar.gz"; sha256 = "d9083f91e21df850c813b38358dc83df16d7f253180a1344ecfedce24213ecf2"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Amazon Web Services Library";
    };
  };



  "bzrest" = python.mkDerivation {
    name = "bzrest-1.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/fd/c7/7141432817450512f724ca41f0166242d5a5bbcc27ef4c549961c56a4fb9/bzrest-1.1.tar.gz"; sha256 = "1818ee5be66ee8f9a97fe77c3cb2c01900dc03cf904368dc8b0a90084f22c793"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."requests"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "";
      description = "A client for Bugzilla's native REST API.";
    };
  };



  "celery" = python.mkDerivation {
    name = "celery-3.1.25";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/62/8d/5d9e8cddd987b409b9a332a5eb73c2d01ea42ab83865e8e8a011326c16dc/celery-3.1.25.tar.gz"; sha256 = "6ced63033bc663e60c992564954dbb5c84c43899f7f1a04b739957350f6b55f3"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."SQLAlchemy"
      self."billiard"
      self."boto"
      self."kombu"
      self."pytz"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Distributed Task Queue";
    };
  };



  "certifi" = python.mkDerivation {
    name = "certifi-2015.9.6.2";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/63/71/422814652028afbff99347da9f3d102f53113a1d2389e255a2dde15c5d8d/certifi-2015.9.6.2.tar.gz"; sha256 = "dc3a2b2d9d1033dbf27586366ae61b9d7c44d8c3a6f29694ffcbb0618ea7aea6"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "ISC";
      description = "Python package for providing Mozilla's CA Bundle.";
    };
  };



  "codecov" = python.mkDerivation {
    name = "codecov-1.6.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/9b/e2/88f71445b28faf3e8ca89f689026e4ae7ff1a359b4f1efb28f66934e8e89/codecov-1.6.3.tar.gz"; sha256 = "76c5209499ef7b9c994f058b4c32f63b5f125a4380be4fc875df5f703a1c5c18"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."coverage"
      self."requests"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: OSI Approved :: Apache Software License";
      description = "Hosted coverage reports for Github, Bitbucket and Gitlab";
    };
  };



  "coverage" = python.mkDerivation {
    name = "coverage-4.0.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/76/b4/3777a6bae434240b1fcbbda6cb30085bd897b3519acfffea498ee9f41038/coverage-4.0.3.tar.gz"; sha256 = "85b1275b6d7a61ccc8024a4e9a4c9e896394776edce1a5d075ec116f91925462"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.asl20;
      description = "Code coverage measurement for Python";
    };
  };



  "croniter" = python.mkDerivation {
    name = "croniter-0.3.5";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/40/d4/850e2e4880370135bfc31c5b68e7d4ede7fbf68c2a8ed1a355c3ce759ad9/croniter-0.3.5.zip"; sha256 = "ecd5cda855668ae11ed5ea341e9c2145bbab88bfd0763666951cfe15bab23f50"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."python-dateutil"
      self."pytz"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "croniter provides iteration for datetime object with cron like format";
    };
  };



  "docutils" = python.mkDerivation {
    name = "docutils-0.11";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/7f/49/3ff69dcb212900199462a291886e2f30f57ab3a69dc88e31eda6404a17c0/docutils-0.11.tar.gz"; sha256 = "9af4166adf364447289c5c697bb83c52f1d6f57e77849abcccd6a4a18a5e7ec9"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.publicDomain;
      description = "Docutils -- Python Documentation Utilities";
    };
  };



  "elasticache-auto-discovery" = python.mkDerivation {
    name = "elasticache-auto-discovery-0.0.5.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/ef/10/24862e04f6ff6544472918bfe0c5d5a2f586772a5b859343a89250973f68/elasticache-auto-discovery-0.0.5.1.tar.gz"; sha256 = "0221e37a164d067f07a8eb605af54621345610f62c3a8d69bf01b8f7d3058496"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "Copyright 2013 Studio Ousia";
      description = "AWS ElastiCache Auto Discovery Client for Python";
    };
  };



  "flower" = python.mkDerivation {
    name = "flower-0.8.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/8f/a4/0be647c97c465d91864b704008304991412f5664e94646b8066ba83e7525/flower-0.8.3.tar.gz"; sha256 = "ca6ae26361e58491d51eaded0ee7134087f4ea3cdd00ac158d903dc02dd0e85b"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Babel"
      self."celery"
      self."futures"
      self."pytz"
      self."tornado"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Celery Flower";
    };
  };



  "funcparserlib" = python.mkDerivation {
    name = "funcparserlib-0.3.6";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/cb/f7/b4a59c3ccf67c0082546eaeb454da1a6610e924d2e7a2a21f337ecae7b40/funcparserlib-0.3.6.tar.gz"; sha256 = "b7992eac1a3eb97b3d91faa342bfda0729e990bd8a43774c1592c091e563c91d"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Recursive descent parsing library based on functional combinators";
    };
  };



  "funcsigs" = python.mkDerivation {
    name = "funcsigs-0.4";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/87/5e/44bc85c41e5b33b6bf1fcb2f6ccbc4ee74337af079438d2a28c5c45137e1/funcsigs-0.4.tar.gz"; sha256 = "d83ce6df0b0ea6618700fe1db353526391a8a3ada1b7aba52fed7a61da772033"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: OSI Approved :: Apache Software License";
      description = "Python function signatures from PEP362 for Python 2.6, 2.7 and 3.2+";
    };
  };



  "furl" = python.mkDerivation {
    name = "furl-0.4.5";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/ce/78/1650dfa42890d8d43210de10c2a782279e56ef3b95c7d39807cccb179c0e/furl-0.4.5.tar.gz"; sha256 = "dcf4bfe90a7f2859db9bc2dcba0f0e4c626d353eaa10b3c69c3b4e6736f4f0d8"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."orderedmultidict"
      self."six"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: Freely Distributable";
      description = "URL manipulation made simple.";
    };
  };



  "futures" = python.mkDerivation {
    name = "futures-3.0.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/4c/dc/f9473006d4c9c52d4a4e977173fbcbfb1a8ef3a57e32e885edf994fd4a45/futures-3.0.3.tar.gz"; sha256 = "2fe2342bb4fe8b8e217f0d21b5921cbe5408bf966d9f92025e707e881b198bed"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Backport of the concurrent.futures package from Python 3.2";
    };
  };



  "httpretty" = python.mkDerivation {
    name = "httpretty-0.8.10";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/e2/25/603bc6b096385b02184cc94f9088fcc06abd9398d0975bbbce97a8989ab5/httpretty-0.8.10.tar.gz"; sha256 = "474a72722d66841f0e59cee285d837e1c6263be5be7bf2f8e824fc849a99adda"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "HTTP client mock for Python";
    };
  };



  "ipaddr" = python.mkDerivation {
    name = "ipaddr-2.1.11";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/08/80/7539938aca4901864b7767a23eb6861fac18ef5219b60257fc938dae3568/ipaddr-2.1.11.tar.gz"; sha256 = "1b555b8a8800134fdafe32b7d0cb52f5bdbfdd093707c3dd484c5ea59f1d98b7"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.asl20;
      description = "UNKNOWN";
    };
  };



  "isort" = python.mkDerivation {
    name = "isort-4.2.2";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/f5/30/de1919d208abed2a783580a01ebc1f9970c312127f5f4da1bcae37218996/isort-4.2.2.tar.gz"; sha256 = "f2e68083a82111ff3015c0c4fe98eb6dba858c4d39445083acc9c811e9b41d77"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "A Python utility / library to sort Python imports.";
    };
  };



  "itsdangerous" = python.mkDerivation {
    name = "itsdangerous-0.24";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/dc/b4/a60bcdba945c00f6d608d8975131ab3f25b22f2bcfe1dab221165194b2d4/itsdangerous-0.24.tar.gz"; sha256 = "cbb3fcf8d3e33df861709ecaf89d9e6629cff0a217bc2848f1b41cd30d360519"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Various helpers to pass trusted data to untrusted environments and back.";
    };
  };



  "kombu" = python.mkDerivation {
    name = "kombu-3.0.37";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/38/69/8d603be2df979f1b9ffefae1e51cde664c52a258aff6e8c3253032c8f2c8/kombu-3.0.37.tar.gz"; sha256 = "e064a00c66b4d1058cd2b0523fb8d98c82c18450244177b6c0f7913016642650"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."amqp"
      self."anyjson"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Messaging library for Python";
    };
  };



  "mock" = python.mkDerivation {
    name = "mock-1.3.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/98/05/dd44a19f1dd9f274baae2018b843d31fbeff99399114b16ac965b4f99269/mock-1.3.0.tar.gz"; sha256 = "1e247dbecc6ce057299eb7ee019ad68314bb93152e81d9a6110d35f4d5eca0f6"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Jinja2"
      self."Pygments"
      self."Sphinx"
      self."funcsigs"
      self."pbr"
      self."six"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Rolling backport of unittest.mock for all Pythons";
    };
  };



  "mockcache" = python.mkDerivation {
    name = "mockcache-1.0.3";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/8f/8d/45e8a33605593796552cfc67b186539da9318f7f4fd40834d427a3537e6d/mockcache-1.0.3.tar.gz"; sha256 = "c637c35eaf0322f6c5fa6875a3fc5dc756514585a8b77abe4482d69bf364196d"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "The Python dictionary-based mock memcached client library.";
    };
  };



  "mockldap" = python.mkDerivation {
    name = "mockldap-0.2.6";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/fc/39/657e80ea287cb964ecd206ec749ec91210c8fb4640c4c9873e1df2a058fa/mockldap-0.2.6.tar.gz"; sha256 = "cbcf0480f3f55c427b1c3798f1509b367aa65bece244b87c2d6f7c3ec43f8c5a"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."funcparserlib"
      self."mock"
      self."python-ldap"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "A simple mock implementation of python-ldap.";
    };
  };



  "mohawk" = python.mkDerivation {
    name = "mohawk-0.3.2.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/4e/1a/33a5a96fe29d3ae38be45d7cb02d9340bd9cb5fdf924e91b39cf2c87b8ed/mohawk-0.3.2.1.tar.gz"; sha256 = "46e98d8349f927b40227f1a9f0021509fedcf0398e1feb22dac954010f625f1d"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."six"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mpl20;
      description = "Library for Hawk HTTP authorization";
    };
  };



  "moto" = python.mkDerivation {
    name = "moto-0.4.23";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/d3/9d/de33e441f14d739805c038b7318c2a94f0f3f57ef71fd0bd9e9f699ffdce/moto-0.4.23.tar.gz"; sha256 = "1ba22f939c73bc1438d7430e7c85bf304bbaffafecd0ef91ada73b5a05734156"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Flask"
      self."Jinja2"
      self."Werkzeug"
      self."boto"
      self."httpretty"
      self."requests"
      self."six"
      self."xmltodict"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: OSI Approved :: Apache Software License";
      description = "A library that allows your python tests to easily mock out the boto library";
    };
  };



  "mozdef-client" = python.mkDerivation {
    name = "mozdef-client-1.0.4";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/72/74/ef4fe8911c41763c6dc6c11e9de3a2aa1c7774ebfb2750b277f2f4808765/mozdef_client-1.0.4.tar.gz"; sha256 = "3aff9af526a5595cef242f104b265e2718a683277ad4a3cd6bbe2ae42b30bf5c"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mpl20;
      description = "A client library to send messages/events using MozDef";
    };
  };



  "newrelic" = python.mkDerivation {
    name = "newrelic-2.46.0.37";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/7b/39/eb1893476cfc0565abc3716fe495e4b0ca78cdae0efaa2fc0fdf8313d2dc/newrelic-2.46.0.37.tar.gz"; sha256 = "1b544e6611b8bd4758191c08c9d42894e71ee1150505a73afac45c4e2fa308ae"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "(C) Copyright 2010-2015 New Relic Inc. All rights reserved.";
      description = "Python agent for New Relic";
    };
  };



  "nose" = python.mkDerivation {
    name = "nose-1.3.7";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/58/a5/0dc93c3ec33f4e281849523a5a913fa1eea9a3068acfa754d44d88107a44/nose-1.3.7.tar.gz"; sha256 = "f1bffef9cbc82628f6e7d7b40d7e255aefaa1adb6a1b1d26c69a8b79e6208a98"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.lgpl2;
      description = "nose extends unittest to make testing easier";
    };
  };



  "orderedmultidict" = python.mkDerivation {
    name = "orderedmultidict-0.7.5";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/8b/2d/fabe016befab759c39374d2418adab3e4808cbd510d2d86b9aa13aebf56e/orderedmultidict-0.7.5.tar.gz"; sha256 = "8a76df859dfe92cf2c3a113f7a2103b360b1168cd1e6d7fcdfcf58b7bfe294e8"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."six"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: Freely Distributable";
      description = "Ordered Multivalue Dictionary - omdict.";
    };
  };



  "packaging" = python.mkDerivation {
    name = "packaging-16.8";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/c6/70/bb32913de251017e266c5114d0a645f262fb10ebc9bf6de894966d124e35/packaging-16.8.tar.gz"; sha256 = "5d50835fdf0a7edf0b55e311b7c887786504efea1177abd7e69329a8e5ea619e"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."pyparsing"
      self."six"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Core utilities for Python packages";
    };
  };



  "pbr" = python.mkDerivation {
    name = "pbr-1.8.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/94/27/2d371af70766f2d1dc0cf1c42ea3319a057d0ebc0d71ab05c824be48e9df/pbr-1.8.1.tar.gz"; sha256 = "e2127626a91e6c885db89668976db31020f0af2da728924b56480fc7ccf09649"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: OSI Approved :: Apache Software License";
      description = "Python Build Reasonableness";
    };
  };



  "pep8" = python.mkDerivation {
    name = "pep8-1.7.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/3e/b5/1f717b85fbf5d43d81e3c603a7a2f64c9f1dabc69a1e7745bd394cc06404/pep8-1.7.0.tar.gz"; sha256 = "a113d5f5ad7a7abacef9df5ec3f2af23a20a28005921577b15dd584d099d5900"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Python style guide checker";
    };
  };



  "psycopg2" = python.mkDerivation {
    name = "psycopg2-2.6.2";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/7b/a8/dc2d50a6f37c157459cd18bab381c8e6134b9381b50fbe969997b2ae7dbc/psycopg2-2.6.2.tar.gz"; sha256 = "70490e12ed9c5c818ecd85d185d363335cc8a8cbf7212e3c185431c79ff8c05c"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.lgpl2;
      description = "psycopg2 - Python-PostgreSQL Database Adapter";
    };
  };



  "pyflakes" = python.mkDerivation {
    name = "pyflakes-1.1.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/3b/c0/babde99e111ebbbe8864c452db9132069a51c63f60e1cdfa49f00a229fca/pyflakes-1.1.0.tar.gz"; sha256 = "e5f959931987e2be178781554b485d52342ec9f1b43f891d2dad07a691c7a89a"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "passive checker of Python programs";
    };
  };



  "pyparsing" = python.mkDerivation {
    name = "pyparsing-2.1.10";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/38/bb/bf325351dd8ab6eb3c3b7c07c3978f38b2103e2ab48d59726916907cd6fb/pyparsing-2.1.10.tar.gz"; sha256 = "811c3e7b0031021137fc83e051795025fcb98674d07eb8fe922ba4de53d39188"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Python parsing module";
    };
  };



  "python-dateutil" = python.mkDerivation {
    name = "python-dateutil-1.5";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/b4/7c/df59c89a753eb33c7c44e1dd42de0e9bc2ccdd5a4d576e0bfad97cc280cb/python-dateutil-1.5.tar.gz"; sha256 = "6f197348b46fb8cdf9f3fcfc2a7d5a97da95db3e2e8667cf657216274fe1b009"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "PSF License";
      description = "Extensions to the standard python 2.3+ datetime module";
    };
  };



  "python-ldap" = python.mkDerivation {
    name = "python-ldap-2.4.15";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/d5/01/2bedaa76dfd1b7df4a236b4f49ec43a9084fcd977492e99ef5e7d9498e37/python-ldap-2.4.15.tar.gz"; sha256 = "30bcac33ded943557fbafb1b6d9c345deab34d89d63dbcee9e6b59207db11670"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.psfl;
      description = "Python modules for implementing LDAP clients";
    };
  };



  "python-memcached" = python.mkDerivation {
    name = "python-memcached-1.53";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/7e/fa/8de41e2fba39ef6bf55ea87d02e28da874963958978434cd21e4b2fac69c/python-memcached-1.53.tar.gz"; sha256 = "bcf71371d997bb46a3168a7b63aae66b56cccacc025af9310db4315681ef8868"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.psfl;
      description = "Pure python memcached client";
    };
  };



  "pytz" = python.mkDerivation {
    name = "pytz-2015.6";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/0c/cd/907e6f5195c4e56625bc3cf4984804f01872201bcadb0aec080dbb4c3bcf/pytz-2015.6.tar.bz2"; sha256 = "01eed1b2226dc386d8e467a2ff8c4f1aa08c65d5d7e7c43aa094bd45d5bd68ba"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "World timezone definitions, modern and historical";
    };
  };



  "redo" = python.mkDerivation {
    name = "redo-1.5";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/78/e0/5d0e71638caee3cfff369520bbdf7b1145c498aa5d36855fed5881560827/redo-1.5.tar.gz"; sha256 = "0d887e27835361c0e793f0d0f21f3faa12ad2bb3757239e55b404fe3feebda81"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "";
      description = "Utilities to retry Python callables.";
    };
  };



  "requests" = python.mkDerivation {
    name = "requests-2.10.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/49/6f/183063f01aae1e025cf0130772b55848750a2f3a89bfa11b385b35d7329d/requests-2.10.0.tar.gz"; sha256 = "63f1815788157130cee16a933b2ee184038e975f0017306d723ac326b5525b54"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.asl20;
      description = "Python HTTP for Humans.";
    };
  };



  "requests-futures" = python.mkDerivation {
    name = "requests-futures-0.9.5";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/25/43/bf8e46a309b5bb08f9d7813473ddb5f27a40d194ddf120fa4f193aa764e3/requests-futures-0.9.5.tar.gz"; sha256 = "33aa8a3b7892850701707d7e094b1e1ce7c4f7a36ff2a1dcc2da4e01a1a00f7e"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."futures"
      self."requests"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: OSI Approved :: Apache Software License";
      description = "Asynchronous Python HTTP for Humans.";
    };
  };



  "simplegeneric" = python.mkDerivation {
    name = "simplegeneric-0.8";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/9f/32/8282e43fe8e017479880d36a5b7ce5146fd1614cec9590cb67be0a70ad51/simplegeneric-0.8.zip"; sha256 = "8c0c4963da2695ba7c0f953f2cdac31d2c41d619fe9419e9d75432f8a231f966"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.zpt21;
      description = "Simple generic functions (similar to Python's own len(), pickle.dump(), etc.)";
    };
  };



  "simplejson" = python.mkDerivation {
    name = "simplejson-3.3.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/fc/7c/f9cec79ab9c8fc190821c69fdbcb15ecba438ff35f13b3f8d9675efcfd0d/simplejson-3.3.0.tar.gz"; sha256 = "7a8a6bd82e111976aeb06138316ab10847adf612925072eaff8512228bcf9a1f"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Simple, fast, extensible JSON encoder/decoder for Python";
    };
  };



  "six" = python.mkDerivation {
    name = "six-1.10.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"; sha256 = "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Python 2 and 3 compatibility utilities";
    };
  };



  "slugid" = python.mkDerivation {
    name = "slugid-1.0.7";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/dd/96/b05c6d357f8d6932bea2b360537360517d1154b82cc71b8eccb70b28bdde/slugid-1.0.7.tar.gz"; sha256 = "6dab3c7eef0bb423fb54cb7752e0f466ddd0ee495b78b763be60e8a27f69e779"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mpl20;
      description = "Base64 encoded uuid v4 slugs";
    };
  };



  "snowballstemmer" = python.mkDerivation {
    name = "snowballstemmer-1.2.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/bb/48/50528f822b5335a2f8155f4773bd49241129a0832469c2195710831755da/snowballstemmer-1.2.0.tar.gz"; sha256 = "6d54f350e7a0e48903a4e3b6b2cabd1b43e23765fbc975065402893692954191"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "This package provides 16 stemmer algorithms (15 + Poerter English stemmer) generated from Snowball algorithms.";
    };
  };



  "sphinx-rtd-theme" = python.mkDerivation {
    name = "sphinx-rtd-theme-0.1.7";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/10/19/6d0c0df68308c947c24f8e2496dd11252cb970c1964ee76d93b1e66fc461/sphinx_rtd_theme-0.1.7.tar.gz"; sha256 = "9a490c861f6cf96a0050c29a92d5d1e01eda02ae6f50760ad5c96a327cdf14e8"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."Sphinx"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "ReadTheDocs.org theme for Sphinx, 2013 version.";
    };
  };



  "structlog" = python.mkDerivation {
    name = "structlog-15.2.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/47/e0/73d623659b817f12070e6ec0ecf5aeee1f41b9b7e68d32fe33c124c5a859/structlog-15.2.0.tar.gz"; sha256 = "fbd9cac9537dd2370a2d8580113e5a02b8b136b7c2fb9d25c476ef4d220b16b5"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Structured logging for Python.";
    };
  };



  "taskcluster" = python.mkDerivation {
    name = "taskcluster-0.3.4";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/3e/50/bb7659d5cf396f5c78013bb35ac92931c852b0ae3fa738bbd9224b6192ef/taskcluster-0.3.4.tar.gz"; sha256 = "d4fe5e2a44fe27e195b92830ece0a6eb9eb7ad9dc556a0cb16f6f2a6429f1b65"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."mohawk"
      self."requests"
      self."six"
      self."slugid"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "";
      description = "Python client for Taskcluster";
    };
  };



  "tornado" = python.mkDerivation {
    name = "tornado-4.2.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/ec/af/c40ad78dacdef134f3e08b3103c3c859b14ceb9639d344811339227b6444/tornado-4.2.1.tar.gz"; sha256 = "a16fcdc4f76b184cb82f4f9eaeeacef6113b524b26a2cb331222e4a7fa6f2969"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
      self."backports.ssl-match-hostname"
      self."certifi"
    ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = "License :: OSI Approved :: Apache Software License";
      description = "Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed.";
    };
  };



  "wrapt" = python.mkDerivation {
    name = "wrapt-1.8.0";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/26/e5/d3c2717aab947f146cc2ea39022c30be4dd502c30e22b020933f5ddbc930/wrapt-1.8.0.tar.gz"; sha256 = "f1502158bf681a534d6dc314c4be008b5968152a303e1cf9be75b82838b0c7ce"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.bsdOriginal;
      description = "Module for decorators, wrappers and monkey patching.";
    };
  };



  "xmltodict" = python.mkDerivation {
    name = "xmltodict-0.10.1";
    src = pkgs.fetchurl { url = "https://pypi.python.org/packages/6c/cb/0628b276d670eb9553c2d21f45c395a87f1748203e5a39795bf53b299e78/xmltodict-0.10.1.tar.gz"; sha256 = "b2cab0184bbb8c3627fc54b03ed79ea2f4d5579fa041e3456ff8d3b3c09b0d5e"; };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = with pkgs.stdenv.lib; {
      homepage = "";
      license = licenses.mit;
      description = "Makes working with XML feel like you are working with JSON";
    };
  };

}
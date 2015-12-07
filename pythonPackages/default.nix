{ self, pythonPackages }:

with pythonPackages;

with self.stdenv.lib;

pythonPackages // rec {
  astroid = buildPythonPackage rec {
    name = "astroid-1.3.8";

    src = self.fetchurl {
      url = "https://pypi.python.org/packages/source/a/astroid/${name}.tar.gz";
      sha256 = "0hllf58wyz7mi7582psvswxgrybxidsv2vk3xgyarisxcxfc6w9r";
    };

    propagatedBuildInputs = with self; [ logilab_common six ];

    meta = {
      homepage = http://www.astroid.org;
      description = "Python AST parser";
      maintainers = with maintainers; [ taktoa ];
      platforms = platforms.all;
    };
  };

  mypy-lang = buildPythonPackage rec {
    name = "mypy-lang-0.2.0";

    src = self.fetchurl {
      url = "https://pypi.python.org/packages/source/m/mypy-lang/${name}.tar.gz";
      sha256 = "0qy95x79plddlvycm0l9dr1m23hmacb8sxlv6z8l4p9c2wjagyf7";
    };

    meta = {
      homepage = http://mypy-lang.org;
      description = "Experimental static types for Python";
      maintainers = with maintainers; [ taktoa ];
      platforms = platforms.all;
    };
  };

  piazza-api = buildPythonPackage rec {
    name = "piazza-api-0.5.1";
   
    src = self.fetchurl {
      url = "https://pypi.python.org/packages/source/p/piazza-api/${name}.tar.gz";
      sha256 = "1vr4hnkr0gcvvpaycd8q3vcx029b2f5yv8swhdr8kwspaqb0dvfa";
    };
   
    propagatedBuildInputs = [
      blockdiag
      docutils
      reportlab
      pep8
      nose
      pip
      pillow
    ];

    meta = {
      description = "An unofficial client for Piazza's internal API";
      homepage    = "https://github.com/hfaran/piazza-api";
      license     = licenses.mit;
      platforms   = platforms.linux;
      maintainers = with maintainers; [ taktoa ];
    };
  };

  
  pylint = buildPythonPackage rec {
    name = "pylint-1.4.4";
   
    src = self.fetchurl {
      url = "https://pypi.python.org/packages/source/p/pylint/${name}.tar.gz";
      sha256 = "08phsbbv17zaqaw9vvxwaxy1ixw46vlpz6gk0a79xynldd6syq85";
    };
   
    propagatedBuildInputs = [ astroid ];
    
    postInstall = ''
      mkdir -p $out/share/emacs/site-lisp
      cp "elisp/"*.el $out/share/emacs/site-lisp/
    '';
   
    meta = {
      homepage = http://www.pylint.org;
      description = "A bug and style checker for Python";
      maintainers = with maintainers; [ taktoa ];
      platforms = platforms.all;
    };
  };
}

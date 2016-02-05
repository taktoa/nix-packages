{ self, pythonPackages }:

with builtins;

with pythonPackages;

with self.lib;

let lib      = self.lib;
    notNull  = x: !(isNull x);
    condNull = v: x: y: if isNull v then x else y;
    bindNull = v: f: condNull v null (f v);
    optNull  = value: default: condNull value default value;
    optAttr  = key: value: condNull value {} { "${key}" = value; };
    removeNulls = filterAttrs (n: v: notNull v);
    mkPython = let srcHelper = url: sha256: curlOpts: name:
                                 assert (notNull url && notNull sha256);
                                 self.fetchurl (removeNulls {
                                   inherit url sha256 name curlOpts;
                                 });
               in { packageName         # < A package name.
                  , version             # < A package version.
                  , srcURL       ? null # < A url to download from.
                  , srcSHA       ? null # < A SHA256 checksum for the download.
                  , srcName      ? null # < A name for the downloaded file.
                  , srcCurlOpts  ? null # < A curl options for the download.
                  , src          ? (srcHelper srcURL srcSHA srcCurlOpts srcName)
                                        # ^ A source to use, if url and sha256
                                        # | are not provided.
                  , buildDeps    ? []   # < Build dependencies to add.
                  , propDeps     ? []   # < Propagated dependencies to add.
                  # ! The following attributes are equivalent to those in meta.
                  , homepage     ? null # < A homepage of the project.
                  , description  ? null # < A description.
                  , longDesc     ? null # < A longer description.
                  , maintainers  ? null # < A list of maintainers.
                  , license      ? null # < A license.
                  , platforms    ? null # < A list of supported platforms.
                  , ...
                  } @ args:
                    let 
                    in buildPythonPackage (removeNulls ({
                         name = "${packageName}-${version}";

                         inherit src;

                         buildInputs = buildDeps;
                         propagatedBuildInputs = propDeps;

                         meta = removeNulls { inherit homepage
                                                      description
                                                      license
                                                      maintainers
                                                      platforms;
                                              longDescription = longDesc;
                                            };
                       } // args));
   isNegative    = x: 0 >  x;
   isNonPositive = x: 0 >= x;
   isZero        = x: 0 == x;
   isNonNegative = x: 0 <= x;
   isPositive    = x: 0 <  x;
   isNonEmpty       = x: isPositive (length x);
   isNonEmptyString = x: isPositive (stringLength x);
   strHead = x: (assert isNonEmptyString x; substring 0 1 x);
   pypiRoot = "https://pypi.python.org/packages/source";
   pypiURL = name: version:
               assert isNonEmptyString name;
               assert isNonEmptyString version;
               "${pypiRoot}/${strHead name}/${name}/${name}-${version}.tar.gz";
in pythonPackages // (rec {
     # bobbuilder = self.callPackage ./bobbuilder {};

     # Required for pylint
     astroid = mkPython (rec {
       packageName  = "astroid";
       version      = "1.3.8";
       srcURL       = pypiURL packageName version;
       srcSHA       = "0hllf58wyz7mi7582psvswxgrybxidsv2vk3xgyarisxcxfc6w9r";
       propDeps     = with self; [ logilab_common six ];
       homepage     = http://www.astroid.org;
       description  = "Python AST parser";
       license      = null; # e.g.: lib.licenses.mit
       maintainers  = with lib.maintainers; [ taktoa ];
       platforms    = with lib.platforms; all;
     });
          
     pylint = mkPython (rec {
       packageName  = "pylint";
       version      = "1.4.4";
       srcURL       = pypiURL packageName version;
       srcSHA       = "08phsbbv17zaqaw9vvxwaxy1ixw46vlpz6gk0a79xynldd6syq85";
       propDeps     = with self; [ astroid ];
       homepage     = https://github.com/hfaran/pylint;
       description  = "A bug and style checker for Python";
       license      = null; # e.g.: lib.licenses.mit
       maintainers  = with lib.maintainers; [ taktoa ];
       platforms    = with lib.platforms; all;
       
       postInstall = ''
         mkdir -p $out/share/emacs/site-lisp
         cp "elisp/"*.el $out/share/emacs/site-lisp/
       '';
     });

     mypy-lang = mkPython (rec {
       packageName  = "mypy-lang";
       version      = "0.2.0";
       srcURL       = pypiURL packageName version;
       srcSHA       = "0qy95x79plddlvycm0l9dr1m23hmacb8sxlv6z8l4p9c2wjagyf7";
       propDeps     = with self; [];
       homepage     = http://mypy-lang.org;
       description  = "Experimental static types for Python";
       license      = null; # e.g.: lib.licenses.mit
       maintainers  = with lib.maintainers; [ taktoa ];
       platforms    = with lib.platforms; all;
     });

     piazza-api = mkPython (rec {
       packageName  = "piazza-api";
       version      = "0.5.1";
       srcURL       = pypiURL packageName version;
       srcSHA       = "1vr4hnkr0gcvvpaycd8q3vcx029b2f5yv8swhdr8kwspaqb0dvfa";
       propDeps     = with self; [ blockdiag docutils reportlab
                                   pep8 nose pip pillow
                                 ];
       homepage     = https://github.com/hfaran/piazza-api;
       description  = "An unofficial client for Piazza's internal API";
       licenses     = with lib.licenses; [ mit ];
       maintainers  = with lib.maintainers; [ taktoa ];
       platforms    = with lib.platforms; all;
     });

     # Required for csvkit
     dateutil_2_2 = mkPython (rec {
       packageName  = "dateutil";
       version      = "2.2";
       srcURL       = pypiURL "python-dateutil" version;
       srcSHA       = "0s74ad6r789810s10dxgvaf48ni6adac2icrdad34zxygqq6bj7f";
       propDeps     = with self; [ six ];
       homepage     = http://pypi.python.org/pypi/python-dateutil;
       description  = "Powerful extensions to the standard datetime module";
       license      = lib.licenses.bsd2.spdxId;
       maintainers  = with lib.maintainers; [ taktoa ];
       platforms    = with lib.platforms; all;
     });

     # Required for csvkit
     openpyxl_2_2_0-b1 = mkPython (rec {
       packageName  = "openpyxl";
       version      = "2.2.0-b1";
       srcURL       = pypiURL packageName version;
       srcSHA       = "0n10pawp2558jrrmppyhkrv7889k3g4mifqj3fp68qbr20ldk51k";
       buildDeps    = with self; [ pytest ];
       propDeps     = with self; [ jdcal et_xmlfile ];
       description  = "A Python library to read/write Excel 2007 files";
       homepage     = https://openpyxl.readthedocs.org;
       license      = lib.licenses.mit.spdxId;
       maintainers  = with lib.maintainers; [ taktoa ];
       platforms    = with lib.platforms; all;
     });
     
     csvkit = mkPython (rec {
       packageName  = "csvkit";
       version      = "0.9.1";
       srcURL       = pypiURL packageName version;
       srcSHA       = "0fprr4wgp0bq8kl5qims88np11af7ahr5bxkrhfwpdgcgdjbiy4j";
       propDeps     = with self; [ sqlalchemy
                                   xlrd
                                   openpyxl_2_2_0-b1
                                   dateutil_2_2
                                 ];
       homepage     = https://github.com/onyxfish/csvkit;
       description  = "A suite of tools for dealing with CSV";
       license      = null; # e.g.: lib.licenses.mit
       maintainers  = with lib.maintainers; [ taktoa ];
       platforms    = with lib.platforms; all;
     });
     
     scdl = mkPython (rec {
       packageName  = "scdl";
       version      = "1.4.1";
       srcURL       = pypiURL packageName version;
       srcSHA       = "005him6q85q3026xrsdkzawwl3n1fcchi481fj2daivrl9wrrpjb";
       propDeps     = with self; [ ];
       homepage     = https://github.com/flyingrub/scdl;
       description  = "SoundCloud music downloader.";
       license      = with lib.licenses; [ gpl2.spdxId ];
       maintainers  = with lib.maintainers; [ taktoa ];
       platforms    = with lib.platforms; all;
     });
   })

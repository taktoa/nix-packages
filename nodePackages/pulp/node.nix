{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."Base64"."~0.2.0" =
    self.by-version."Base64"."0.2.1";
  by-version."Base64"."0.2.1" = self.buildNodePackage {
    name = "Base64-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/Base64/-/Base64-0.2.1.tgz";
      name = "Base64-0.2.1.tgz";
      sha1 = "ba3a4230708e186705065e66babdd4c35cf60028";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."JSONStream"."^0.10.0" =
    self.by-version."JSONStream"."0.10.0";
  by-version."JSONStream"."0.10.0" = self.buildNodePackage {
    name = "JSONStream-0.10.0";
    version = "0.10.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/JSONStream/-/JSONStream-0.10.0.tgz";
      name = "JSONStream-0.10.0.tgz";
      sha1 = "74349d0d89522b71f30f0a03ff9bd20ca6f12ac0";
    };
    deps = {
      "jsonparse-0.0.5" = self.by-version."jsonparse"."0.0.5";
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."JSONStream"."^1.0.3" =
    self.by-version."JSONStream"."1.0.7";
  by-version."JSONStream"."1.0.7" = self.buildNodePackage {
    name = "JSONStream-1.0.7";
    version = "1.0.7";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/JSONStream/-/JSONStream-1.0.7.tgz";
      name = "JSONStream-1.0.7.tgz";
      sha1 = "700c8e4711fef1ce421f650bead55235bb21d7de";
    };
    deps = {
      "jsonparse-1.2.0" = self.by-version."jsonparse"."1.2.0";
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."abbrev"."1" =
    self.by-version."abbrev"."1.0.7";
  by-version."abbrev"."1.0.7" = self.buildNodePackage {
    name = "abbrev-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/abbrev/-/abbrev-1.0.7.tgz";
      name = "abbrev-1.0.7.tgz";
      sha1 = "5b6035b2ee9d4fb5cf859f08a9be81b208491843";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."abbrev"."^1.0.5" =
    self.by-version."abbrev"."1.0.7";
  by-spec."accepts"."~1.2.12" =
    self.by-version."accepts"."1.2.13";
  by-version."accepts"."1.2.13" = self.buildNodePackage {
    name = "accepts-1.2.13";
    version = "1.2.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/accepts/-/accepts-1.2.13.tgz";
      name = "accepts-1.2.13.tgz";
      sha1 = "e5f1f3928c6d95fd96558c36ec3d9d0de4a6ecea";
    };
    deps = {
      "mime-types-2.1.8" = self.by-version."mime-types"."2.1.8";
      "negotiator-0.5.3" = self.by-version."negotiator"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."accepts"."~1.3.0" =
    self.by-version."accepts"."1.3.0";
  by-version."accepts"."1.3.0" = self.buildNodePackage {
    name = "accepts-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/accepts/-/accepts-1.3.0.tgz";
      name = "accepts-1.3.0.tgz";
      sha1 = "2341420f16d0b2d538a5898416ab0faa28912622";
    };
    deps = {
      "mime-types-2.1.8" = self.by-version."mime-types"."2.1.8";
      "negotiator-0.6.0" = self.by-version."negotiator"."0.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."acorn"."^1.0.3" =
    self.by-version."acorn"."1.2.2";
  by-version."acorn"."1.2.2" = self.buildNodePackage {
    name = "acorn-1.2.2";
    version = "1.2.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/acorn/-/acorn-1.2.2.tgz";
      name = "acorn-1.2.2.tgz";
      sha1 = "c8ce27de0acc76d896d2b1fad3df588d9e82f014";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."align-text"."^0.1.0" =
    self.by-version."align-text"."0.1.3";
  by-version."align-text"."0.1.3" = self.buildNodePackage {
    name = "align-text-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/align-text/-/align-text-0.1.3.tgz";
      name = "align-text-0.1.3.tgz";
      sha1 = "72db3983872eec2313919c9426a993a41afe93f7";
    };
    deps = {
      "kind-of-2.0.1" = self.by-version."kind-of"."2.0.1";
      "longest-1.0.1" = self.by-version."longest"."1.0.1";
      "repeat-string-1.5.2" = self.by-version."repeat-string"."1.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."align-text"."^0.1.1" =
    self.by-version."align-text"."0.1.3";
  by-spec."amdefine".">=0.0.4" =
    self.by-version."amdefine"."1.0.0";
  by-version."amdefine"."1.0.0" = self.buildNodePackage {
    name = "amdefine-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/amdefine/-/amdefine-1.0.0.tgz";
      name = "amdefine-1.0.0.tgz";
      sha1 = "fd17474700cb5cc9c2b709f0be9d23ce3c198c33";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi"."^0.3.0" =
    self.by-version."ansi"."0.3.0";
  by-version."ansi"."0.3.0" = self.buildNodePackage {
    name = "ansi-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi/-/ansi-0.3.0.tgz";
      name = "ansi-0.3.0.tgz";
      sha1 = "74b2f1f187c8553c7f95015bcb76009fb43d38e0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi"."~0.3.0" =
    self.by-version."ansi"."0.3.0";
  by-spec."ansi-escapes"."^1.1.0" =
    self.by-version."ansi-escapes"."1.1.0";
  by-version."ansi-escapes"."1.1.0" = self.buildNodePackage {
    name = "ansi-escapes-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-escapes/-/ansi-escapes-1.1.0.tgz";
      name = "ansi-escapes-1.1.0.tgz";
      sha1 = "21608edd3a4fc5a568c3b8d83ed4acc289d5ec77";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-green"."^0.1.1" =
    self.by-version."ansi-green"."0.1.1";
  by-version."ansi-green"."0.1.1" = self.buildNodePackage {
    name = "ansi-green-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-green/-/ansi-green-0.1.1.tgz";
      name = "ansi-green-0.1.1.tgz";
      sha1 = "8a5d9a979e458d57c40e33580b37390b8e10d0f7";
    };
    deps = {
      "ansi-wrap-0.1.0" = self.by-version."ansi-wrap"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^2.0.0" =
    self.by-version."ansi-regex"."2.0.0";
  by-version."ansi-regex"."2.0.0" = self.buildNodePackage {
    name = "ansi-regex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-2.0.0.tgz";
      name = "ansi-regex-2.0.0.tgz";
      sha1 = "c5061b6e0ef8a81775e50f5d66151bf6bf371107";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-styles"."^2.1.0" =
    self.by-version."ansi-styles"."2.1.0";
  by-version."ansi-styles"."2.1.0" = self.buildNodePackage {
    name = "ansi-styles-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-2.1.0.tgz";
      name = "ansi-styles-2.1.0.tgz";
      sha1 = "990f747146927b559a932bf92959163d60c0d0e2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-wrap"."0.1.0" =
    self.by-version."ansi-wrap"."0.1.0";
  by-version."ansi-wrap"."0.1.0" = self.buildNodePackage {
    name = "ansi-wrap-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-wrap/-/ansi-wrap-0.1.0.tgz";
      name = "ansi-wrap-0.1.0.tgz";
      sha1 = "a82250ddb0015e9a27ca82e82ea603bbfa45efaf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansicolors"."~0.2.1" =
    self.by-version."ansicolors"."0.2.1";
  by-version."ansicolors"."0.2.1" = self.buildNodePackage {
    name = "ansicolors-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansicolors/-/ansicolors-0.2.1.tgz";
      name = "ansicolors-0.2.1.tgz";
      sha1 = "be089599097b74a5c9c4a84a0cdbcdb62bd87aef";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."anymatch"."^1.3.0" =
    self.by-version."anymatch"."1.3.0";
  by-version."anymatch"."1.3.0" = self.buildNodePackage {
    name = "anymatch-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/anymatch/-/anymatch-1.3.0.tgz";
      name = "anymatch-1.3.0.tgz";
      sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
    };
    deps = {
      "arrify-1.0.0" = self.by-version."arrify"."1.0.0";
      "micromatch-2.3.5" = self.by-version."micromatch"."2.3.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."archy"."1.0.0" =
    self.by-version."archy"."1.0.0";
  by-version."archy"."1.0.0" = self.buildNodePackage {
    name = "archy-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/archy/-/archy-1.0.0.tgz";
      name = "archy-1.0.0.tgz";
      sha1 = "f9c8c13757cc1dd7bc379ac77b2c62a5c2868c40";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."are-we-there-yet"."~1.0.0" =
    self.by-version."are-we-there-yet"."1.0.5";
  by-version."are-we-there-yet"."1.0.5" = self.buildNodePackage {
    name = "are-we-there-yet-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.0.5.tgz";
      name = "are-we-there-yet-1.0.5.tgz";
      sha1 = "239f26706da902a2bffb72c33de66fdfd3798ac5";
    };
    deps = {
      "delegates-0.1.0" = self.by-version."delegates"."0.1.0";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."argparse"."^1.0.2" =
    self.by-version."argparse"."1.0.3";
  by-version."argparse"."1.0.3" = self.buildNodePackage {
    name = "argparse-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/argparse/-/argparse-1.0.3.tgz";
      name = "argparse-1.0.3.tgz";
      sha1 = "14389deeb0c28fc4cda9405b9f532a4e3785ce84";
    };
    deps = {
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "sprintf-js-1.0.3" = self.by-version."sprintf-js"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arr-diff"."^2.0.0" =
    self.by-version."arr-diff"."2.0.0";
  by-version."arr-diff"."2.0.0" = self.buildNodePackage {
    name = "arr-diff-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz";
      name = "arr-diff-2.0.0.tgz";
      sha1 = "8f3b827f955a8bd669697e4a4256ac3ceae356cf";
    };
    deps = {
      "arr-flatten-1.0.1" = self.by-version."arr-flatten"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arr-flatten"."^1.0.1" =
    self.by-version."arr-flatten"."1.0.1";
  by-version."arr-flatten"."1.0.1" = self.buildNodePackage {
    name = "arr-flatten-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arr-flatten/-/arr-flatten-1.0.1.tgz";
      name = "arr-flatten-1.0.1.tgz";
      sha1 = "e5ffe54d45e19f32f216e91eb99c8ce892bb604b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-filter"."~0.0.0" =
    self.by-version."array-filter"."0.0.1";
  by-version."array-filter"."0.0.1" = self.buildNodePackage {
    name = "array-filter-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-filter/-/array-filter-0.0.1.tgz";
      name = "array-filter-0.0.1.tgz";
      sha1 = "7da8cf2e26628ed732803581fd21f67cacd2eeec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-flatten"."1.1.1" =
    self.by-version."array-flatten"."1.1.1";
  by-version."array-flatten"."1.1.1" = self.buildNodePackage {
    name = "array-flatten-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz";
      name = "array-flatten-1.1.1.tgz";
      sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-map"."~0.0.0" =
    self.by-version."array-map"."0.0.0";
  by-version."array-map"."0.0.0" = self.buildNodePackage {
    name = "array-map-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-map/-/array-map-0.0.0.tgz";
      name = "array-map-0.0.0.tgz";
      sha1 = "88a2bab73d1cf7bcd5c1b118a003f66f665fa662";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-reduce"."~0.0.0" =
    self.by-version."array-reduce"."0.0.0";
  by-version."array-reduce"."0.0.0" = self.buildNodePackage {
    name = "array-reduce-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-reduce/-/array-reduce-0.0.0.tgz";
      name = "array-reduce-0.0.0.tgz";
      sha1 = "173899d3ffd1c7d9383e4479525dbe278cab5f2b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-unique"."^0.2.1" =
    self.by-version."array-unique"."0.2.1";
  by-version."array-unique"."0.2.1" = self.buildNodePackage {
    name = "array-unique-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz";
      name = "array-unique-0.2.1.tgz";
      sha1 = "a1d97ccafcbc2625cc70fadceb36a50c58b01a53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arrify"."^1.0.0" =
    self.by-version."arrify"."1.0.0";
  by-version."arrify"."1.0.0" = self.buildNodePackage {
    name = "arrify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arrify/-/arrify-1.0.0.tgz";
      name = "arrify-1.0.0.tgz";
      sha1 = "d6c361518250802fa2147ea7fb67597128cb8c81";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asn1"."0.1.11" =
    self.by-version."asn1"."0.1.11";
  by-version."asn1"."0.1.11" = self.buildNodePackage {
    name = "asn1-0.1.11";
    version = "0.1.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asn1/-/asn1-0.1.11.tgz";
      name = "asn1-0.1.11.tgz";
      sha1 = "559be18376d08a4ec4dbe80877d27818639b2df7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asn1".">=0.2.3 <0.3.0" =
    self.by-version."asn1"."0.2.3";
  by-version."asn1"."0.2.3" = self.buildNodePackage {
    name = "asn1-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
      name = "asn1-0.2.3.tgz";
      sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asn1.js"."^4.0.0" =
    self.by-version."asn1.js"."4.2.1";
  by-version."asn1.js"."4.2.1" = self.buildNodePackage {
    name = "asn1.js-4.2.1";
    version = "4.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asn1.js/-/asn1.js-4.2.1.tgz";
      name = "asn1.js-4.2.1.tgz";
      sha1 = "75efd3770c00924ddb2c9530c049d98a4520c77b";
    };
    deps = {
      "bn.js-4.5.0" = self.by-version."bn.js"."4.5.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimalistic-assert-1.0.0" = self.by-version."minimalistic-assert"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert"."^1.1.1" =
    self.by-version."assert"."1.3.0";
  by-version."assert"."1.3.0" = self.buildNodePackage {
    name = "assert-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assert/-/assert-1.3.0.tgz";
      name = "assert-1.3.0.tgz";
      sha1 = "03939a622582a812cc202320a0b9a56c9b815849";
    };
    deps = {
      "util-0.10.3" = self.by-version."util"."0.10.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert"."~1.3.0" =
    self.by-version."assert"."1.3.0";
  by-spec."assert-plus"."0.1.x" =
    self.by-version."assert-plus"."0.1.5";
  by-version."assert-plus"."0.1.5" = self.buildNodePackage {
    name = "assert-plus-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assert-plus/-/assert-plus-0.1.5.tgz";
      name = "assert-plus-0.1.5.tgz";
      sha1 = "ee74009413002d84cec7219c6ac811812e723160";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus".">=0.2.0 <0.3.0" =
    self.by-version."assert-plus"."0.2.0";
  by-version."assert-plus"."0.2.0" = self.buildNodePackage {
    name = "assert-plus-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assert-plus/-/assert-plus-0.2.0.tgz";
      name = "assert-plus-0.2.0.tgz";
      sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus"."^0.1.5" =
    self.by-version."assert-plus"."0.1.5";
  by-spec."astw"."^2.0.0" =
    self.by-version."astw"."2.0.0";
  by-version."astw"."2.0.0" = self.buildNodePackage {
    name = "astw-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/astw/-/astw-2.0.0.tgz";
      name = "astw-2.0.0.tgz";
      sha1 = "08121ac8288d35611c0ceec663f6cd545604897d";
    };
    deps = {
      "acorn-1.2.2" = self.by-version."acorn"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^0.2.8" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.2.10.tgz";
      name = "async-0.2.10.tgz";
      sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^0.9.0" =
    self.by-version."async"."0.9.2";
  by-version."async"."0.9.2" = self.buildNodePackage {
    name = "async-0.9.2";
    version = "0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.9.2.tgz";
      name = "async-0.9.2.tgz";
      sha1 = "aea74d5e61c1f899613bf64bda66d4c78f2fd17d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^1.3.0" =
    self.by-version."async"."1.5.0";
  by-version."async"."1.5.0" = self.buildNodePackage {
    name = "async-1.5.0";
    version = "1.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-1.5.0.tgz";
      name = "async-1.5.0.tgz";
      sha1 = "2796642723573859565633fc6274444bee2f8ce3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^1.4.0" =
    self.by-version."async"."1.5.0";
  by-spec."async"."^1.4.2" =
    self.by-version."async"."1.5.0";
  by-spec."async"."~0.2.6" =
    self.by-version."async"."0.2.10";
  by-spec."async"."~0.9.0" =
    self.by-version."async"."0.9.2";
  by-spec."async-each"."^0.1.6" =
    self.by-version."async-each"."0.1.6";
  by-version."async-each"."0.1.6" = self.buildNodePackage {
    name = "async-each-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async-each/-/async-each-0.1.6.tgz";
      name = "async-each-0.1.6.tgz";
      sha1 = "b67e99edcddf96541e44af56290cd7d5c6e70439";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws-sign2"."~0.5.0" =
    self.by-version."aws-sign2"."0.5.0";
  by-version."aws-sign2"."0.5.0" = self.buildNodePackage {
    name = "aws-sign2-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/aws-sign2/-/aws-sign2-0.5.0.tgz";
      name = "aws-sign2-0.5.0.tgz";
      sha1 = "c57103f7a17fc037f02d7c2e64b602ea223f7d63";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws-sign2"."~0.6.0" =
    self.by-version."aws-sign2"."0.6.0";
  by-version."aws-sign2"."0.6.0" = self.buildNodePackage {
    name = "aws-sign2-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/aws-sign2/-/aws-sign2-0.6.0.tgz";
      name = "aws-sign2-0.6.0.tgz";
      sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."balanced-match"."^0.3.0" =
    self.by-version."balanced-match"."0.3.0";
  by-version."balanced-match"."0.3.0" = self.buildNodePackage {
    name = "balanced-match-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/balanced-match/-/balanced-match-0.3.0.tgz";
      name = "balanced-match-0.3.0.tgz";
      sha1 = "a91cdd1ebef1a86659e70ff4def01625fc2d6756";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."base64-js"."0.0.8" =
    self.by-version."base64-js"."0.0.8";
  by-version."base64-js"."0.0.8" = self.buildNodePackage {
    name = "base64-js-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64-js/-/base64-js-0.0.8.tgz";
      name = "base64-js-0.0.8.tgz";
      sha1 = "1101e9544f4a76b1bc3b26d452ca96d7a35e7978";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."batch"."0.5.2" =
    self.by-version."batch"."0.5.2";
  by-version."batch"."0.5.2" = self.buildNodePackage {
    name = "batch-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/batch/-/batch-0.5.2.tgz";
      name = "batch-0.5.2.tgz";
      sha1 = "546543dbe32118c83c7c7ca33a1f5c5d5ea963e9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."big.js"."^3.0.2" =
    self.by-version."big.js"."3.1.3";
  by-version."big.js"."3.1.3" = self.buildNodePackage {
    name = "big.js-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/big.js/-/big.js-3.1.3.tgz";
      name = "big.js-3.1.3.tgz";
      sha1 = "4cada2193652eb3ca9ec8e55c9015669c9806978";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."binary"."^0.3.0" =
    self.by-version."binary"."0.3.0";
  by-version."binary"."0.3.0" = self.buildNodePackage {
    name = "binary-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binary/-/binary-0.3.0.tgz";
      name = "binary-0.3.0.tgz";
      sha1 = "9f60553bc5ce8c3386f3b553cff47462adecaa79";
    };
    deps = {
      "chainsaw-0.1.0" = self.by-version."chainsaw"."0.1.0";
      "buffers-0.1.1" = self.by-version."buffers"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."binary-extensions"."^1.0.0" =
    self.by-version."binary-extensions"."1.4.0";
  by-version."binary-extensions"."1.4.0" = self.buildNodePackage {
    name = "binary-extensions-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binary-extensions/-/binary-extensions-1.4.0.tgz";
      name = "binary-extensions-1.4.0.tgz";
      sha1 = "d733ccb628986d7b326d88656e0ddbd3aac351b7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."^1.0.0" =
    self.by-version."bl"."1.0.0";
  by-version."bl"."1.0.0" = self.buildNodePackage {
    name = "bl-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-1.0.0.tgz";
      name = "bl-1.0.0.tgz";
      sha1 = "ada9a8a89a6d7ac60862f7dec7db207873e0c3f5";
    };
    deps = {
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."~0.9.0" =
    self.by-version."bl"."0.9.4";
  by-version."bl"."0.9.4" = self.buildNodePackage {
    name = "bl-0.9.4";
    version = "0.9.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-0.9.4.tgz";
      name = "bl-0.9.4.tgz";
      sha1 = "4702ddf72fbe0ecd82787c00c113aea1935ad0e7";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."~1.0.0" =
    self.by-version."bl"."1.0.0";
  by-spec."block-stream"."*" =
    self.by-version."block-stream"."0.0.8";
  by-version."block-stream"."0.0.8" = self.buildNodePackage {
    name = "block-stream-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/block-stream/-/block-stream-0.0.8.tgz";
      name = "block-stream-0.0.8.tgz";
      sha1 = "0688f46da2bbf9cff0c4f68225a0cb95cbe8a46b";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bluebird"."^3.0.5" =
    self.by-version."bluebird"."3.0.6";
  by-version."bluebird"."3.0.6" = self.buildNodePackage {
    name = "bluebird-3.0.6";
    version = "3.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bluebird/-/bluebird-3.0.6.tgz";
      name = "bluebird-3.0.6.tgz";
      sha1 = "f2488f325782f66d174842f481992e2faba56f38";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bn.js"."^4.0.0" =
    self.by-version."bn.js"."4.5.0";
  by-version."bn.js"."4.5.0" = self.buildNodePackage {
    name = "bn.js-4.5.0";
    version = "4.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bn.js/-/bn.js-4.5.0.tgz";
      name = "bn.js-4.5.0.tgz";
      sha1 = "b995be6db2484af988111af08c9d6aca6755178f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bn.js"."^4.1.0" =
    self.by-version."bn.js"."4.5.0";
  by-spec."bn.js"."^4.1.1" =
    self.by-version."bn.js"."4.5.0";
  by-spec."boom"."2.x.x" =
    self.by-version."boom"."2.10.1";
  by-version."boom"."2.10.1" = self.buildNodePackage {
    name = "boom-2.10.1";
    version = "2.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-2.10.1.tgz";
      name = "boom-2.10.1.tgz";
      sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower"."*" =
    self.by-version."bower"."1.7.0";
  by-version."bower"."1.7.0" = self.buildNodePackage {
    name = "bower-1.7.0";
    version = "1.7.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower/-/bower-1.7.0.tgz";
      name = "bower-1.7.0.tgz";
      sha1 = "55c9bf39f5547c02ed5469f67635637128adae29";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
      "archy-1.0.0" = self.by-version."archy"."1.0.0";
      "bower-config-1.3.0" = self.by-version."bower-config"."1.3.0";
      "bower-endpoint-parser-0.2.2" = self.by-version."bower-endpoint-parser"."0.2.2";
      "bower-json-0.4.0" = self.by-version."bower-json"."0.4.0";
      "bower-logger-0.2.2" = self.by-version."bower-logger"."0.2.2";
      "bower-registry-client-1.0.0" = self.by-version."bower-registry-client"."1.0.0";
      "cardinal-0.4.4" = self.by-version."cardinal"."0.4.4";
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "chmodr-1.0.2" = self.by-version."chmodr"."1.0.2";
      "configstore-0.3.2" = self.by-version."configstore"."0.3.2";
      "decompress-zip-0.1.0" = self.by-version."decompress-zip"."0.1.0";
      "destroy-1.0.3" = self.by-version."destroy"."1.0.3";
      "fs-write-stream-atomic-1.0.5" = self.by-version."fs-write-stream-atomic"."1.0.5";
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "fstream-ignore-1.0.3" = self.by-version."fstream-ignore"."1.0.3";
      "github-0.2.4" = self.by-version."github"."0.2.4";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "handlebars-2.0.0" = self.by-version."handlebars"."2.0.0";
      "inquirer-0.10.0" = self.by-version."inquirer"."0.10.0";
      "insight-0.7.0" = self.by-version."insight"."0.7.0";
      "is-root-1.0.0" = self.by-version."is-root"."1.0.0";
      "junk-1.0.2" = self.by-version."junk"."1.0.2";
      "lockfile-1.0.1" = self.by-version."lockfile"."1.0.1";
      "lru-cache-2.7.3" = self.by-version."lru-cache"."2.7.3";
      "md5-hex-1.1.0" = self.by-version."md5-hex"."1.1.0";
      "mkdirp-0.5.0" = self.by-version."mkdirp"."0.5.0";
      "mout-0.11.1" = self.by-version."mout"."0.11.1";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "opn-1.0.2" = self.by-version."opn"."1.0.2";
      "p-throttler-0.1.1" = self.by-version."p-throttler"."0.1.1";
      "promptly-0.2.0" = self.by-version."promptly"."0.2.0";
      "q-1.4.1" = self.by-version."q"."1.4.1";
      "request-2.53.0" = self.by-version."request"."2.53.0";
      "request-progress-0.3.1" = self.by-version."request-progress"."0.3.1";
      "retry-0.6.1" = self.by-version."retry"."0.6.1";
      "rimraf-2.4.4" = self.by-version."rimraf"."2.4.4";
      "semver-2.3.2" = self.by-version."semver"."2.3.2";
      "shell-quote-1.4.3" = self.by-version."shell-quote"."1.4.3";
      "stringify-object-1.0.1" = self.by-version."stringify-object"."1.0.1";
      "tar-fs-1.8.1" = self.by-version."tar-fs"."1.8.1";
      "tmp-0.0.24" = self.by-version."tmp"."0.0.24";
      "update-notifier-0.3.2" = self.by-version."update-notifier"."0.3.2";
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
      "which-1.2.0" = self.by-version."which"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-config"."^1.3.0" =
    self.by-version."bower-config"."1.3.0";
  by-version."bower-config"."1.3.0" = self.buildNodePackage {
    name = "bower-config-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-config/-/bower-config-1.3.0.tgz";
      name = "bower-config-1.3.0.tgz";
      sha1 = "cc10fd72a358051a025715bf0b9a29b35bbb6bbd";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "mout-0.11.1" = self.by-version."mout"."0.11.1";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "untildify-2.1.0" = self.by-version."untildify"."2.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-endpoint-parser"."^0.2.2" =
    self.by-version."bower-endpoint-parser"."0.2.2";
  by-version."bower-endpoint-parser"."0.2.2" = self.buildNodePackage {
    name = "bower-endpoint-parser-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-endpoint-parser/-/bower-endpoint-parser-0.2.2.tgz";
      name = "bower-endpoint-parser-0.2.2.tgz";
      sha1 = "00b565adbfab6f2d35addde977e97962acbcb3f6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-json"."^0.4.0" =
    self.by-version."bower-json"."0.4.0";
  by-version."bower-json"."0.4.0" = self.buildNodePackage {
    name = "bower-json-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-json/-/bower-json-0.4.0.tgz";
      name = "bower-json-0.4.0.tgz";
      sha1 = "a99c3ccf416ef0590ed0ded252c760f1c6d93766";
    };
    deps = {
      "deep-extend-0.2.11" = self.by-version."deep-extend"."0.2.11";
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "intersect-0.0.3" = self.by-version."intersect"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-logger"."^0.2.2" =
    self.by-version."bower-logger"."0.2.2";
  by-version."bower-logger"."0.2.2" = self.buildNodePackage {
    name = "bower-logger-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-logger/-/bower-logger-0.2.2.tgz";
      name = "bower-logger-0.2.2.tgz";
      sha1 = "39be07e979b2fc8e03a94634205ed9422373d381";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-registry-client"."^1.0.0" =
    self.by-version."bower-registry-client"."1.0.0";
  by-version."bower-registry-client"."1.0.0" = self.buildNodePackage {
    name = "bower-registry-client-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-registry-client/-/bower-registry-client-1.0.0.tgz";
      name = "bower-registry-client-1.0.0.tgz";
      sha1 = "697c3499067549a106b49f26d03e6dd1017a9241";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "lru-cache-2.7.3" = self.by-version."lru-cache"."2.7.3";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "request-replay-0.2.0" = self.by-version."request-replay"."0.2.0";
      "rimraf-2.4.4" = self.by-version."rimraf"."2.4.4";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.2";
  by-version."brace-expansion"."1.1.2" = self.buildNodePackage {
    name = "brace-expansion-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.2.tgz";
      name = "brace-expansion-1.1.2.tgz";
      sha1 = "f21445d0488b658e2771efd870eff51df29f04ef";
    };
    deps = {
      "balanced-match-0.3.0" = self.by-version."balanced-match"."0.3.0";
      "concat-map-0.0.1" = self.by-version."concat-map"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."braces"."^1.8.1" =
    self.by-version."braces"."1.8.2";
  by-version."braces"."1.8.2" = self.buildNodePackage {
    name = "braces-1.8.2";
    version = "1.8.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/braces/-/braces-1.8.2.tgz";
      name = "braces-1.8.2.tgz";
      sha1 = "036e024051d4bbc7096428b4d6f20ea1f137a794";
    };
    deps = {
      "expand-range-1.8.1" = self.by-version."expand-range"."1.8.1";
      "lazy-cache-0.2.4" = self.by-version."lazy-cache"."0.2.4";
      "preserve-0.2.0" = self.by-version."preserve"."0.2.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."brorand"."^1.0.1" =
    self.by-version."brorand"."1.0.5";
  by-version."brorand"."1.0.5" = self.buildNodePackage {
    name = "brorand-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/brorand/-/brorand-1.0.5.tgz";
      name = "brorand-1.0.5.tgz";
      sha1 = "07b54ca30286abd1718a0e2a830803efdc9bfa04";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-pack"."^5.0.0" =
    self.by-version."browser-pack"."5.0.1";
  by-version."browser-pack"."5.0.1" = self.buildNodePackage {
    name = "browser-pack-5.0.1";
    version = "5.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browser-pack/-/browser-pack-5.0.1.tgz";
      name = "browser-pack-5.0.1.tgz";
      sha1 = "4197719b20c6e0aaa09451c5111e53efb6fbc18d";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "combine-source-map-0.6.1" = self.by-version."combine-source-map"."0.6.1";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "umd-3.0.1" = self.by-version."umd"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-pack"."^6.0.1" =
    self.by-version."browser-pack"."6.0.1";
  by-version."browser-pack"."6.0.1" = self.buildNodePackage {
    name = "browser-pack-6.0.1";
    version = "6.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browser-pack/-/browser-pack-6.0.1.tgz";
      name = "browser-pack-6.0.1.tgz";
      sha1 = "779887c792eaa1f64a46a22c8f1051cdcd96755f";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "combine-source-map-0.7.1" = self.by-version."combine-source-map"."0.7.1";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "through2-2.0.0" = self.by-version."through2"."2.0.0";
      "umd-3.0.1" = self.by-version."umd"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-resolve"."^1.7.0" =
    self.by-version."browser-resolve"."1.11.0";
  by-version."browser-resolve"."1.11.0" = self.buildNodePackage {
    name = "browser-resolve-1.11.0";
    version = "1.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browser-resolve/-/browser-resolve-1.11.0.tgz";
      name = "browser-resolve-1.11.0.tgz";
      sha1 = "02042cb23484de896ee96ebb43c617e096c5deef";
    };
    deps = {
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-resolve"."^1.7.1" =
    self.by-version."browser-resolve"."1.11.0";
  by-spec."browserify"."*" =
    self.by-version."browserify"."12.0.1";
  by-version."browserify"."12.0.1" = self.buildNodePackage {
    name = "browserify-12.0.1";
    version = "12.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify/-/browserify-12.0.1.tgz";
      name = "browserify-12.0.1.tgz";
      sha1 = "2e0bd015384ed07feaac5b6466bd582c5085ec3e";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "assert-1.3.0" = self.by-version."assert"."1.3.0";
      "browser-pack-6.0.1" = self.by-version."browser-pack"."6.0.1";
      "browser-resolve-1.11.0" = self.by-version."browser-resolve"."1.11.0";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-3.5.4" = self.by-version."buffer"."3.5.4";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-1.0.0" = self.by-version."constants-browserify"."1.0.0";
      "crypto-browserify-3.11.0" = self.by-version."crypto-browserify"."3.11.0";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "deps-sort-2.0.0" = self.by-version."deps-sort"."2.0.0";
      "domain-browser-1.1.4" = self.by-version."domain-browser"."1.1.4";
      "duplexer2-0.1.4" = self.by-version."duplexer2"."0.1.4";
      "events-1.1.0" = self.by-version."events"."1.1.0";
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "has-1.0.1" = self.by-version."has"."1.0.1";
      "htmlescape-1.1.0" = self.by-version."htmlescape"."1.1.0";
      "stream-http-2.0.2" = self.by-version."stream-http"."2.0.2";
      "https-browserify-0.0.1" = self.by-version."https-browserify"."0.0.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "insert-module-globals-7.0.1" = self.by-version."insert-module-globals"."7.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "labeled-stream-splicer-2.0.0" = self.by-version."labeled-stream-splicer"."2.0.0";
      "module-deps-4.0.2" = self.by-version."module-deps"."4.0.2";
      "os-browserify-0.1.2" = self.by-version."os-browserify"."0.1.2";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "read-only-stream-2.0.0" = self.by-version."read-only-stream"."2.0.0";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "shell-quote-1.4.3" = self.by-version."shell-quote"."1.4.3";
      "stream-browserify-2.0.1" = self.by-version."stream-browserify"."2.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "syntax-error-1.1.4" = self.by-version."syntax-error"."1.1.4";
      "through2-2.0.0" = self.by-version."through2"."2.0.0";
      "timers-browserify-1.4.1" = self.by-version."timers-browserify"."1.4.1";
      "tty-browserify-0.0.0" = self.by-version."tty-browserify"."0.0.0";
      "url-0.11.0" = self.by-version."url"."0.11.0";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "vm-browserify-0.0.4" = self.by-version."vm-browserify"."0.0.4";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify".">=11.0.0 <12.0.0" =
    self.by-version."browserify"."11.2.0";
  by-version."browserify"."11.2.0" = self.buildNodePackage {
    name = "browserify-11.2.0";
    version = "11.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify/-/browserify-11.2.0.tgz";
      name = "browserify-11.2.0.tgz";
      sha1 = "a11bb9dd209d79572b813f7eeeaf828a5f5c0e4e";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "assert-1.3.0" = self.by-version."assert"."1.3.0";
      "browser-pack-5.0.1" = self.by-version."browser-pack"."5.0.1";
      "browser-resolve-1.11.0" = self.by-version."browser-resolve"."1.11.0";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-3.5.4" = self.by-version."buffer"."3.5.4";
      "builtins-0.0.7" = self.by-version."builtins"."0.0.7";
      "commondir-0.0.1" = self.by-version."commondir"."0.0.1";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-0.0.1" = self.by-version."constants-browserify"."0.0.1";
      "crypto-browserify-3.11.0" = self.by-version."crypto-browserify"."3.11.0";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "deps-sort-1.3.9" = self.by-version."deps-sort"."1.3.9";
      "domain-browser-1.1.4" = self.by-version."domain-browser"."1.1.4";
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
      "events-1.0.2" = self.by-version."events"."1.0.2";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "has-1.0.1" = self.by-version."has"."1.0.1";
      "htmlescape-1.1.0" = self.by-version."htmlescape"."1.1.0";
      "stream-http-1.7.1" = self.by-version."stream-http"."1.7.1";
      "https-browserify-0.0.1" = self.by-version."https-browserify"."0.0.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "insert-module-globals-6.6.3" = self.by-version."insert-module-globals"."6.6.3";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "labeled-stream-splicer-1.0.2" = self.by-version."labeled-stream-splicer"."1.0.2";
      "module-deps-3.9.1" = self.by-version."module-deps"."3.9.1";
      "os-browserify-0.1.2" = self.by-version."os-browserify"."0.1.2";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "read-only-stream-1.1.1" = self.by-version."read-only-stream"."1.1.1";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "shell-quote-0.0.1" = self.by-version."shell-quote"."0.0.1";
      "stream-browserify-2.0.1" = self.by-version."stream-browserify"."2.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "syntax-error-1.1.4" = self.by-version."syntax-error"."1.1.4";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "timers-browserify-1.4.1" = self.by-version."timers-browserify"."1.4.1";
      "tty-browserify-0.0.0" = self.by-version."tty-browserify"."0.0.0";
      "url-0.10.3" = self.by-version."url"."0.10.3";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "vm-browserify-0.0.4" = self.by-version."vm-browserify"."0.0.4";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify"."^11.0.0" =
    self.by-version."browserify"."11.2.0";
  by-spec."browserify-aes"."^1.0.0" =
    self.by-version."browserify-aes"."1.0.5";
  by-version."browserify-aes"."1.0.5" = self.buildNodePackage {
    name = "browserify-aes-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-aes/-/browserify-aes-1.0.5.tgz";
      name = "browserify-aes-1.0.5.tgz";
      sha1 = "447e7e4671fceb575f6bb16c7f31a20924f0c303";
    };
    deps = {
      "buffer-xor-1.0.3" = self.by-version."buffer-xor"."1.0.3";
      "cipher-base-1.0.2" = self.by-version."cipher-base"."1.0.2";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "evp_bytestokey-1.0.0" = self.by-version."evp_bytestokey"."1.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-aes"."^1.0.4" =
    self.by-version."browserify-aes"."1.0.5";
  by-spec."browserify-cache-api"."^2.0.0" =
    self.by-version."browserify-cache-api"."2.0.0";
  by-version."browserify-cache-api"."2.0.0" = self.buildNodePackage {
    name = "browserify-cache-api-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-cache-api/-/browserify-cache-api-2.0.0.tgz";
      name = "browserify-cache-api-2.0.0.tgz";
      sha1 = "b0d041f52bc22a2a8ad87aec65d6fd12a7a14f83";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "labeled-stream-splicer-1.0.2" = self.by-version."labeled-stream-splicer"."1.0.2";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-cipher"."^1.0.0" =
    self.by-version."browserify-cipher"."1.0.0";
  by-version."browserify-cipher"."1.0.0" = self.buildNodePackage {
    name = "browserify-cipher-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-cipher/-/browserify-cipher-1.0.0.tgz";
      name = "browserify-cipher-1.0.0.tgz";
      sha1 = "9988244874bf5ed4e28da95666dcd66ac8fc363a";
    };
    deps = {
      "browserify-aes-1.0.5" = self.by-version."browserify-aes"."1.0.5";
      "browserify-des-1.0.0" = self.by-version."browserify-des"."1.0.0";
      "evp_bytestokey-1.0.0" = self.by-version."evp_bytestokey"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-des"."^1.0.0" =
    self.by-version."browserify-des"."1.0.0";
  by-version."browserify-des"."1.0.0" = self.buildNodePackage {
    name = "browserify-des-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-des/-/browserify-des-1.0.0.tgz";
      name = "browserify-des-1.0.0.tgz";
      sha1 = "daa277717470922ed2fe18594118a175439721dd";
    };
    deps = {
      "cipher-base-1.0.2" = self.by-version."cipher-base"."1.0.2";
      "des.js-1.0.0" = self.by-version."des.js"."1.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-incremental"."^3.0.1" =
    self.by-version."browserify-incremental"."3.0.1";
  by-version."browserify-incremental"."3.0.1" = self.buildNodePackage {
    name = "browserify-incremental-3.0.1";
    version = "3.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-incremental/-/browserify-incremental-3.0.1.tgz";
      name = "browserify-incremental-3.0.1.tgz";
      sha1 = "a2a65cf8e1278e3e4753da2a430e26162b373f41";
    };
    deps = {
      "JSONStream-0.10.0" = self.by-version."JSONStream"."0.10.0";
      "browserify-cache-api-2.0.0" = self.by-version."browserify-cache-api"."2.0.0";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."browserify"."12.0.1"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-rsa"."^4.0.0" =
    self.by-version."browserify-rsa"."4.0.0";
  by-version."browserify-rsa"."4.0.0" = self.buildNodePackage {
    name = "browserify-rsa-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-rsa/-/browserify-rsa-4.0.0.tgz";
      name = "browserify-rsa-4.0.0.tgz";
      sha1 = "a72c5e33833fd576c3ccd3d1d5fe61c48fdd974d";
    };
    deps = {
      "bn.js-4.5.0" = self.by-version."bn.js"."4.5.0";
      "randombytes-2.0.1" = self.by-version."randombytes"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-sign"."^4.0.0" =
    self.by-version."browserify-sign"."4.0.0";
  by-version."browserify-sign"."4.0.0" = self.buildNodePackage {
    name = "browserify-sign-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-sign/-/browserify-sign-4.0.0.tgz";
      name = "browserify-sign-4.0.0.tgz";
      sha1 = "10773910c3c206d5420a46aad8694f820b85968f";
    };
    deps = {
      "bn.js-4.5.0" = self.by-version."bn.js"."4.5.0";
      "browserify-rsa-4.0.0" = self.by-version."browserify-rsa"."4.0.0";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
      "elliptic-6.0.2" = self.by-version."elliptic"."6.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "parse-asn1-5.0.0" = self.by-version."parse-asn1"."5.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-zlib"."~0.1.2" =
    self.by-version."browserify-zlib"."0.1.4";
  by-version."browserify-zlib"."0.1.4" = self.buildNodePackage {
    name = "browserify-zlib-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-zlib/-/browserify-zlib-0.1.4.tgz";
      name = "browserify-zlib-0.1.4.tgz";
      sha1 = "bb35f8a519f600e0fa6b8485241c979d0141fb2d";
    };
    deps = {
      "pako-0.2.8" = self.by-version."pako"."0.2.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-zlib"."~0.1.4" =
    self.by-version."browserify-zlib"."0.1.4";
  by-spec."buffer"."^3.0.0" =
    self.by-version."buffer"."3.5.4";
  by-version."buffer"."3.5.4" = self.buildNodePackage {
    name = "buffer-3.5.4";
    version = "3.5.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffer/-/buffer-3.5.4.tgz";
      name = "buffer-3.5.4.tgz";
      sha1 = "dddda17eecf7843e1064f43f5cdb4346528a9d49";
    };
    deps = {
      "base64-js-0.0.8" = self.by-version."base64-js"."0.0.8";
      "ieee754-1.1.6" = self.by-version."ieee754"."1.1.6";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer"."^3.0.3" =
    self.by-version."buffer"."3.5.4";
  by-spec."buffer"."^3.4.3" =
    self.by-version."buffer"."3.5.4";
  by-spec."buffer-xor"."^1.0.2" =
    self.by-version."buffer-xor"."1.0.3";
  by-version."buffer-xor"."1.0.3" = self.buildNodePackage {
    name = "buffer-xor-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffer-xor/-/buffer-xor-1.0.3.tgz";
      name = "buffer-xor-1.0.3.tgz";
      sha1 = "26e61ed1422fb70dd42e6e36729ed51d855fe8d9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffers"."~0.1.1" =
    self.by-version."buffers"."0.1.1";
  by-version."buffers"."0.1.1" = self.buildNodePackage {
    name = "buffers-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffers/-/buffers-0.1.1.tgz";
      name = "buffers-0.1.1.tgz";
      sha1 = "b24579c3bed4d6d396aeee6d9a8ae7f5482ab7bb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."builtin-status-codes"."^1.0.0" =
    self.by-version."builtin-status-codes"."1.0.0";
  by-version."builtin-status-codes"."1.0.0" = self.buildNodePackage {
    name = "builtin-status-codes-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/builtin-status-codes/-/builtin-status-codes-1.0.0.tgz";
      name = "builtin-status-codes-1.0.0.tgz";
      sha1 = "30637ee262978ac07174e16d7f82f0ad06e085ad";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."builtins"."~0.0.3" =
    self.by-version."builtins"."0.0.7";
  by-version."builtins"."0.0.7" = self.buildNodePackage {
    name = "builtins-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/builtins/-/builtins-0.0.7.tgz";
      name = "builtins-0.0.7.tgz";
      sha1 = "355219cd6cf18dbe7c01cc7fd2dce765cfdc549a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bytes"."2.1.0" =
    self.by-version."bytes"."2.1.0";
  by-version."bytes"."2.1.0" = self.buildNodePackage {
    name = "bytes-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bytes/-/bytes-2.1.0.tgz";
      name = "bytes-2.1.0.tgz";
      sha1 = "ac93c410e2ffc9cc7cf4b464b38289067f5e47b4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelcase"."^1.0.2" =
    self.by-version."camelcase"."1.2.1";
  by-version."camelcase"."1.2.1" = self.buildNodePackage {
    name = "camelcase-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase/-/camelcase-1.2.1.tgz";
      name = "camelcase-1.2.1.tgz";
      sha1 = "9bb5304d2e0b56698b2c758b08a3eaa9daa58a39";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cardinal"."0.4.4" =
    self.by-version."cardinal"."0.4.4";
  by-version."cardinal"."0.4.4" = self.buildNodePackage {
    name = "cardinal-0.4.4";
    version = "0.4.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/cardinal/-/cardinal-0.4.4.tgz";
      name = "cardinal-0.4.4.tgz";
      sha1 = "ca5bb68a5b511b90fe93b9acea49bdee5c32bfe2";
    };
    deps = {
      "redeyed-0.4.4" = self.by-version."redeyed"."0.4.4";
      "ansicolors-0.2.1" = self.by-version."ansicolors"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caseless"."~0.11.0" =
    self.by-version."caseless"."0.11.0";
  by-version."caseless"."0.11.0" = self.buildNodePackage {
    name = "caseless-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caseless/-/caseless-0.11.0.tgz";
      name = "caseless-0.11.0.tgz";
      sha1 = "715b96ea9841593cc33067923f5ec60ebda4f7d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caseless"."~0.9.0" =
    self.by-version."caseless"."0.9.0";
  by-version."caseless"."0.9.0" = self.buildNodePackage {
    name = "caseless-0.9.0";
    version = "0.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caseless/-/caseless-0.9.0.tgz";
      name = "caseless-0.9.0.tgz";
      sha1 = "b7b65ce6bf1413886539cfd533f0b30effa9cf88";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."center-align"."^0.1.1" =
    self.by-version."center-align"."0.1.2";
  by-version."center-align"."0.1.2" = self.buildNodePackage {
    name = "center-align-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/center-align/-/center-align-0.1.2.tgz";
      name = "center-align-0.1.2.tgz";
      sha1 = "74fa8540fc19b26aae6edc7e031cd6993d495ba0";
    };
    deps = {
      "align-text-0.1.3" = self.by-version."align-text"."0.1.3";
      "lazy-cache-0.2.4" = self.by-version."lazy-cache"."0.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chainsaw"."~0.1.0" =
    self.by-version."chainsaw"."0.1.0";
  by-version."chainsaw"."0.1.0" = self.buildNodePackage {
    name = "chainsaw-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chainsaw/-/chainsaw-0.1.0.tgz";
      name = "chainsaw-0.1.0.tgz";
      sha1 = "5eab50b28afe58074d0d58291388828b5e5fbc98";
    };
    deps = {
      "traverse-0.3.9" = self.by-version."traverse"."0.3.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.0.0" =
    self.by-version."chalk"."1.1.1";
  by-version."chalk"."1.1.1" = self.buildNodePackage {
    name = "chalk-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-1.1.1.tgz";
      name = "chalk-1.1.1.tgz";
      sha1 = "509afb67066e7499f7eb3535c77445772ae2d019";
    };
    deps = {
      "ansi-styles-2.1.0" = self.by-version."ansi-styles"."2.1.0";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
      "has-ansi-2.0.0" = self.by-version."has-ansi"."2.0.0";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "supports-color-2.0.0" = self.by-version."supports-color"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.1.0" =
    self.by-version."chalk"."1.1.1";
  by-spec."chalk"."^1.1.1" =
    self.by-version."chalk"."1.1.1";
  by-spec."chmodr"."^1.0.2" =
    self.by-version."chmodr"."1.0.2";
  by-version."chmodr"."1.0.2" = self.buildNodePackage {
    name = "chmodr-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chmodr/-/chmodr-1.0.2.tgz";
      name = "chmodr-1.0.2.tgz";
      sha1 = "04662b932d0f02ec66deaa2b0ea42811968e3eb9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chokidar"."^1.0.0" =
    self.by-version."chokidar"."1.4.0";
  by-version."chokidar"."1.4.0" = self.buildNodePackage {
    name = "chokidar-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chokidar/-/chokidar-1.4.0.tgz";
      name = "chokidar-1.4.0.tgz";
      sha1 = "bb6fc855413c2e6ca5f54250103a692f2f64f51e";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "async-each-0.1.6" = self.by-version."async-each"."0.1.6";
      "glob-parent-2.0.0" = self.by-version."glob-parent"."2.0.0";
      "is-binary-path-1.0.1" = self.by-version."is-binary-path"."1.0.1";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "readdirp-2.0.0" = self.by-version."readdirp"."2.0.0";
    };
    optionalDependencies = {
      "fsevents-1.0.5" = self.by-version."fsevents"."1.0.5";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cipher-base"."^1.0.0" =
    self.by-version."cipher-base"."1.0.2";
  by-version."cipher-base"."1.0.2" = self.buildNodePackage {
    name = "cipher-base-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cipher-base/-/cipher-base-1.0.2.tgz";
      name = "cipher-base-1.0.2.tgz";
      sha1 = "54ac1d1ebdf6a1bcd3559e6f369d72697f2cab8f";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cipher-base"."^1.0.1" =
    self.by-version."cipher-base"."1.0.2";
  by-spec."cli-cursor"."^1.0.1" =
    self.by-version."cli-cursor"."1.0.2";
  by-version."cli-cursor"."1.0.2" = self.buildNodePackage {
    name = "cli-cursor-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli-cursor/-/cli-cursor-1.0.2.tgz";
      name = "cli-cursor-1.0.2.tgz";
      sha1 = "64da3f7d56a54412e59794bd62dc35295e8f2987";
    };
    deps = {
      "restore-cursor-1.0.1" = self.by-version."restore-cursor"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cli-width"."^1.0.1" =
    self.by-version."cli-width"."1.1.0";
  by-version."cli-width"."1.1.0" = self.buildNodePackage {
    name = "cli-width-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli-width/-/cli-width-1.1.0.tgz";
      name = "cli-width-1.1.0.tgz";
      sha1 = "df62d1e1a980ef60d1256f364d4f2695594d7ecb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cliui"."^2.1.0" =
    self.by-version."cliui"."2.1.0";
  by-version."cliui"."2.1.0" = self.buildNodePackage {
    name = "cliui-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cliui/-/cliui-2.1.0.tgz";
      name = "cliui-2.1.0.tgz";
      sha1 = "4b475760ff80264c762c3a1719032e91c7fea0d1";
    };
    deps = {
      "center-align-0.1.2" = self.by-version."center-align"."0.1.2";
      "right-align-0.1.3" = self.by-version."right-align"."0.1.3";
      "wordwrap-0.0.2" = self.by-version."wordwrap"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."clone"."^1.0.2" =
    self.by-version."clone"."1.0.2";
  by-version."clone"."1.0.2" = self.buildNodePackage {
    name = "clone-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/clone/-/clone-1.0.2.tgz";
      name = "clone-1.0.2.tgz";
      sha1 = "260b7a99ebb1edfe247538175f783243cb19d149";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."code-point-at"."^1.0.0" =
    self.by-version."code-point-at"."1.0.0";
  by-version."code-point-at"."1.0.0" = self.buildNodePackage {
    name = "code-point-at-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/code-point-at/-/code-point-at-1.0.0.tgz";
      name = "code-point-at-1.0.0.tgz";
      sha1 = "f69b192d3f7d91e382e4b71bddb77878619ab0c6";
    };
    deps = {
      "number-is-nan-1.0.0" = self.by-version."number-is-nan"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combine-source-map"."~0.6.1" =
    self.by-version."combine-source-map"."0.6.1";
  by-version."combine-source-map"."0.6.1" = self.buildNodePackage {
    name = "combine-source-map-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combine-source-map/-/combine-source-map-0.6.1.tgz";
      name = "combine-source-map-0.6.1.tgz";
      sha1 = "9b4a09c316033d768e0f11e029fa2730e079ad96";
    };
    deps = {
      "convert-source-map-1.1.2" = self.by-version."convert-source-map"."1.1.2";
      "inline-source-map-0.5.0" = self.by-version."inline-source-map"."0.5.0";
      "lodash.memoize-3.0.4" = self.by-version."lodash.memoize"."3.0.4";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combine-source-map"."~0.7.1" =
    self.by-version."combine-source-map"."0.7.1";
  by-version."combine-source-map"."0.7.1" = self.buildNodePackage {
    name = "combine-source-map-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combine-source-map/-/combine-source-map-0.7.1.tgz";
      name = "combine-source-map-0.7.1.tgz";
      sha1 = "1720771dee7f3221ce3c62a104ee9a963f12009e";
    };
    deps = {
      "convert-source-map-1.1.2" = self.by-version."convert-source-map"."1.1.2";
      "inline-source-map-0.6.1" = self.by-version."inline-source-map"."0.6.1";
      "lodash.memoize-3.0.4" = self.by-version."lodash.memoize"."3.0.4";
      "source-map-0.4.2" = self.by-version."source-map"."0.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."^1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-version."combined-stream"."1.0.5" = self.buildNodePackage {
    name = "combined-stream-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
      name = "combined-stream-1.0.5.tgz";
      sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
    };
    deps = {
      "delayed-stream-1.0.0" = self.by-version."delayed-stream"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."~0.0.4" =
    self.by-version."combined-stream"."0.0.7";
  by-version."combined-stream"."0.0.7" = self.buildNodePackage {
    name = "combined-stream-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-0.0.7.tgz";
      name = "combined-stream-0.0.7.tgz";
      sha1 = "0137e657baa5a7541c57ac37ac5fc07d73b4dc1f";
    };
    deps = {
      "delayed-stream-0.0.5" = self.by-version."delayed-stream"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."~0.0.5" =
    self.by-version."combined-stream"."0.0.7";
  by-spec."combined-stream"."~1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-spec."commander"."^2.9.0" =
    self.by-version."commander"."2.9.0";
  by-version."commander"."2.9.0" = self.buildNodePackage {
    name = "commander-2.9.0";
    version = "2.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.9.0.tgz";
      name = "commander-2.9.0.tgz";
      sha1 = "9c99094176e12240cb22d6c5146098400fe0f7d4";
    };
    deps = {
      "graceful-readlink-1.0.1" = self.by-version."graceful-readlink"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commondir"."0.0.1" =
    self.by-version."commondir"."0.0.1";
  by-version."commondir"."0.0.1" = self.buildNodePackage {
    name = "commondir-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commondir/-/commondir-0.0.1.tgz";
      name = "commondir-0.0.1.tgz";
      sha1 = "89f00fdcd51b519c578733fec563e6a6da7f5be2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."compressible"."~2.0.6" =
    self.by-version."compressible"."2.0.6";
  by-version."compressible"."2.0.6" = self.buildNodePackage {
    name = "compressible-2.0.6";
    version = "2.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compressible/-/compressible-2.0.6.tgz";
      name = "compressible-2.0.6.tgz";
      sha1 = "9e4aa9321ffcf9cc4d81954f7aafa9f35767d5ea";
    };
    deps = {
      "mime-db-1.20.0" = self.by-version."mime-db"."1.20.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."compression"."^1.5.2" =
    self.by-version."compression"."1.6.0";
  by-version."compression"."1.6.0" = self.buildNodePackage {
    name = "compression-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compression/-/compression-1.6.0.tgz";
      name = "compression-1.6.0.tgz";
      sha1 = "886465ffa4a19f9b73b41682db77d28179b30920";
    };
    deps = {
      "accepts-1.3.0" = self.by-version."accepts"."1.3.0";
      "bytes-2.1.0" = self.by-version."bytes"."2.1.0";
      "compressible-2.0.6" = self.by-version."compressible"."2.0.6";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "on-headers-1.0.1" = self.by-version."on-headers"."1.0.1";
      "vary-1.1.0" = self.by-version."vary"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-map"."0.0.1" =
    self.by-version."concat-map"."0.0.1";
  by-version."concat-map"."0.0.1" = self.buildNodePackage {
    name = "concat-map-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
      name = "concat-map-0.0.1.tgz";
      sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-stream"."^1.4.6" =
    self.by-version."concat-stream"."1.5.1";
  by-version."concat-stream"."1.5.1" = self.buildNodePackage {
    name = "concat-stream-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-stream/-/concat-stream-1.5.1.tgz";
      name = "concat-stream-1.5.1.tgz";
      sha1 = "f3b80acf9e1f48e3875c0688b41b6c31602eea1c";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-stream"."~1.4.1" =
    self.by-version."concat-stream"."1.4.10";
  by-version."concat-stream"."1.4.10" = self.buildNodePackage {
    name = "concat-stream-1.4.10";
    version = "1.4.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-stream/-/concat-stream-1.4.10.tgz";
      name = "concat-stream-1.4.10.tgz";
      sha1 = "acc3bbf5602cb8cc980c6ac840fa7d8603e3ef36";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-stream"."~1.4.5" =
    self.by-version."concat-stream"."1.4.10";
  by-spec."concat-stream"."~1.5.0" =
    self.by-version."concat-stream"."1.5.1";
  by-spec."concat-stream"."~1.5.1" =
    self.by-version."concat-stream"."1.5.1";
  by-spec."configstore"."^0.3.1" =
    self.by-version."configstore"."0.3.2";
  by-version."configstore"."0.3.2" = self.buildNodePackage {
    name = "configstore-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/configstore/-/configstore-0.3.2.tgz";
      name = "configstore-0.3.2.tgz";
      sha1 = "25e4c16c3768abf75c5a65bc61761f495055b459";
    };
    deps = {
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "js-yaml-3.4.6" = self.by-version."js-yaml"."3.4.6";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "object-assign-2.1.1" = self.by-version."object-assign"."2.1.1";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
      "uuid-2.0.1" = self.by-version."uuid"."2.0.1";
      "xdg-basedir-1.0.1" = self.by-version."xdg-basedir"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."configstore"."^0.3.2" =
    self.by-version."configstore"."0.3.2";
  by-spec."configstore"."^1.0.0" =
    self.by-version."configstore"."1.3.0";
  by-version."configstore"."1.3.0" = self.buildNodePackage {
    name = "configstore-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/configstore/-/configstore-1.3.0.tgz";
      name = "configstore-1.3.0.tgz";
      sha1 = "fcf9b376e97bc304817d1fbe10e978a6ac60641d";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "uuid-2.0.1" = self.by-version."uuid"."2.0.1";
      "write-file-atomic-1.1.4" = self.by-version."write-file-atomic"."1.1.4";
      "xdg-basedir-2.0.0" = self.by-version."xdg-basedir"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."connect-history-api-fallback"."1.1.0" =
    self.by-version."connect-history-api-fallback"."1.1.0";
  by-version."connect-history-api-fallback"."1.1.0" = self.buildNodePackage {
    name = "connect-history-api-fallback-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect-history-api-fallback/-/connect-history-api-fallback-1.1.0.tgz";
      name = "connect-history-api-fallback-1.1.0.tgz";
      sha1 = "5a6dee82d9a648cb29131d3f9dd400ffa4593742";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."console-browserify"."^1.1.0" =
    self.by-version."console-browserify"."1.1.0";
  by-version."console-browserify"."1.1.0" = self.buildNodePackage {
    name = "console-browserify-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/console-browserify/-/console-browserify-1.1.0.tgz";
      name = "console-browserify-1.1.0.tgz";
      sha1 = "f0241c45730a9fc6323b206dbf38edc741d0bb10";
    };
    deps = {
      "date-now-0.1.4" = self.by-version."date-now"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."constants-browserify"."0.0.1" =
    self.by-version."constants-browserify"."0.0.1";
  by-version."constants-browserify"."0.0.1" = self.buildNodePackage {
    name = "constants-browserify-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/constants-browserify/-/constants-browserify-0.0.1.tgz";
      name = "constants-browserify-0.0.1.tgz";
      sha1 = "92577db527ba6c4cf0a4568d84bc031f441e21f2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."constants-browserify"."~0.0.1" =
    self.by-version."constants-browserify"."0.0.1";
  by-spec."constants-browserify"."~1.0.0" =
    self.by-version."constants-browserify"."1.0.0";
  by-version."constants-browserify"."1.0.0" = self.buildNodePackage {
    name = "constants-browserify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/constants-browserify/-/constants-browserify-1.0.0.tgz";
      name = "constants-browserify-1.0.0.tgz";
      sha1 = "c20b96d8c617748aaf1c16021760cd27fcb8cb75";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."content-disposition"."0.5.0" =
    self.by-version."content-disposition"."0.5.0";
  by-version."content-disposition"."0.5.0" = self.buildNodePackage {
    name = "content-disposition-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/content-disposition/-/content-disposition-0.5.0.tgz";
      name = "content-disposition-0.5.0.tgz";
      sha1 = "4284fe6ae0630874639e44e80a418c2934135e9e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."content-type"."~1.0.1" =
    self.by-version."content-type"."1.0.1";
  by-version."content-type"."1.0.1" = self.buildNodePackage {
    name = "content-type-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/content-type/-/content-type-1.0.1.tgz";
      name = "content-type-1.0.1.tgz";
      sha1 = "a19d2247327dc038050ce622b7a154ec59c5e600";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."convert-source-map"."~1.1.0" =
    self.by-version."convert-source-map"."1.1.2";
  by-version."convert-source-map"."1.1.2" = self.buildNodePackage {
    name = "convert-source-map-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/convert-source-map/-/convert-source-map-1.1.2.tgz";
      name = "convert-source-map-1.1.2.tgz";
      sha1 = "8266378831073907fa384f0b2aecab0ba0586693";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie"."0.1.3" =
    self.by-version."cookie"."0.1.3";
  by-version."cookie"."0.1.3" = self.buildNodePackage {
    name = "cookie-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie/-/cookie-0.1.3.tgz";
      name = "cookie-0.1.3.tgz";
      sha1 = "e734a5c1417fce472d5aef82c381cabb64d1a435";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie-signature"."1.0.6" =
    self.by-version."cookie-signature"."1.0.6";
  by-version."cookie-signature"."1.0.6" = self.buildNodePackage {
    name = "cookie-signature-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
      name = "cookie-signature-1.0.6.tgz";
      sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.2";
  by-version."core-util-is"."1.0.2" = self.buildNodePackage {
    name = "core-util-is-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
      name = "core-util-is-1.0.2.tgz";
      sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."create-ecdh"."^4.0.0" =
    self.by-version."create-ecdh"."4.0.0";
  by-version."create-ecdh"."4.0.0" = self.buildNodePackage {
    name = "create-ecdh-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/create-ecdh/-/create-ecdh-4.0.0.tgz";
      name = "create-ecdh-4.0.0.tgz";
      sha1 = "888c723596cdf7612f6498233eebd7a35301737d";
    };
    deps = {
      "bn.js-4.5.0" = self.by-version."bn.js"."4.5.0";
      "elliptic-6.0.2" = self.by-version."elliptic"."6.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."create-hash"."^1.1.0" =
    self.by-version."create-hash"."1.1.2";
  by-version."create-hash"."1.1.2" = self.buildNodePackage {
    name = "create-hash-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/create-hash/-/create-hash-1.1.2.tgz";
      name = "create-hash-1.1.2.tgz";
      sha1 = "51210062d7bb7479f6c65bb41a92208b1d61abad";
    };
    deps = {
      "cipher-base-1.0.2" = self.by-version."cipher-base"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ripemd160-1.0.1" = self.by-version."ripemd160"."1.0.1";
      "sha.js-2.4.4" = self.by-version."sha.js"."2.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."create-hash"."^1.1.1" =
    self.by-version."create-hash"."1.1.2";
  by-spec."create-hmac"."^1.1.0" =
    self.by-version."create-hmac"."1.1.4";
  by-version."create-hmac"."1.1.4" = self.buildNodePackage {
    name = "create-hmac-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/create-hmac/-/create-hmac-1.1.4.tgz";
      name = "create-hmac-1.1.4.tgz";
      sha1 = "d3fb4ba253eb8b3f56e39ea2fbcb8af747bd3170";
    };
    deps = {
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."create-hmac"."^1.1.2" =
    self.by-version."create-hmac"."1.1.4";
  by-spec."cryptiles"."2.x.x" =
    self.by-version."cryptiles"."2.0.5";
  by-version."cryptiles"."2.0.5" = self.buildNodePackage {
    name = "cryptiles-2.0.5";
    version = "2.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cryptiles/-/cryptiles-2.0.5.tgz";
      name = "cryptiles-2.0.5.tgz";
      sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
    };
    deps = {
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crypto-browserify"."^3.0.0" =
    self.by-version."crypto-browserify"."3.11.0";
  by-version."crypto-browserify"."3.11.0" = self.buildNodePackage {
    name = "crypto-browserify-3.11.0";
    version = "3.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.11.0.tgz";
      name = "crypto-browserify-3.11.0.tgz";
      sha1 = "3652a0906ab9b2a7e0c3ce66a408e957a2485522";
    };
    deps = {
      "browserify-cipher-1.0.0" = self.by-version."browserify-cipher"."1.0.0";
      "browserify-sign-4.0.0" = self.by-version."browserify-sign"."4.0.0";
      "create-ecdh-4.0.0" = self.by-version."create-ecdh"."4.0.0";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
      "diffie-hellman-5.0.0" = self.by-version."diffie-hellman"."5.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "pbkdf2-3.0.4" = self.by-version."pbkdf2"."3.0.4";
      "public-encrypt-4.0.0" = self.by-version."public-encrypt"."4.0.0";
      "randombytes-2.0.1" = self.by-version."randombytes"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crypto-browserify"."~3.2.6" =
    self.by-version."crypto-browserify"."3.2.8";
  by-version."crypto-browserify"."3.2.8" = self.buildNodePackage {
    name = "crypto-browserify-3.2.8";
    version = "3.2.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.2.8.tgz";
      name = "crypto-browserify-3.2.8.tgz";
      sha1 = "b9b11dbe6d9651dd882a01e6cc467df718ecf189";
    };
    deps = {
      "pbkdf2-compat-2.0.1" = self.by-version."pbkdf2-compat"."2.0.1";
      "ripemd160-0.2.0" = self.by-version."ripemd160"."0.2.0";
      "sha.js-2.2.6" = self.by-version."sha.js"."2.2.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ctype"."0.5.3" =
    self.by-version."ctype"."0.5.3";
  by-version."ctype"."0.5.3" = self.buildNodePackage {
    name = "ctype-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ctype/-/ctype-0.5.3.tgz";
      name = "ctype-0.5.3.tgz";
      sha1 = "82c18c2461f74114ef16c135224ad0b9144ca12f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dashdash".">=1.10.1 <2.0.0" =
    self.by-version."dashdash"."1.10.1";
  by-version."dashdash"."1.10.1" = self.buildNodePackage {
    name = "dashdash-1.10.1";
    version = "1.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dashdash/-/dashdash-1.10.1.tgz";
      name = "dashdash-1.10.1.tgz";
      sha1 = "0abf1af89a8f5129a81f18c2b35b21df22622f60";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."date-now"."^0.1.4" =
    self.by-version."date-now"."0.1.4";
  by-version."date-now"."0.1.4" = self.buildNodePackage {
    name = "date-now-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/date-now/-/date-now-0.1.4.tgz";
      name = "date-now-0.1.4.tgz";
      sha1 = "eaf439fd4d4848ad74e5cc7dbef200672b9e345b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."^2.1.0" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
      name = "debug-2.2.0.tgz";
      sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
    };
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."~0.7.2" =
    self.by-version."debug"."0.7.4";
  by-version."debug"."0.7.4" = self.buildNodePackage {
    name = "debug-0.7.4";
    version = "0.7.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-0.7.4.tgz";
      name = "debug-0.7.4.tgz";
      sha1 = "06e1ea8082c2cb14e39806e22e2f6f757f92af39";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."~2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."decamelize"."^1.0.0" =
    self.by-version."decamelize"."1.1.1";
  by-version."decamelize"."1.1.1" = self.buildNodePackage {
    name = "decamelize-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/decamelize/-/decamelize-1.1.1.tgz";
      name = "decamelize-1.1.1.tgz";
      sha1 = "8871479a6c0487f5653d48a992f1d0381ca6f031";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."decompress-zip"."^0.1.0" =
    self.by-version."decompress-zip"."0.1.0";
  by-version."decompress-zip"."0.1.0" = self.buildNodePackage {
    name = "decompress-zip-0.1.0";
    version = "0.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/decompress-zip/-/decompress-zip-0.1.0.tgz";
      name = "decompress-zip-0.1.0.tgz";
      sha1 = "bce60c11664f2d660fca4bcf634af6de5d6c14c7";
    };
    deps = {
      "binary-0.3.0" = self.by-version."binary"."0.3.0";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "mkpath-0.1.0" = self.by-version."mkpath"."0.1.0";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "q-1.4.1" = self.by-version."q"."1.4.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "touch-0.0.3" = self.by-version."touch"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deep-extend"."~0.2.5" =
    self.by-version."deep-extend"."0.2.11";
  by-version."deep-extend"."0.2.11" = self.buildNodePackage {
    name = "deep-extend-0.2.11";
    version = "0.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-extend/-/deep-extend-0.2.11.tgz";
      name = "deep-extend-0.2.11.tgz";
      sha1 = "7a16ba69729132340506170494bc83f7076fe08f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deep-extend"."~0.4.0" =
    self.by-version."deep-extend"."0.4.0";
  by-version."deep-extend"."0.4.0" = self.buildNodePackage {
    name = "deep-extend-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-extend/-/deep-extend-0.4.0.tgz";
      name = "deep-extend-0.4.0.tgz";
      sha1 = "f58b46db58eb5d6439cdd0f2e6cafb4739fc1283";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."defined"."^1.0.0" =
    self.by-version."defined"."1.0.0";
  by-version."defined"."1.0.0" = self.buildNodePackage {
    name = "defined-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/defined/-/defined-1.0.0.tgz";
      name = "defined-1.0.0.tgz";
      sha1 = "c98d9bcef75674188e110969151199e39b1fa693";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."0.0.5" =
    self.by-version."delayed-stream"."0.0.5";
  by-version."delayed-stream"."0.0.5" = self.buildNodePackage {
    name = "delayed-stream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-0.0.5.tgz";
      name = "delayed-stream-0.0.5.tgz";
      sha1 = "d4b1f43a93e8296dfe02694f4680bc37a313c73f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."~1.0.0" =
    self.by-version."delayed-stream"."1.0.0";
  by-version."delayed-stream"."1.0.0" = self.buildNodePackage {
    name = "delayed-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
      name = "delayed-stream-1.0.0.tgz";
      sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delegates"."^0.1.0" =
    self.by-version."delegates"."0.1.0";
  by-version."delegates"."0.1.0" = self.buildNodePackage {
    name = "delegates-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delegates/-/delegates-0.1.0.tgz";
      name = "delegates-0.1.0.tgz";
      sha1 = "b4b57be11a1653517a04b27f0949bdc327dfe390";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."depd"."~1.0.1" =
    self.by-version."depd"."1.0.1";
  by-version."depd"."1.0.1" = self.buildNodePackage {
    name = "depd-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/depd/-/depd-1.0.1.tgz";
      name = "depd-1.0.1.tgz";
      sha1 = "80aec64c9d6d97e65cc2a9caa93c0aa6abf73aaa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deps-sort"."^1.3.7" =
    self.by-version."deps-sort"."1.3.9";
  by-version."deps-sort"."1.3.9" = self.buildNodePackage {
    name = "deps-sort-1.3.9";
    version = "1.3.9";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/deps-sort/-/deps-sort-1.3.9.tgz";
      name = "deps-sort-1.3.9.tgz";
      sha1 = "29dfff53e17b36aecae7530adbbbf622c2ed1a71";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deps-sort"."^2.0.0" =
    self.by-version."deps-sort"."2.0.0";
  by-version."deps-sort"."2.0.0" = self.buildNodePackage {
    name = "deps-sort-2.0.0";
    version = "2.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/deps-sort/-/deps-sort-2.0.0.tgz";
      name = "deps-sort-2.0.0.tgz";
      sha1 = "091724902e84658260eb910748cccd1af6e21fb5";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "through2-2.0.0" = self.by-version."through2"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."des.js"."^1.0.0" =
    self.by-version."des.js"."1.0.0";
  by-version."des.js"."1.0.0" = self.buildNodePackage {
    name = "des.js-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/des.js/-/des.js-1.0.0.tgz";
      name = "des.js-1.0.0.tgz";
      sha1 = "c074d2e2aa6a8a9a07dbd61f9a15c2cd83ec8ecc";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimalistic-assert-1.0.0" = self.by-version."minimalistic-assert"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."destroy"."1.0.3" =
    self.by-version."destroy"."1.0.3";
  by-version."destroy"."1.0.3" = self.buildNodePackage {
    name = "destroy-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/destroy/-/destroy-1.0.3.tgz";
      name = "destroy-1.0.3.tgz";
      sha1 = "b433b4724e71fd8551d9885174851c5fc377e2c9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."destroy"."^1.0.3" =
    self.by-version."destroy"."1.0.3";
  by-spec."detective"."^4.0.0" =
    self.by-version."detective"."4.3.1";
  by-version."detective"."4.3.1" = self.buildNodePackage {
    name = "detective-4.3.1";
    version = "4.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/detective/-/detective-4.3.1.tgz";
      name = "detective-4.3.1.tgz";
      sha1 = "9fb06dd1ee8f0ea4dbcc607cda39d9ce1d4f726f";
    };
    deps = {
      "acorn-1.2.2" = self.by-version."acorn"."1.2.2";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."diffie-hellman"."^5.0.0" =
    self.by-version."diffie-hellman"."5.0.0";
  by-version."diffie-hellman"."5.0.0" = self.buildNodePackage {
    name = "diffie-hellman-5.0.0";
    version = "5.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/diffie-hellman/-/diffie-hellman-5.0.0.tgz";
      name = "diffie-hellman-5.0.0.tgz";
      sha1 = "f3c957cfd5419fea048540b39a751d7e4363f031";
    };
    deps = {
      "bn.js-4.5.0" = self.by-version."bn.js"."4.5.0";
      "miller-rabin-4.0.0" = self.by-version."miller-rabin"."4.0.0";
      "randombytes-2.0.1" = self.by-version."randombytes"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domain-browser"."^1.1.1" =
    self.by-version."domain-browser"."1.1.4";
  by-version."domain-browser"."1.1.4" = self.buildNodePackage {
    name = "domain-browser-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domain-browser/-/domain-browser-1.1.4.tgz";
      name = "domain-browser-1.1.4.tgz";
      sha1 = "90b42769333e909ce3f13bf3e1023ba4a6d6b723";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domain-browser"."~1.1.0" =
    self.by-version."domain-browser"."1.1.4";
  by-spec."duplexer2"."0.0.2" =
    self.by-version."duplexer2"."0.0.2";
  by-version."duplexer2"."0.0.2" = self.buildNodePackage {
    name = "duplexer2-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/duplexer2/-/duplexer2-0.0.2.tgz";
      name = "duplexer2-0.0.2.tgz";
      sha1 = "c614dcf67e2fb14995a91711e5a617e8a60a31db";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."duplexer2"."^0.1.2" =
    self.by-version."duplexer2"."0.1.4";
  by-version."duplexer2"."0.1.4" = self.buildNodePackage {
    name = "duplexer2-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/duplexer2/-/duplexer2-0.1.4.tgz";
      name = "duplexer2-0.1.4.tgz";
      sha1 = "8b12dab878c0d69e3e7891051662a32fc6bddcc1";
    };
    deps = {
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."duplexer2"."~0.0.2" =
    self.by-version."duplexer2"."0.0.2";
  by-spec."duplexer2"."~0.1.0" =
    self.by-version."duplexer2"."0.1.4";
  by-spec."duplexer2"."~0.1.2" =
    self.by-version."duplexer2"."0.1.4";
  by-spec."duplexify"."^3.2.0" =
    self.by-version."duplexify"."3.4.2";
  by-version."duplexify"."3.4.2" = self.buildNodePackage {
    name = "duplexify-3.4.2";
    version = "3.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/duplexify/-/duplexify-3.4.2.tgz";
      name = "duplexify-3.4.2.tgz";
      sha1 = "71a578af03e0d063eb8f1326affd5e5600145e1b";
    };
    deps = {
      "end-of-stream-1.0.0" = self.by-version."end-of-stream"."1.0.0";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ecc-jsbn".">=0.0.1 <1.0.0" =
    self.by-version."ecc-jsbn"."0.1.1";
  by-version."ecc-jsbn"."0.1.1" = self.buildNodePackage {
    name = "ecc-jsbn-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
      name = "ecc-jsbn-0.1.1.tgz";
      sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
    };
    deps = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ee-first"."1.1.1" =
    self.by-version."ee-first"."1.1.1";
  by-version."ee-first"."1.1.1" = self.buildNodePackage {
    name = "ee-first-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
      name = "ee-first-1.1.1.tgz";
      sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."elliptic"."^6.0.0" =
    self.by-version."elliptic"."6.0.2";
  by-version."elliptic"."6.0.2" = self.buildNodePackage {
    name = "elliptic-6.0.2";
    version = "6.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/elliptic/-/elliptic-6.0.2.tgz";
      name = "elliptic-6.0.2.tgz";
      sha1 = "219b96cd92aa9885d91d31c1fd42eaa5eb4483a9";
    };
    deps = {
      "bn.js-4.5.0" = self.by-version."bn.js"."4.5.0";
      "brorand-1.0.5" = self.by-version."brorand"."1.0.5";
      "hash.js-1.0.3" = self.by-version."hash.js"."1.0.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."end-of-stream"."1.0.0" =
    self.by-version."end-of-stream"."1.0.0";
  by-version."end-of-stream"."1.0.0" = self.buildNodePackage {
    name = "end-of-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/end-of-stream/-/end-of-stream-1.0.0.tgz";
      name = "end-of-stream-1.0.0.tgz";
      sha1 = "d4596e702734a93e40e9af864319eabd99ff2f0e";
    };
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."end-of-stream"."^1.0.0" =
    self.by-version."end-of-stream"."1.1.0";
  by-version."end-of-stream"."1.1.0" = self.buildNodePackage {
    name = "end-of-stream-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/end-of-stream/-/end-of-stream-1.1.0.tgz";
      name = "end-of-stream-1.1.0.tgz";
      sha1 = "e9353258baa9108965efc41cb0ef8ade2f3cfb07";
    };
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."end-of-stream"."^1.1.0" =
    self.by-version."end-of-stream"."1.1.0";
  by-spec."enhanced-resolve"."~0.9.0" =
    self.by-version."enhanced-resolve"."0.9.1";
  by-version."enhanced-resolve"."0.9.1" = self.buildNodePackage {
    name = "enhanced-resolve-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-0.9.1.tgz";
      name = "enhanced-resolve-0.9.1.tgz";
      sha1 = "4d6e689b3725f86090927ccc86cd9f1635b89e2e";
    };
    deps = {
      "tapable-0.1.10" = self.by-version."tapable"."0.1.10";
      "memory-fs-0.2.0" = self.by-version."memory-fs"."0.2.0";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."errno"."^0.1.3" =
    self.by-version."errno"."0.1.4";
  by-version."errno"."0.1.4" = self.buildNodePackage {
    name = "errno-0.1.4";
    version = "0.1.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/errno/-/errno-0.1.4.tgz";
      name = "errno-0.1.4.tgz";
      sha1 = "b896e23a9e5e8ba33871fc996abd3635fc9a1c7d";
    };
    deps = {
      "prr-0.0.0" = self.by-version."prr"."0.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-html"."1.0.2" =
    self.by-version."escape-html"."1.0.2";
  by-version."escape-html"."1.0.2" = self.buildNodePackage {
    name = "escape-html-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-html/-/escape-html-1.0.2.tgz";
      name = "escape-html-1.0.2.tgz";
      sha1 = "d77d32fa98e38c2f41ae85e9278e0e0e6ba1022c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."^1.0.2" =
    self.by-version."escape-string-regexp"."1.0.3";
  by-version."escape-string-regexp"."1.0.3" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.3.tgz";
      name = "escape-string-regexp-1.0.3.tgz";
      sha1 = "9e2d8b25bc2555c3336723750e03f099c2735bb5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima"."^2.5.0" =
    self.by-version."esprima"."2.7.0";
  by-version."esprima"."2.7.0" = self.buildNodePackage {
    name = "esprima-2.7.0";
    version = "2.7.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-2.7.0.tgz";
      name = "esprima-2.7.0.tgz";
      sha1 = "74cfb0e4ae43f0b81541dcc30050f9dacb1f707e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima"."^2.6.0" =
    self.by-version."esprima"."2.7.0";
  by-spec."esprima"."~1.0.4" =
    self.by-version."esprima"."1.0.4";
  by-version."esprima"."1.0.4" = self.buildNodePackage {
    name = "esprima-1.0.4";
    version = "1.0.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-1.0.4.tgz";
      name = "esprima-1.0.4.tgz";
      sha1 = "9f557e08fc3b4d26ece9dd34f8fbf476b62585ad";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."etag"."~1.7.0" =
    self.by-version."etag"."1.7.0";
  by-version."etag"."1.7.0" = self.buildNodePackage {
    name = "etag-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/etag/-/etag-1.7.0.tgz";
      name = "etag-1.7.0.tgz";
      sha1 = "03d30b5f67dd6e632d2945d30d6652731a34d5d8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."eventemitter3"."1.x.x" =
    self.by-version."eventemitter3"."1.1.1";
  by-version."eventemitter3"."1.1.1" = self.buildNodePackage {
    name = "eventemitter3-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eventemitter3/-/eventemitter3-1.1.1.tgz";
      name = "eventemitter3-1.1.1.tgz";
      sha1 = "47786bdaa087caf7b1b75e73abc5c7d540158cd0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."events"."^1.0.0" =
    self.by-version."events"."1.1.0";
  by-version."events"."1.1.0" = self.buildNodePackage {
    name = "events-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/events/-/events-1.1.0.tgz";
      name = "events-1.1.0.tgz";
      sha1 = "4b389fc200f910742ebff3abb2efe33690f45429";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."events"."~1.0.0" =
    self.by-version."events"."1.0.2";
  by-version."events"."1.0.2" = self.buildNodePackage {
    name = "events-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/events/-/events-1.0.2.tgz";
      name = "events-1.0.2.tgz";
      sha1 = "75849dcfe93d10fb057c30055afdbd51d06a8e24";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."events"."~1.1.0" =
    self.by-version."events"."1.1.0";
  by-spec."eventsource"."^0.1.3" =
    self.by-version."eventsource"."0.1.6";
  by-version."eventsource"."0.1.6" = self.buildNodePackage {
    name = "eventsource-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eventsource/-/eventsource-0.1.6.tgz";
      name = "eventsource-0.1.6.tgz";
      sha1 = "0acede849ed7dd1ccc32c811bb11b944d4f29232";
    };
    deps = {
      "original-1.0.0" = self.by-version."original"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."evp_bytestokey"."^1.0.0" =
    self.by-version."evp_bytestokey"."1.0.0";
  by-version."evp_bytestokey"."1.0.0" = self.buildNodePackage {
    name = "evp_bytestokey-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/evp_bytestokey/-/evp_bytestokey-1.0.0.tgz";
      name = "evp_bytestokey-1.0.0.tgz";
      sha1 = "497b66ad9fef65cd7c08a6180824ba1476b66e53";
    };
    deps = {
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."exit-hook"."^1.0.0" =
    self.by-version."exit-hook"."1.1.1";
  by-version."exit-hook"."1.1.1" = self.buildNodePackage {
    name = "exit-hook-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/exit-hook/-/exit-hook-1.1.1.tgz";
      name = "exit-hook-1.1.1.tgz";
      sha1 = "f05ca233b48c05d54fff07765df8507e95c02ff8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-brackets"."^0.1.4" =
    self.by-version."expand-brackets"."0.1.4";
  by-version."expand-brackets"."0.1.4" = self.buildNodePackage {
    name = "expand-brackets-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.4.tgz";
      name = "expand-brackets-0.1.4.tgz";
      sha1 = "797b9e484101205f418cecaec6312c132f51e2ae";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-range"."^1.8.1" =
    self.by-version."expand-range"."1.8.1";
  by-version."expand-range"."1.8.1" = self.buildNodePackage {
    name = "expand-range-1.8.1";
    version = "1.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-range/-/expand-range-1.8.1.tgz";
      name = "expand-range-1.8.1.tgz";
      sha1 = "acbd63e56efd9139722b755f099b9db5ac1f33f6";
    };
    deps = {
      "fill-range-2.2.3" = self.by-version."fill-range"."2.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."express"."^4.13.3" =
    self.by-version."express"."4.13.3";
  by-version."express"."4.13.3" = self.buildNodePackage {
    name = "express-4.13.3";
    version = "4.13.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/express/-/express-4.13.3.tgz";
      name = "express-4.13.3.tgz";
      sha1 = "ddb2f1fb4502bf33598d2b032b037960ca6c80a3";
    };
    deps = {
      "accepts-1.2.13" = self.by-version."accepts"."1.2.13";
      "array-flatten-1.1.1" = self.by-version."array-flatten"."1.1.1";
      "content-disposition-0.5.0" = self.by-version."content-disposition"."0.5.0";
      "content-type-1.0.1" = self.by-version."content-type"."1.0.1";
      "cookie-0.1.3" = self.by-version."cookie"."0.1.3";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "finalhandler-0.4.0" = self.by-version."finalhandler"."0.4.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "merge-descriptors-1.0.0" = self.by-version."merge-descriptors"."1.0.0";
      "methods-1.1.1" = self.by-version."methods"."1.1.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "path-to-regexp-0.1.7" = self.by-version."path-to-regexp"."0.1.7";
      "proxy-addr-1.0.9" = self.by-version."proxy-addr"."1.0.9";
      "qs-4.0.0" = self.by-version."qs"."4.0.0";
      "range-parser-1.0.3" = self.by-version."range-parser"."1.0.3";
      "send-0.13.0" = self.by-version."send"."0.13.0";
      "serve-static-1.10.0" = self.by-version."serve-static"."1.10.0";
      "type-is-1.6.10" = self.by-version."type-is"."1.6.10";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
      "vary-1.0.1" = self.by-version."vary"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extend"."~3.0.0" =
    self.by-version."extend"."3.0.0";
  by-version."extend"."3.0.0" = self.buildNodePackage {
    name = "extend-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extend/-/extend-3.0.0.tgz";
      name = "extend-3.0.0.tgz";
      sha1 = "5a474353b9f3353ddd8176dfd37b91c83a46f1d4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extglob"."^0.3.1" =
    self.by-version."extglob"."0.3.1";
  by-version."extglob"."0.3.1" = self.buildNodePackage {
    name = "extglob-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extglob/-/extglob-0.3.1.tgz";
      name = "extglob-0.3.1.tgz";
      sha1 = "4f31241c0dddc90ac8c729cb6d7c872dee77c8f5";
    };
    deps = {
      "ansi-green-0.1.1" = self.by-version."ansi-green"."0.1.1";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "success-symbol-0.1.0" = self.by-version."success-symbol"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extsprintf"."1.0.2" =
    self.by-version."extsprintf"."1.0.2";
  by-version."extsprintf"."1.0.2" = self.buildNodePackage {
    name = "extsprintf-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extsprintf/-/extsprintf-1.0.2.tgz";
      name = "extsprintf-1.0.2.tgz";
      sha1 = "e1080e0658e300b06294990cc70e1502235fd550";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."faye-websocket"."^0.9.3" =
    self.by-version."faye-websocket"."0.9.4";
  by-version."faye-websocket"."0.9.4" = self.buildNodePackage {
    name = "faye-websocket-0.9.4";
    version = "0.9.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/faye-websocket/-/faye-websocket-0.9.4.tgz";
      name = "faye-websocket-0.9.4.tgz";
      sha1 = "885934c79effb0409549e0c0a3801ed17a40cdad";
    };
    deps = {
      "websocket-driver-0.6.3" = self.by-version."websocket-driver"."0.6.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."faye-websocket"."~0.7.3" =
    self.by-version."faye-websocket"."0.7.3";
  by-version."faye-websocket"."0.7.3" = self.buildNodePackage {
    name = "faye-websocket-0.7.3";
    version = "0.7.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/faye-websocket/-/faye-websocket-0.7.3.tgz";
      name = "faye-websocket-0.7.3.tgz";
      sha1 = "cc4074c7f4a4dfd03af54dd65c354b135132ce11";
    };
    deps = {
      "websocket-driver-0.6.3" = self.by-version."websocket-driver"."0.6.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."figures"."^1.3.5" =
    self.by-version."figures"."1.4.0";
  by-version."figures"."1.4.0" = self.buildNodePackage {
    name = "figures-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/figures/-/figures-1.4.0.tgz";
      name = "figures-1.4.0.tgz";
      sha1 = "eb8f56390dbe3081044a5c2a9d9089075a48432f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."filename-regex"."^2.0.0" =
    self.by-version."filename-regex"."2.0.0";
  by-version."filename-regex"."2.0.0" = self.buildNodePackage {
    name = "filename-regex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/filename-regex/-/filename-regex-2.0.0.tgz";
      name = "filename-regex-2.0.0.tgz";
      sha1 = "996e3e80479b98b9897f15a8a58b3d084e926775";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fill-range"."^2.1.0" =
    self.by-version."fill-range"."2.2.3";
  by-version."fill-range"."2.2.3" = self.buildNodePackage {
    name = "fill-range-2.2.3";
    version = "2.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fill-range/-/fill-range-2.2.3.tgz";
      name = "fill-range-2.2.3.tgz";
      sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "isobject-2.0.0" = self.by-version."isobject"."2.0.0";
      "randomatic-1.1.3" = self.by-version."randomatic"."1.1.3";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.5.2" = self.by-version."repeat-string"."1.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."finalhandler"."0.4.0" =
    self.by-version."finalhandler"."0.4.0";
  by-version."finalhandler"."0.4.0" = self.buildNodePackage {
    name = "finalhandler-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/finalhandler/-/finalhandler-0.4.0.tgz";
      name = "finalhandler-0.4.0.tgz";
      sha1 = "965a52d9e8d05d2b857548541fb89b53a2497d9b";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-in"."^0.1.4" =
    self.by-version."for-in"."0.1.4";
  by-version."for-in"."0.1.4" = self.buildNodePackage {
    name = "for-in-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/for-in/-/for-in-0.1.4.tgz";
      name = "for-in-0.1.4.tgz";
      sha1 = "9f5cf7b4ffc7e1ae6591a4e97b177aa59d70fb2e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-own"."^0.1.3" =
    self.by-version."for-own"."0.1.3";
  by-version."for-own"."0.1.3" = self.buildNodePackage {
    name = "for-own-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/for-own/-/for-own-0.1.3.tgz";
      name = "for-own-0.1.3.tgz";
      sha1 = "606444cde77c2f0a11088169e2e354eaf56e74fe";
    };
    deps = {
      "for-in-0.1.4" = self.by-version."for-in"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."foreach"."^2.0.5" =
    self.by-version."foreach"."2.0.5";
  by-version."foreach"."2.0.5" = self.buildNodePackage {
    name = "foreach-2.0.5";
    version = "2.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/foreach/-/foreach-2.0.5.tgz";
      name = "foreach-2.0.5.tgz";
      sha1 = "0bee005018aeb260d0a3af3ae658dd0136ec1b99";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forever-agent"."~0.5.0" =
    self.by-version."forever-agent"."0.5.2";
  by-version."forever-agent"."0.5.2" = self.buildNodePackage {
    name = "forever-agent-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.5.2.tgz";
      name = "forever-agent-0.5.2.tgz";
      sha1 = "6d0e09c4921f94a27f63d3b49c5feff1ea4c5130";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forever-agent"."~0.6.1" =
    self.by-version."forever-agent"."0.6.1";
  by-version."forever-agent"."0.6.1" = self.buildNodePackage {
    name = "forever-agent-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
      name = "forever-agent-0.6.1.tgz";
      sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~0.2.0" =
    self.by-version."form-data"."0.2.0";
  by-version."form-data"."0.2.0" = self.buildNodePackage {
    name = "form-data-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.2.0.tgz";
      name = "form-data-0.2.0.tgz";
      sha1 = "26f8bc26da6440e299cbdcfb69035c4f77a6e466";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-types-2.0.14" = self.by-version."mime-types"."2.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~1.0.0-rc3" =
    self.by-version."form-data"."1.0.0-rc3";
  by-version."form-data"."1.0.0-rc3" = self.buildNodePackage {
    name = "form-data-1.0.0-rc3";
    version = "1.0.0-rc3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-1.0.0-rc3.tgz";
      name = "form-data-1.0.0-rc3.tgz";
      sha1 = "d35bc62e7fbc2937ae78f948aaa0d38d90607577";
    };
    deps = {
      "async-1.5.0" = self.by-version."async"."1.5.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.8" = self.by-version."mime-types"."2.1.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forwarded"."~0.1.0" =
    self.by-version."forwarded"."0.1.0";
  by-version."forwarded"."0.1.0" = self.buildNodePackage {
    name = "forwarded-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forwarded/-/forwarded-0.1.0.tgz";
      name = "forwarded-0.1.0.tgz";
      sha1 = "19ef9874c4ae1c297bcf078fde63a09b66a84363";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fresh"."0.3.0" =
    self.by-version."fresh"."0.3.0";
  by-version."fresh"."0.3.0" = self.buildNodePackage {
    name = "fresh-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fresh/-/fresh-0.3.0.tgz";
      name = "fresh-0.3.0.tgz";
      sha1 = "651f838e22424e7566de161d8358caa199f83d4f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fs-write-stream-atomic"."^1.0.5" =
    self.by-version."fs-write-stream-atomic"."1.0.5";
  by-version."fs-write-stream-atomic"."1.0.5" = self.buildNodePackage {
    name = "fs-write-stream-atomic-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fs-write-stream-atomic/-/fs-write-stream-atomic-1.0.5.tgz";
      name = "fs-write-stream-atomic-1.0.5.tgz";
      sha1 = "862a4dabdffcafabfc16499458e37310c39925f6";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "imurmurhash-0.1.4" = self.by-version."imurmurhash"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fsevents"."^1.0.0" =
    self.by-version."fsevents"."1.0.5";
  by-version."fsevents"."1.0.5" = self.buildNodePackage {
    name = "fsevents-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fsevents/-/fsevents-1.0.5.tgz";
      name = "fsevents-1.0.5.tgz";
      sha1 = "91228f83f8fe7aff52ce1099c31b862a23c64805";
    };
    deps = {
      "nan-2.1.0" = self.by-version."nan"."2.1.0";
      "node-pre-gyp-0.6.17" = self.by-version."node-pre-gyp"."0.6.17";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ "darwin" ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.0" =
    self.by-version."fstream"."1.0.8";
  by-version."fstream"."1.0.8" = self.buildNodePackage {
    name = "fstream-1.0.8";
    version = "1.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream/-/fstream-1.0.8.tgz";
      name = "fstream-1.0.8.tgz";
      sha1 = "7e8d7a73abb3647ef36e4b8a15ca801dba03d038";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rimraf-2.4.4" = self.by-version."rimraf"."2.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.2" =
    self.by-version."fstream"."1.0.8";
  by-spec."fstream"."^1.0.3" =
    self.by-version."fstream"."1.0.8";
  by-spec."fstream"."~1.0.8" =
    self.by-version."fstream"."1.0.8";
  by-spec."fstream-ignore"."^1.0.2" =
    self.by-version."fstream-ignore"."1.0.3";
  by-version."fstream-ignore"."1.0.3" = self.buildNodePackage {
    name = "fstream-ignore-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream-ignore/-/fstream-ignore-1.0.3.tgz";
      name = "fstream-ignore-1.0.3.tgz";
      sha1 = "4c74d91fa88b22b42f4f86a18a2820dd79d8fcdd";
    };
    deps = {
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.0" = self.by-version."minimatch"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream-ignore"."~1.0.3" =
    self.by-version."fstream-ignore"."1.0.3";
  by-spec."function-bind"."^1.0.2" =
    self.by-version."function-bind"."1.0.2";
  by-version."function-bind"."1.0.2" = self.buildNodePackage {
    name = "function-bind-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/function-bind/-/function-bind-1.0.2.tgz";
      name = "function-bind-1.0.2.tgz";
      sha1 = "c2873b69c5e6d7cefae47d2555172926c8c2e05e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gauge"."~1.2.0" =
    self.by-version."gauge"."1.2.2";
  by-version."gauge"."1.2.2" = self.buildNodePackage {
    name = "gauge-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gauge/-/gauge-1.2.2.tgz";
      name = "gauge-1.2.2.tgz";
      sha1 = "05b6730a19a8fcad3c340a142f0945222a3f815b";
    };
    deps = {
      "ansi-0.3.0" = self.by-version."ansi"."0.3.0";
      "has-unicode-1.0.1" = self.by-version."has-unicode"."1.0.1";
      "lodash.pad-3.1.1" = self.by-version."lodash.pad"."3.1.1";
      "lodash.padleft-3.1.1" = self.by-version."lodash.padleft"."3.1.1";
      "lodash.padright-3.1.1" = self.by-version."lodash.padright"."3.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."generate-function"."^2.0.0" =
    self.by-version."generate-function"."2.0.0";
  by-version."generate-function"."2.0.0" = self.buildNodePackage {
    name = "generate-function-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/generate-function/-/generate-function-2.0.0.tgz";
      name = "generate-function-2.0.0.tgz";
      sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."generate-object-property"."^1.1.0" =
    self.by-version."generate-object-property"."1.2.0";
  by-version."generate-object-property"."1.2.0" = self.buildNodePackage {
    name = "generate-object-property-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
      name = "generate-object-property-1.2.0.tgz";
      sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
    };
    deps = {
      "is-property-1.0.2" = self.by-version."is-property"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."github"."^0.2.3" =
    self.by-version."github"."0.2.4";
  by-version."github"."0.2.4" = self.buildNodePackage {
    name = "github-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/github/-/github-0.2.4.tgz";
      name = "github-0.2.4.tgz";
      sha1 = "24fa7f0e13fa11b946af91134c51982a91ce538b";
    };
    deps = {
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^4.0.2" =
    self.by-version."glob"."4.5.3";
  by-version."glob"."4.5.3" = self.buildNodePackage {
    name = "glob-4.5.3";
    version = "4.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-4.5.3.tgz";
      name = "glob-4.5.3.tgz";
      sha1 = "c6cb73d3226c1efef04de3c56d012f03377ee15f";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^4.0.5" =
    self.by-version."glob"."4.5.3";
  by-spec."glob"."^4.3.2" =
    self.by-version."glob"."4.5.3";
  by-spec."glob"."^5.0.14" =
    self.by-version."glob"."5.0.15";
  by-version."glob"."5.0.15" = self.buildNodePackage {
    name = "glob-5.0.15";
    version = "5.0.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-5.0.15.tgz";
      name = "glob-5.0.15.tgz";
      sha1 = "1bc936b9e02f4a603fcc222ecf7633d30b8b93b1";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.0" = self.by-version."minimatch"."3.0.0";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^5.0.15" =
    self.by-version."glob"."5.0.15";
  by-spec."glob"."^5.0.3" =
    self.by-version."glob"."5.0.15";
  by-spec."glob-base"."^0.3.0" =
    self.by-version."glob-base"."0.3.0";
  by-version."glob-base"."0.3.0" = self.buildNodePackage {
    name = "glob-base-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-base/-/glob-base-0.3.0.tgz";
      name = "glob-base-0.3.0.tgz";
      sha1 = "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4";
    };
    deps = {
      "glob-parent-2.0.0" = self.by-version."glob-parent"."2.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-parent"."^2.0.0" =
    self.by-version."glob-parent"."2.0.0";
  by-version."glob-parent"."2.0.0" = self.buildNodePackage {
    name = "glob-parent-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz";
      name = "glob-parent-2.0.0.tgz";
      sha1 = "81383d72db054fcccf5336daa902f182f6edbb28";
    };
    deps = {
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."got"."^3.2.0" =
    self.by-version."got"."3.3.1";
  by-version."got"."3.3.1" = self.buildNodePackage {
    name = "got-3.3.1";
    version = "3.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/got/-/got-3.3.1.tgz";
      name = "got-3.3.1.tgz";
      sha1 = "e5d0ed4af55fc3eef4d56007769d98192bcb2eca";
    };
    deps = {
      "duplexify-3.4.2" = self.by-version."duplexify"."3.4.2";
      "infinity-agent-2.0.3" = self.by-version."infinity-agent"."2.0.3";
      "is-redirect-1.0.0" = self.by-version."is-redirect"."1.0.0";
      "is-stream-1.0.1" = self.by-version."is-stream"."1.0.1";
      "lowercase-keys-1.0.0" = self.by-version."lowercase-keys"."1.0.0";
      "nested-error-stacks-1.0.2" = self.by-version."nested-error-stacks"."1.0.2";
      "object-assign-3.0.0" = self.by-version."object-assign"."3.0.0";
      "prepend-http-1.0.3" = self.by-version."prepend-http"."1.0.3";
      "read-all-stream-3.0.1" = self.by-version."read-all-stream"."3.0.1";
      "timed-out-2.0.0" = self.by-version."timed-out"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."4.1" =
    self.by-version."graceful-fs"."4.1.2";
  by-version."graceful-fs"."4.1.2" = self.buildNodePackage {
    name = "graceful-fs-4.1.2";
    version = "4.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.2.tgz";
      name = "graceful-fs-4.1.2.tgz";
      sha1 = "fe2239b7574972e67e41f808823f9bfa4a991e37";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^3.0.0" =
    self.by-version."graceful-fs"."3.0.8";
  by-version."graceful-fs"."3.0.8" = self.buildNodePackage {
    name = "graceful-fs-3.0.8";
    version = "3.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-3.0.8.tgz";
      name = "graceful-fs-3.0.8.tgz";
      sha1 = "ce813e725fa82f7e6147d51c9a5ca68270551c22";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^3.0.1" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-fs"."^3.0.5" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-fs"."^4.0.0" =
    self.by-version."graceful-fs"."4.1.2";
  by-spec."graceful-fs"."^4.1.2" =
    self.by-version."graceful-fs"."4.1.2";
  by-spec."graceful-fs"."~2.0.0" =
    self.by-version."graceful-fs"."2.0.3";
  by-version."graceful-fs"."2.0.3" = self.buildNodePackage {
    name = "graceful-fs-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-2.0.3.tgz";
      name = "graceful-fs-2.0.3.tgz";
      sha1 = "7cd2cdb228a4a3f36e95efa6cc142de7d1a136d0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-readlink".">= 1.0.0" =
    self.by-version."graceful-readlink"."1.0.1";
  by-version."graceful-readlink"."1.0.1" = self.buildNodePackage {
    name = "graceful-readlink-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
      name = "graceful-readlink-1.0.1.tgz";
      sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."handlebars"."^2.0.0" =
    self.by-version."handlebars"."2.0.0";
  by-version."handlebars"."2.0.0" = self.buildNodePackage {
    name = "handlebars-2.0.0";
    version = "2.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/handlebars/-/handlebars-2.0.0.tgz";
      name = "handlebars-2.0.0.tgz";
      sha1 = "6e9d7f8514a3467fa5e9f82cc158ecfc1d5ac76f";
    };
    deps = {
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
    };
    optionalDependencies = {
      "uglify-js-2.3.6" = self.by-version."uglify-js"."2.3.6";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."har-validator"."~2.0.2" =
    self.by-version."har-validator"."2.0.3";
  by-version."har-validator"."2.0.3" = self.buildNodePackage {
    name = "har-validator-2.0.3";
    version = "2.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/har-validator/-/har-validator-2.0.3.tgz";
      name = "har-validator-2.0.3.tgz";
      sha1 = "5a9e12564a571cf0b81ef93c2157bd1617168883";
    };
    deps = {
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "is-my-json-valid-2.12.3" = self.by-version."is-my-json-valid"."2.12.3";
      "pinkie-promise-2.0.0" = self.by-version."pinkie-promise"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has"."^1.0.0" =
    self.by-version."has"."1.0.1";
  by-version."has"."1.0.1" = self.buildNodePackage {
    name = "has-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has/-/has-1.0.1.tgz";
      name = "has-1.0.1.tgz";
      sha1 = "8461733f538b0837c9361e39a9ab9e9704dc2f28";
    };
    deps = {
      "function-bind-1.0.2" = self.by-version."function-bind"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-ansi"."^2.0.0" =
    self.by-version."has-ansi"."2.0.0";
  by-version."has-ansi"."2.0.0" = self.buildNodePackage {
    name = "has-ansi-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz";
      name = "has-ansi-2.0.0.tgz";
      sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
    };
    deps = {
      "ansi-regex-2.0.0" = self.by-version."ansi-regex"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-flag"."^1.0.0" =
    self.by-version."has-flag"."1.0.0";
  by-version."has-flag"."1.0.0" = self.buildNodePackage {
    name = "has-flag-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-flag/-/has-flag-1.0.0.tgz";
      name = "has-flag-1.0.0.tgz";
      sha1 = "9d9e793165ce017a00f00418c43f942a7b1d11fa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-unicode"."^1.0.0" =
    self.by-version."has-unicode"."1.0.1";
  by-version."has-unicode"."1.0.1" = self.buildNodePackage {
    name = "has-unicode-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-unicode/-/has-unicode-1.0.1.tgz";
      name = "has-unicode-1.0.1.tgz";
      sha1 = "c46fceea053eb8ec789bffbba25fca52dfdcf38e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hash.js"."^1.0.0" =
    self.by-version."hash.js"."1.0.3";
  by-version."hash.js"."1.0.3" = self.buildNodePackage {
    name = "hash.js-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hash.js/-/hash.js-1.0.3.tgz";
      name = "hash.js-1.0.3.tgz";
      sha1 = "1332ff00156c0a0ffdd8236013d07b77a0451573";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hawk"."~2.3.0" =
    self.by-version."hawk"."2.3.1";
  by-version."hawk"."2.3.1" = self.buildNodePackage {
    name = "hawk-2.3.1";
    version = "2.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-2.3.1.tgz";
      name = "hawk-2.3.1.tgz";
      sha1 = "1e731ce39447fa1d0f6d707f7bceebec0fd1ec1f";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
      "cryptiles-2.0.5" = self.by-version."cryptiles"."2.0.5";
      "sntp-1.0.9" = self.by-version."sntp"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hawk"."~3.1.0" =
    self.by-version."hawk"."3.1.2";
  by-version."hawk"."3.1.2" = self.buildNodePackage {
    name = "hawk-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-3.1.2.tgz";
      name = "hawk-3.1.2.tgz";
      sha1 = "90c90118886e21975d1ad4ae9b3e284ed19a2de8";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
      "cryptiles-2.0.5" = self.by-version."cryptiles"."2.0.5";
      "sntp-1.0.9" = self.by-version."sntp"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoek"."2.x.x" =
    self.by-version."hoek"."2.16.3";
  by-version."hoek"."2.16.3" = self.buildNodePackage {
    name = "hoek-2.16.3";
    version = "2.16.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoek/-/hoek-2.16.3.tgz";
      name = "hoek-2.16.3.tgz";
      sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."htmlescape"."^1.1.0" =
    self.by-version."htmlescape"."1.1.0";
  by-version."htmlescape"."1.1.0" = self.buildNodePackage {
    name = "htmlescape-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/htmlescape/-/htmlescape-1.1.0.tgz";
      name = "htmlescape-1.1.0.tgz";
      sha1 = "ebf7a9524f7c86b5f6888589b40bdba712eafa67";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-browserify"."^1.3.2" =
    self.by-version."http-browserify"."1.7.0";
  by-version."http-browserify"."1.7.0" = self.buildNodePackage {
    name = "http-browserify-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-browserify/-/http-browserify-1.7.0.tgz";
      name = "http-browserify-1.7.0.tgz";
      sha1 = "33795ade72df88acfbfd36773cefeda764735b20";
    };
    deps = {
      "Base64-0.2.1" = self.by-version."Base64"."0.2.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-errors"."~1.3.1" =
    self.by-version."http-errors"."1.3.1";
  by-version."http-errors"."1.3.1" = self.buildNodePackage {
    name = "http-errors-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-errors/-/http-errors-1.3.1.tgz";
      name = "http-errors-1.3.1.tgz";
      sha1 = "197e22cdebd4198585e8694ef6786197b91ed942";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-proxy"."^1.11.2" =
    self.by-version."http-proxy"."1.12.0";
  by-version."http-proxy"."1.12.0" = self.buildNodePackage {
    name = "http-proxy-1.12.0";
    version = "1.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-proxy/-/http-proxy-1.12.0.tgz";
      name = "http-proxy-1.12.0.tgz";
      sha1 = "4f02ea971e79e6affa12fa5f10ca2aebb5e3b17c";
    };
    deps = {
      "eventemitter3-1.1.1" = self.by-version."eventemitter3"."1.1.1";
      "requires-port-0.0.1" = self.by-version."requires-port"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-signature"."~0.10.0" =
    self.by-version."http-signature"."0.10.1";
  by-version."http-signature"."0.10.1" = self.buildNodePackage {
    name = "http-signature-0.10.1";
    version = "0.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-0.10.1.tgz";
      name = "http-signature-0.10.1.tgz";
      sha1 = "4fbdac132559aa8323121e540779c0a012b27e66";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
      "asn1-0.1.11" = self.by-version."asn1"."0.1.11";
      "ctype-0.5.3" = self.by-version."ctype"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-signature"."~1.1.0" =
    self.by-version."http-signature"."1.1.0";
  by-version."http-signature"."1.1.0" = self.buildNodePackage {
    name = "http-signature-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-1.1.0.tgz";
      name = "http-signature-1.1.0.tgz";
      sha1 = "5d2d7e9b6ef49980ad5b128d8e4ef09a31c90d95";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
      "jsprim-1.2.2" = self.by-version."jsprim"."1.2.2";
      "sshpk-1.7.1" = self.by-version."sshpk"."1.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."https-browserify"."0.0.0" =
    self.by-version."https-browserify"."0.0.0";
  by-version."https-browserify"."0.0.0" = self.buildNodePackage {
    name = "https-browserify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/https-browserify/-/https-browserify-0.0.0.tgz";
      name = "https-browserify-0.0.0.tgz";
      sha1 = "b3ffdfe734b2a3d4a9efd58e8654c91fce86eafd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."https-browserify"."~0.0.0" =
    self.by-version."https-browserify"."0.0.1";
  by-version."https-browserify"."0.0.1" = self.buildNodePackage {
    name = "https-browserify-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/https-browserify/-/https-browserify-0.0.1.tgz";
      name = "https-browserify-0.0.1.tgz";
      sha1 = "3f91365cabe60b77ed0ebba24b454e3e09d95a82";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ieee754"."^1.1.4" =
    self.by-version."ieee754"."1.1.6";
  by-version."ieee754"."1.1.6" = self.buildNodePackage {
    name = "ieee754-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ieee754/-/ieee754-1.1.6.tgz";
      name = "ieee754-1.1.6.tgz";
      sha1 = "2e1013219c6d6712973ec54d981ec19e5579de97";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."imurmurhash"."^0.1.4" =
    self.by-version."imurmurhash"."0.1.4";
  by-version."imurmurhash"."0.1.4" = self.buildNodePackage {
    name = "imurmurhash-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/imurmurhash/-/imurmurhash-0.1.4.tgz";
      name = "imurmurhash-0.1.4.tgz";
      sha1 = "9218b9b2b928a238b13dc4fb6b6d576f231453ea";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."indexof"."0.0.1" =
    self.by-version."indexof"."0.0.1";
  by-version."indexof"."0.0.1" = self.buildNodePackage {
    name = "indexof-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/indexof/-/indexof-0.0.1.tgz";
      name = "indexof-0.0.1.tgz";
      sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."infinity-agent"."^2.0.0" =
    self.by-version."infinity-agent"."2.0.3";
  by-version."infinity-agent"."2.0.3" = self.buildNodePackage {
    name = "infinity-agent-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/infinity-agent/-/infinity-agent-2.0.3.tgz";
      name = "infinity-agent-2.0.3.tgz";
      sha1 = "45e0e2ff7a9eb030b27d62b74b3744b7a7ac4216";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inflight"."^1.0.4" =
    self.by-version."inflight"."1.0.4";
  by-version."inflight"."1.0.4" = self.buildNodePackage {
    name = "inflight-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inflight/-/inflight-1.0.4.tgz";
      name = "inflight-1.0.4.tgz";
      sha1 = "6cbb4521ebd51ce0ec0a936bfd7657ef7e9b172a";
    };
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherit"."^2.2.2" =
    self.by-version."inherit"."2.2.2";
  by-version."inherit"."2.2.2" = self.buildNodePackage {
    name = "inherit-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherit/-/inherit-2.2.2.tgz";
      name = "inherit-2.2.2.tgz";
      sha1 = "3b5b3417d434f81a234d68f79612615e416244a3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."2" =
    self.by-version."inherits"."2.0.1";
  by-version."inherits"."2.0.1" = self.buildNodePackage {
    name = "inherits-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
      name = "inherits-2.0.1.tgz";
      sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."^2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."~2.0.0" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."ini"."~1.3.0" =
    self.by-version."ini"."1.3.4";
  by-version."ini"."1.3.4" = self.buildNodePackage {
    name = "ini-1.3.4";
    version = "1.3.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ini/-/ini-1.3.4.tgz";
      name = "ini-1.3.4.tgz";
      sha1 = "0537cb79daf59b59a1a517dff706c86ec039162e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inline-source-map"."~0.5.0" =
    self.by-version."inline-source-map"."0.5.0";
  by-version."inline-source-map"."0.5.0" = self.buildNodePackage {
    name = "inline-source-map-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inline-source-map/-/inline-source-map-0.5.0.tgz";
      name = "inline-source-map-0.5.0.tgz";
      sha1 = "4a4c5dd8e4fb5e9b3cda60c822dfadcaee66e0af";
    };
    deps = {
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inline-source-map"."~0.6.0" =
    self.by-version."inline-source-map"."0.6.1";
  by-version."inline-source-map"."0.6.1" = self.buildNodePackage {
    name = "inline-source-map-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inline-source-map/-/inline-source-map-0.6.1.tgz";
      name = "inline-source-map-0.6.1.tgz";
      sha1 = "f9d1f19690674d51539cdfd44efd713dac2cfe04";
    };
    deps = {
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inquirer"."0.10.0" =
    self.by-version."inquirer"."0.10.0";
  by-version."inquirer"."0.10.0" = self.buildNodePackage {
    name = "inquirer-0.10.0";
    version = "0.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inquirer/-/inquirer-0.10.0.tgz";
      name = "inquirer-0.10.0.tgz";
      sha1 = "48cd3e23f8d989a52d47dc5e10ec75324387e908";
    };
    deps = {
      "ansi-escapes-1.1.0" = self.by-version."ansi-escapes"."1.1.0";
      "ansi-regex-2.0.0" = self.by-version."ansi-regex"."2.0.0";
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "cli-cursor-1.0.2" = self.by-version."cli-cursor"."1.0.2";
      "cli-width-1.1.0" = self.by-version."cli-width"."1.1.0";
      "figures-1.4.0" = self.by-version."figures"."1.4.0";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "readline2-1.0.1" = self.by-version."readline2"."1.0.1";
      "run-async-0.1.0" = self.by-version."run-async"."0.1.0";
      "rx-lite-3.1.2" = self.by-version."rx-lite"."3.1.2";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inquirer"."^0.10.0" =
    self.by-version."inquirer"."0.10.1";
  by-version."inquirer"."0.10.1" = self.buildNodePackage {
    name = "inquirer-0.10.1";
    version = "0.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inquirer/-/inquirer-0.10.1.tgz";
      name = "inquirer-0.10.1.tgz";
      sha1 = "ea25e4ce69ca145e05c99e46dcfec05e4012594a";
    };
    deps = {
      "ansi-escapes-1.1.0" = self.by-version."ansi-escapes"."1.1.0";
      "ansi-regex-2.0.0" = self.by-version."ansi-regex"."2.0.0";
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "cli-cursor-1.0.2" = self.by-version."cli-cursor"."1.0.2";
      "cli-width-1.1.0" = self.by-version."cli-width"."1.1.0";
      "figures-1.4.0" = self.by-version."figures"."1.4.0";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "readline2-1.0.1" = self.by-version."readline2"."1.0.1";
      "run-async-0.1.0" = self.by-version."run-async"."0.1.0";
      "rx-lite-3.1.2" = self.by-version."rx-lite"."3.1.2";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."insert-module-globals"."^6.4.1" =
    self.by-version."insert-module-globals"."6.6.3";
  by-version."insert-module-globals"."6.6.3" = self.buildNodePackage {
    name = "insert-module-globals-6.6.3";
    version = "6.6.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/insert-module-globals/-/insert-module-globals-6.6.3.tgz";
      name = "insert-module-globals-6.6.3.tgz";
      sha1 = "20638e29a30f9ed1ca2e3a825fbc2cba5246ddfc";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "combine-source-map-0.6.1" = self.by-version."combine-source-map"."0.6.1";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "is-buffer-1.1.0" = self.by-version."is-buffer"."1.1.0";
      "lexical-scope-1.2.0" = self.by-version."lexical-scope"."1.2.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."insert-module-globals"."^7.0.0" =
    self.by-version."insert-module-globals"."7.0.1";
  by-version."insert-module-globals"."7.0.1" = self.buildNodePackage {
    name = "insert-module-globals-7.0.1";
    version = "7.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/insert-module-globals/-/insert-module-globals-7.0.1.tgz";
      name = "insert-module-globals-7.0.1.tgz";
      sha1 = "c03bf4e01cb086d5b5e5ace8ad0afe7889d638c3";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "combine-source-map-0.7.1" = self.by-version."combine-source-map"."0.7.1";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "is-buffer-1.1.0" = self.by-version."is-buffer"."1.1.0";
      "lexical-scope-1.2.0" = self.by-version."lexical-scope"."1.2.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "through2-2.0.0" = self.by-version."through2"."2.0.0";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."insight"."^0.7.0" =
    self.by-version."insight"."0.7.0";
  by-version."insight"."0.7.0" = self.buildNodePackage {
    name = "insight-0.7.0";
    version = "0.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/insight/-/insight-0.7.0.tgz";
      name = "insight-0.7.0.tgz";
      sha1 = "061f9189835bd38a97a60c2b76ea0c6b30099ff6";
    };
    deps = {
      "async-1.5.0" = self.by-version."async"."1.5.0";
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "configstore-1.3.0" = self.by-version."configstore"."1.3.0";
      "inquirer-0.10.1" = self.by-version."inquirer"."0.10.1";
      "lodash.debounce-3.1.1" = self.by-version."lodash.debounce"."3.1.1";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "os-name-1.0.3" = self.by-version."os-name"."1.0.3";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "tough-cookie-2.2.1" = self.by-version."tough-cookie"."2.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."interpret"."^0.6.4" =
    self.by-version."interpret"."0.6.6";
  by-version."interpret"."0.6.6" = self.buildNodePackage {
    name = "interpret-0.6.6";
    version = "0.6.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/interpret/-/interpret-0.6.6.tgz";
      name = "interpret-0.6.6.tgz";
      sha1 = "fecd7a18e7ce5ca6abfb953e1f86213a49f1625b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."intersect"."~0.0.3" =
    self.by-version."intersect"."0.0.3";
  by-version."intersect"."0.0.3" = self.buildNodePackage {
    name = "intersect-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/intersect/-/intersect-0.0.3.tgz";
      name = "intersect-0.0.3.tgz";
      sha1 = "c1a4a5e5eac6ede4af7504cc07e0ada7bc9f4920";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ipaddr.js"."1.0.4" =
    self.by-version."ipaddr.js"."1.0.4";
  by-version."ipaddr.js"."1.0.4" = self.buildNodePackage {
    name = "ipaddr.js-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.0.4.tgz";
      name = "ipaddr.js-1.0.4.tgz";
      sha1 = "ef715deab1e923fc1fe8fe9ce7a561d9110e52e2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-absolute"."^0.1.7" =
    self.by-version."is-absolute"."0.1.7";
  by-version."is-absolute"."0.1.7" = self.buildNodePackage {
    name = "is-absolute-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-absolute/-/is-absolute-0.1.7.tgz";
      name = "is-absolute-0.1.7.tgz";
      sha1 = "847491119fccb5fb436217cc737f7faad50f603f";
    };
    deps = {
      "is-relative-0.1.3" = self.by-version."is-relative"."0.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-binary-path"."^1.0.0" =
    self.by-version."is-binary-path"."1.0.1";
  by-version."is-binary-path"."1.0.1" = self.buildNodePackage {
    name = "is-binary-path-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz";
      name = "is-binary-path-1.0.1.tgz";
      sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
    };
    deps = {
      "binary-extensions-1.4.0" = self.by-version."binary-extensions"."1.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-buffer"."^1.0.2" =
    self.by-version."is-buffer"."1.1.0";
  by-version."is-buffer"."1.1.0" = self.buildNodePackage {
    name = "is-buffer-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-buffer/-/is-buffer-1.1.0.tgz";
      name = "is-buffer-1.1.0.tgz";
      sha1 = "36f7850c0d077a71b041f3565664155f07035bd0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-buffer"."^1.1.0" =
    self.by-version."is-buffer"."1.1.0";
  by-spec."is-dotfile"."^1.0.0" =
    self.by-version."is-dotfile"."1.0.2";
  by-version."is-dotfile"."1.0.2" = self.buildNodePackage {
    name = "is-dotfile-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.2.tgz";
      name = "is-dotfile-1.0.2.tgz";
      sha1 = "2c132383f39199f8edc268ca01b9b007d205cc4d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-equal-shallow"."^0.1.1" =
    self.by-version."is-equal-shallow"."0.1.3";
  by-version."is-equal-shallow"."0.1.3" = self.buildNodePackage {
    name = "is-equal-shallow-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
      name = "is-equal-shallow-0.1.3.tgz";
      sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
    };
    deps = {
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-extendable"."^0.1.1" =
    self.by-version."is-extendable"."0.1.1";
  by-version."is-extendable"."0.1.1" = self.buildNodePackage {
    name = "is-extendable-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-extendable/-/is-extendable-0.1.1.tgz";
      name = "is-extendable-0.1.1.tgz";
      sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-extglob"."^1.0.0" =
    self.by-version."is-extglob"."1.0.0";
  by-version."is-extglob"."1.0.0" = self.buildNodePackage {
    name = "is-extglob-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz";
      name = "is-extglob-1.0.0.tgz";
      sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-fullwidth-code-point"."^1.0.0" =
    self.by-version."is-fullwidth-code-point"."1.0.0";
  by-version."is-fullwidth-code-point"."1.0.0" = self.buildNodePackage {
    name = "is-fullwidth-code-point-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
      name = "is-fullwidth-code-point-1.0.0.tgz";
      sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
    };
    deps = {
      "number-is-nan-1.0.0" = self.by-version."number-is-nan"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-glob"."^2.0.0" =
    self.by-version."is-glob"."2.0.1";
  by-version."is-glob"."2.0.1" = self.buildNodePackage {
    name = "is-glob-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz";
      name = "is-glob-2.0.1.tgz";
      sha1 = "d096f926a3ded5600f3fdfd91198cb0888c2d863";
    };
    deps = {
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-glob"."^2.0.1" =
    self.by-version."is-glob"."2.0.1";
  by-spec."is-my-json-valid"."^2.12.3" =
    self.by-version."is-my-json-valid"."2.12.3";
  by-version."is-my-json-valid"."2.12.3" = self.buildNodePackage {
    name = "is-my-json-valid-2.12.3";
    version = "2.12.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.12.3.tgz";
      name = "is-my-json-valid-2.12.3.tgz";
      sha1 = "5a39d1d76b2dbb83140bbd157b1d5ee4bdc85ad6";
    };
    deps = {
      "generate-function-2.0.0" = self.by-version."generate-function"."2.0.0";
      "generate-object-property-1.2.0" = self.by-version."generate-object-property"."1.2.0";
      "jsonpointer-2.0.0" = self.by-version."jsonpointer"."2.0.0";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-npm"."^1.0.0" =
    self.by-version."is-npm"."1.0.0";
  by-version."is-npm"."1.0.0" = self.buildNodePackage {
    name = "is-npm-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-npm/-/is-npm-1.0.0.tgz";
      name = "is-npm-1.0.0.tgz";
      sha1 = "f2fb63a65e4905b406c86072765a1a4dc793b9f4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^2.0.2" =
    self.by-version."is-number"."2.1.0";
  by-version."is-number"."2.1.0" = self.buildNodePackage {
    name = "is-number-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-number/-/is-number-2.1.0.tgz";
      name = "is-number-2.1.0.tgz";
      sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
    };
    deps = {
      "kind-of-3.0.2" = self.by-version."kind-of"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^2.1.0" =
    self.by-version."is-number"."2.1.0";
  by-spec."is-primitive"."^2.0.0" =
    self.by-version."is-primitive"."2.0.0";
  by-version."is-primitive"."2.0.0" = self.buildNodePackage {
    name = "is-primitive-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz";
      name = "is-primitive-2.0.0.tgz";
      sha1 = "207bab91638499c07b2adf240a41a87210034575";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-property"."^1.0.0" =
    self.by-version."is-property"."1.0.2";
  by-version."is-property"."1.0.2" = self.buildNodePackage {
    name = "is-property-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
      name = "is-property-1.0.2.tgz";
      sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-redirect"."^1.0.0" =
    self.by-version."is-redirect"."1.0.0";
  by-version."is-redirect"."1.0.0" = self.buildNodePackage {
    name = "is-redirect-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-redirect/-/is-redirect-1.0.0.tgz";
      name = "is-redirect-1.0.0.tgz";
      sha1 = "1d03dded53bd8db0f30c26e4f95d36fc7c87dc24";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-relative"."^0.1.0" =
    self.by-version."is-relative"."0.1.3";
  by-version."is-relative"."0.1.3" = self.buildNodePackage {
    name = "is-relative-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-relative/-/is-relative-0.1.3.tgz";
      name = "is-relative-0.1.3.tgz";
      sha1 = "905fee8ae86f45b3ec614bc3c15c869df0876e82";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-root"."^1.0.0" =
    self.by-version."is-root"."1.0.0";
  by-version."is-root"."1.0.0" = self.buildNodePackage {
    name = "is-root-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-root/-/is-root-1.0.0.tgz";
      name = "is-root-1.0.0.tgz";
      sha1 = "07b6c233bc394cd9d02ba15c966bd6660d6342d5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-stream"."^1.0.0" =
    self.by-version."is-stream"."1.0.1";
  by-version."is-stream"."1.0.1" = self.buildNodePackage {
    name = "is-stream-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-stream/-/is-stream-1.0.1.tgz";
      name = "is-stream-1.0.1.tgz";
      sha1 = "b44ce45b1f0c3df583f6b5debf84dcf9743ac8b5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-typedarray"."~1.0.0" =
    self.by-version."is-typedarray"."1.0.0";
  by-version."is-typedarray"."1.0.0" = self.buildNodePackage {
    name = "is-typedarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
      name = "is-typedarray-1.0.0.tgz";
      sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-version."isarray"."0.0.1" = self.buildNodePackage {
    name = "isarray-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
      name = "isarray-0.0.1.tgz";
      sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."^0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-spec."isarray"."~0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-spec."isobject"."^2.0.0" =
    self.by-version."isobject"."2.0.0";
  by-version."isobject"."2.0.0" = self.buildNodePackage {
    name = "isobject-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isobject/-/isobject-2.0.0.tgz";
      name = "isobject-2.0.0.tgz";
      sha1 = "208de872bd7378c2a92af9428a3f56eb91a122c4";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isstream"."~0.1.1" =
    self.by-version."isstream"."0.1.2";
  by-version."isstream"."0.1.2" = self.buildNodePackage {
    name = "isstream-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
      name = "isstream-0.1.2.tgz";
      sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isstream"."~0.1.2" =
    self.by-version."isstream"."0.1.2";
  by-spec."jodid25519".">=1.0.0 <2.0.0" =
    self.by-version."jodid25519"."1.0.2";
  by-version."jodid25519"."1.0.2" = self.buildNodePackage {
    name = "jodid25519-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jodid25519/-/jodid25519-1.0.2.tgz";
      name = "jodid25519-1.0.2.tgz";
      sha1 = "06d4912255093419477d425633606e0e90782967";
    };
    deps = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-yaml"."^3.1.0" =
    self.by-version."js-yaml"."3.4.6";
  by-version."js-yaml"."3.4.6" = self.buildNodePackage {
    name = "js-yaml-3.4.6";
    version = "3.4.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-yaml/-/js-yaml-3.4.6.tgz";
      name = "js-yaml-3.4.6.tgz";
      sha1 = "6be1b23f6249f53d293370fd4d1aaa63ce1b4eb0";
    };
    deps = {
      "argparse-1.0.3" = self.by-version."argparse"."1.0.3";
      "esprima-2.7.0" = self.by-version."esprima"."2.7.0";
      "inherit-2.2.2" = self.by-version."inherit"."2.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsbn".">=0.1.0 <0.2.0" =
    self.by-version."jsbn"."0.1.0";
  by-version."jsbn"."0.1.0" = self.buildNodePackage {
    name = "jsbn-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsbn/-/jsbn-0.1.0.tgz";
      name = "jsbn-0.1.0.tgz";
      sha1 = "650987da0dd74f4ebf5a11377a2aa2d273e97dfd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsbn"."~0.1.0" =
    self.by-version."jsbn"."0.1.0";
  by-spec."json-schema"."0.2.2" =
    self.by-version."json-schema"."0.2.2";
  by-version."json-schema"."0.2.2" = self.buildNodePackage {
    name = "json-schema-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-schema/-/json-schema-0.2.2.tgz";
      name = "json-schema-0.2.2.tgz";
      sha1 = "50354f19f603917c695f70b85afa77c3b0f23506";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-stable-stringify"."~0.0.0" =
    self.by-version."json-stable-stringify"."0.0.1";
  by-version."json-stable-stringify"."0.0.1" = self.buildNodePackage {
    name = "json-stable-stringify-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-stable-stringify/-/json-stable-stringify-0.0.1.tgz";
      name = "json-stable-stringify-0.0.1.tgz";
      sha1 = "611c23e814db375527df851193db59dd2af27f45";
    };
    deps = {
      "jsonify-0.0.0" = self.by-version."jsonify"."0.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-stringify-safe"."~5.0.0" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-version."json-stringify-safe"."5.0.1" = self.buildNodePackage {
    name = "json-stringify-safe-5.0.1";
    version = "5.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
      name = "json-stringify-safe-5.0.1.tgz";
      sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-stringify-safe"."~5.0.1" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-spec."json3"."^3.3.2" =
    self.by-version."json3"."3.3.2";
  by-version."json3"."3.3.2" = self.buildNodePackage {
    name = "json3-3.3.2";
    version = "3.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json3/-/json3-3.3.2.tgz";
      name = "json3-3.3.2.tgz";
      sha1 = "3c0434743df93e2f5c42aee7b19bcb483575f4e1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json5"."^0.4.0" =
    self.by-version."json5"."0.4.0";
  by-version."json5"."0.4.0" = self.buildNodePackage {
    name = "json5-0.4.0";
    version = "0.4.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/json5/-/json5-0.4.0.tgz";
      name = "json5-0.4.0.tgz";
      sha1 = "054352e4c4c80c86c0923877d449de176a732c8d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonify"."~0.0.0" =
    self.by-version."jsonify"."0.0.0";
  by-version."jsonify"."0.0.0" = self.buildNodePackage {
    name = "jsonify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonify/-/jsonify-0.0.0.tgz";
      name = "jsonify-0.0.0.tgz";
      sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonparse"."0.0.5" =
    self.by-version."jsonparse"."0.0.5";
  by-version."jsonparse"."0.0.5" = self.buildNodePackage {
    name = "jsonparse-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonparse/-/jsonparse-0.0.5.tgz";
      name = "jsonparse-0.0.5.tgz";
      sha1 = "330542ad3f0a654665b778f3eb2d9a9fa507ac64";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonparse"."^1.1.0" =
    self.by-version."jsonparse"."1.2.0";
  by-version."jsonparse"."1.2.0" = self.buildNodePackage {
    name = "jsonparse-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonparse/-/jsonparse-1.2.0.tgz";
      name = "jsonparse-1.2.0.tgz";
      sha1 = "5c0c5685107160e72fe7489bddea0b44c2bc67bd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonpointer"."2.0.0" =
    self.by-version."jsonpointer"."2.0.0";
  by-version."jsonpointer"."2.0.0" = self.buildNodePackage {
    name = "jsonpointer-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonpointer/-/jsonpointer-2.0.0.tgz";
      name = "jsonpointer-2.0.0.tgz";
      sha1 = "3af1dd20fe85463910d469a385e33017d2a030d9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsprim"."^1.2.2" =
    self.by-version."jsprim"."1.2.2";
  by-version."jsprim"."1.2.2" = self.buildNodePackage {
    name = "jsprim-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsprim/-/jsprim-1.2.2.tgz";
      name = "jsprim-1.2.2.tgz";
      sha1 = "f20c906ac92abd58e3b79ac8bc70a48832512da1";
    };
    deps = {
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
      "json-schema-0.2.2" = self.by-version."json-schema"."0.2.2";
      "verror-1.3.6" = self.by-version."verror"."1.3.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."junk"."^1.0.0" =
    self.by-version."junk"."1.0.2";
  by-version."junk"."1.0.2" = self.buildNodePackage {
    name = "junk-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/junk/-/junk-1.0.2.tgz";
      name = "junk-1.0.2.tgz";
      sha1 = "cc71db3c05d53b3238d0f1dec97a88267c10700e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."kind-of"."^2.0.0" =
    self.by-version."kind-of"."2.0.1";
  by-version."kind-of"."2.0.1" = self.buildNodePackage {
    name = "kind-of-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/kind-of/-/kind-of-2.0.1.tgz";
      name = "kind-of-2.0.1.tgz";
      sha1 = "018ec7a4ce7e3a86cb9141be519d24c8faa981b5";
    };
    deps = {
      "is-buffer-1.1.0" = self.by-version."is-buffer"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."kind-of"."^2.0.1" =
    self.by-version."kind-of"."2.0.1";
  by-spec."kind-of"."^3.0.2" =
    self.by-version."kind-of"."3.0.2";
  by-version."kind-of"."3.0.2" = self.buildNodePackage {
    name = "kind-of-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/kind-of/-/kind-of-3.0.2.tgz";
      name = "kind-of-3.0.2.tgz";
      sha1 = "187db427046e7e90945692e6768668bd6900dea0";
    };
    deps = {
      "is-buffer-1.1.0" = self.by-version."is-buffer"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."labeled-stream-splicer"."^1.0.0" =
    self.by-version."labeled-stream-splicer"."1.0.2";
  by-version."labeled-stream-splicer"."1.0.2" = self.buildNodePackage {
    name = "labeled-stream-splicer-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/labeled-stream-splicer/-/labeled-stream-splicer-1.0.2.tgz";
      name = "labeled-stream-splicer-1.0.2.tgz";
      sha1 = "4615331537784981e8fd264e1f3a434c4e0ddd65";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "stream-splicer-1.3.2" = self.by-version."stream-splicer"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."labeled-stream-splicer"."^1.0.2" =
    self.by-version."labeled-stream-splicer"."1.0.2";
  by-spec."labeled-stream-splicer"."^2.0.0" =
    self.by-version."labeled-stream-splicer"."2.0.0";
  by-version."labeled-stream-splicer"."2.0.0" = self.buildNodePackage {
    name = "labeled-stream-splicer-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/labeled-stream-splicer/-/labeled-stream-splicer-2.0.0.tgz";
      name = "labeled-stream-splicer-2.0.0.tgz";
      sha1 = "a52e1d138024c00b86b1c0c91f677918b8ae0a59";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "stream-splicer-2.0.0" = self.by-version."stream-splicer"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."latest-version"."^1.0.0" =
    self.by-version."latest-version"."1.0.1";
  by-version."latest-version"."1.0.1" = self.buildNodePackage {
    name = "latest-version-1.0.1";
    version = "1.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/latest-version/-/latest-version-1.0.1.tgz";
      name = "latest-version-1.0.1.tgz";
      sha1 = "72cfc46e3e8d1be651e1ebb54ea9f6ea96f374bb";
    };
    deps = {
      "package-json-1.2.0" = self.by-version."package-json"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lazy-cache"."^0.2.3" =
    self.by-version."lazy-cache"."0.2.4";
  by-version."lazy-cache"."0.2.4" = self.buildNodePackage {
    name = "lazy-cache-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lazy-cache/-/lazy-cache-0.2.4.tgz";
      name = "lazy-cache-0.2.4.tgz";
      sha1 = "036a699535217acda4fb2e3fda3fc0916f8db786";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lazy-cache"."^0.2.4" =
    self.by-version."lazy-cache"."0.2.4";
  by-spec."lexical-scope"."^1.2.0" =
    self.by-version."lexical-scope"."1.2.0";
  by-version."lexical-scope"."1.2.0" = self.buildNodePackage {
    name = "lexical-scope-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lexical-scope/-/lexical-scope-1.2.0.tgz";
      name = "lexical-scope-1.2.0.tgz";
      sha1 = "fcea5edc704a4b3a8796cdca419c3a0afaf22df4";
    };
    deps = {
      "astw-2.0.0" = self.by-version."astw"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."^0.2.11" =
    self.by-version."loader-utils"."0.2.12";
  by-version."loader-utils"."0.2.12" = self.buildNodePackage {
    name = "loader-utils-0.2.12";
    version = "0.2.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/loader-utils/-/loader-utils-0.2.12.tgz";
      name = "loader-utils-0.2.12.tgz";
      sha1 = "faa2a501563a3c2c9dda57aa8c39d8be628de7a2";
    };
    deps = {
      "big.js-3.1.3" = self.by-version."big.js"."3.1.3";
      "json5-0.4.0" = self.by-version."json5"."0.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."^0.2.6" =
    self.by-version."loader-utils"."0.2.12";
  by-spec."lockfile"."^1.0.0" =
    self.by-version."lockfile"."1.0.1";
  by-version."lockfile"."1.0.1" = self.buildNodePackage {
    name = "lockfile-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lockfile/-/lockfile-1.0.1.tgz";
      name = "lockfile-1.0.1.tgz";
      sha1 = "9d353ecfe3f54d150bb57f89d51746935a39c4f5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash".">= 3.2.0 < 4.0.0" =
    self.by-version."lodash"."3.10.1";
  by-version."lodash"."3.10.1" = self.buildNodePackage {
    name = "lodash-3.10.1";
    version = "3.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-3.10.1.tgz";
      name = "lodash-3.10.1.tgz";
      sha1 = "5bf45e8e49ba4189e17d482789dfd15bd140b7b6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^3.3.1" =
    self.by-version."lodash"."3.10.1";
  by-spec."lodash._basetostring"."^3.0.0" =
    self.by-version."lodash._basetostring"."3.0.1";
  by-version."lodash._basetostring"."3.0.1" = self.buildNodePackage {
    name = "lodash._basetostring-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._basetostring/-/lodash._basetostring-3.0.1.tgz";
      name = "lodash._basetostring-3.0.1.tgz";
      sha1 = "d1861d877f824a52f669832dcaf3ee15566a07d5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._createpadding"."^3.0.0" =
    self.by-version."lodash._createpadding"."3.6.1";
  by-version."lodash._createpadding"."3.6.1" = self.buildNodePackage {
    name = "lodash._createpadding-3.6.1";
    version = "3.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._createpadding/-/lodash._createpadding-3.6.1.tgz";
      name = "lodash._createpadding-3.6.1.tgz";
      sha1 = "4907b438595adc54ee8935527a6c424c02c81a87";
    };
    deps = {
      "lodash.repeat-3.0.1" = self.by-version."lodash.repeat"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._getnative"."^3.0.0" =
    self.by-version."lodash._getnative"."3.9.1";
  by-version."lodash._getnative"."3.9.1" = self.buildNodePackage {
    name = "lodash._getnative-3.9.1";
    version = "3.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._getnative/-/lodash._getnative-3.9.1.tgz";
      name = "lodash._getnative-3.9.1.tgz";
      sha1 = "570bc7dede46d61cdcde687d65d3eecbaa3aaff5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.debounce"."^3.0.1" =
    self.by-version."lodash.debounce"."3.1.1";
  by-version."lodash.debounce"."3.1.1" = self.buildNodePackage {
    name = "lodash.debounce-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.debounce/-/lodash.debounce-3.1.1.tgz";
      name = "lodash.debounce-3.1.1.tgz";
      sha1 = "812211c378a94cc29d5aa4e3346cf0bfce3a7df5";
    };
    deps = {
      "lodash._getnative-3.9.1" = self.by-version."lodash._getnative"."3.9.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.memoize"."~3.0.3" =
    self.by-version."lodash.memoize"."3.0.4";
  by-version."lodash.memoize"."3.0.4" = self.buildNodePackage {
    name = "lodash.memoize-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.memoize/-/lodash.memoize-3.0.4.tgz";
      name = "lodash.memoize-3.0.4.tgz";
      sha1 = "2dcbd2c287cbc0a55cc42328bd0c736150d53e3f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.pad"."^3.0.0" =
    self.by-version."lodash.pad"."3.1.1";
  by-version."lodash.pad"."3.1.1" = self.buildNodePackage {
    name = "lodash.pad-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.pad/-/lodash.pad-3.1.1.tgz";
      name = "lodash.pad-3.1.1.tgz";
      sha1 = "2e078ebc33b331d2ba34bf8732af129fd5c04624";
    };
    deps = {
      "lodash._basetostring-3.0.1" = self.by-version."lodash._basetostring"."3.0.1";
      "lodash._createpadding-3.6.1" = self.by-version."lodash._createpadding"."3.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.padleft"."^3.0.0" =
    self.by-version."lodash.padleft"."3.1.1";
  by-version."lodash.padleft"."3.1.1" = self.buildNodePackage {
    name = "lodash.padleft-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.padleft/-/lodash.padleft-3.1.1.tgz";
      name = "lodash.padleft-3.1.1.tgz";
      sha1 = "150151f1e0245edba15d50af2d71f1d5cff46530";
    };
    deps = {
      "lodash._basetostring-3.0.1" = self.by-version."lodash._basetostring"."3.0.1";
      "lodash._createpadding-3.6.1" = self.by-version."lodash._createpadding"."3.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.padright"."^3.0.0" =
    self.by-version."lodash.padright"."3.1.1";
  by-version."lodash.padright"."3.1.1" = self.buildNodePackage {
    name = "lodash.padright-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.padright/-/lodash.padright-3.1.1.tgz";
      name = "lodash.padright-3.1.1.tgz";
      sha1 = "79f7770baaa39738c040aeb5465e8d88f2aacec0";
    };
    deps = {
      "lodash._basetostring-3.0.1" = self.by-version."lodash._basetostring"."3.0.1";
      "lodash._createpadding-3.6.1" = self.by-version."lodash._createpadding"."3.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.repeat"."^3.0.0" =
    self.by-version."lodash.repeat"."3.0.1";
  by-version."lodash.repeat"."3.0.1" = self.buildNodePackage {
    name = "lodash.repeat-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.repeat/-/lodash.repeat-3.0.1.tgz";
      name = "lodash.repeat-3.0.1.tgz";
      sha1 = "f4b98dc7ef67256ce61e7874e1865edb208e0edf";
    };
    deps = {
      "lodash._basetostring-3.0.1" = self.by-version."lodash._basetostring"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."longest"."^1.0.1" =
    self.by-version."longest"."1.0.1";
  by-version."longest"."1.0.1" = self.buildNodePackage {
    name = "longest-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/longest/-/longest-1.0.1.tgz";
      name = "longest-1.0.1.tgz";
      sha1 = "30a0b2da38f73770e8294a0d22e6625ed77d0097";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lowercase-keys"."^1.0.0" =
    self.by-version."lowercase-keys"."1.0.0";
  by-version."lowercase-keys"."1.0.0" = self.buildNodePackage {
    name = "lowercase-keys-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lowercase-keys/-/lowercase-keys-1.0.0.tgz";
      name = "lowercase-keys-1.0.0.tgz";
      sha1 = "4e3366b39e7f5457e35f1324bdf6f88d0bfc7306";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.7.3";
  by-version."lru-cache"."2.7.3" = self.buildNodePackage {
    name = "lru-cache-2.7.3";
    version = "2.7.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.7.3.tgz";
      name = "lru-cache-2.7.3.tgz";
      sha1 = "6d4524e8b955f95d4f5b58851ce21dd72fb4e952";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."^2.3.0" =
    self.by-version."lru-cache"."2.7.3";
  by-spec."lru-cache"."^2.5.0" =
    self.by-version."lru-cache"."2.7.3";
  by-spec."md5-hex"."^1.0.2" =
    self.by-version."md5-hex"."1.1.0";
  by-version."md5-hex"."1.1.0" = self.buildNodePackage {
    name = "md5-hex-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/md5-hex/-/md5-hex-1.1.0.tgz";
      name = "md5-hex-1.1.0.tgz";
      sha1 = "d107074c4ee81cbca7f2b61150669dce38058080";
    };
    deps = {
      "md5-o-matic-0.1.1" = self.by-version."md5-o-matic"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."md5-o-matic"."^0.1.1" =
    self.by-version."md5-o-matic"."0.1.1";
  by-version."md5-o-matic"."0.1.1" = self.buildNodePackage {
    name = "md5-o-matic-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/md5-o-matic/-/md5-o-matic-0.1.1.tgz";
      name = "md5-o-matic-0.1.1.tgz";
      sha1 = "822bccd65e117c514fab176b25945d54100a03c3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."media-typer"."0.3.0" =
    self.by-version."media-typer"."0.3.0";
  by-version."media-typer"."0.3.0" = self.buildNodePackage {
    name = "media-typer-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
      name = "media-typer-0.3.0.tgz";
      sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."memory-fs"."^0.2.0" =
    self.by-version."memory-fs"."0.2.0";
  by-version."memory-fs"."0.2.0" = self.buildNodePackage {
    name = "memory-fs-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/memory-fs/-/memory-fs-0.2.0.tgz";
      name = "memory-fs-0.2.0.tgz";
      sha1 = "f2bb25368bc121e391c2520de92969caee0a0290";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."memory-fs"."~0.3.0" =
    self.by-version."memory-fs"."0.3.0";
  by-version."memory-fs"."0.3.0" = self.buildNodePackage {
    name = "memory-fs-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/memory-fs/-/memory-fs-0.3.0.tgz";
      name = "memory-fs-0.3.0.tgz";
      sha1 = "7bcc6b629e3a43e871d7e29aca6ae8a7f15cbb20";
    };
    deps = {
      "errno-0.1.4" = self.by-version."errno"."0.1.4";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."merge"."^1.2.0" =
    self.by-version."merge"."1.2.0";
  by-version."merge"."1.2.0" = self.buildNodePackage {
    name = "merge-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/merge/-/merge-1.2.0.tgz";
      name = "merge-1.2.0.tgz";
      sha1 = "7531e39d4949c281a66b8c5a6e0265e8b05894da";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."merge-descriptors"."1.0.0" =
    self.by-version."merge-descriptors"."1.0.0";
  by-version."merge-descriptors"."1.0.0" = self.buildNodePackage {
    name = "merge-descriptors-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.0.tgz";
      name = "merge-descriptors-1.0.0.tgz";
      sha1 = "2169cf7538e1b0cc87fb88e1502d8474bbf79864";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."methods"."~1.1.1" =
    self.by-version."methods"."1.1.1";
  by-version."methods"."1.1.1" = self.buildNodePackage {
    name = "methods-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/methods/-/methods-1.1.1.tgz";
      name = "methods-1.1.1.tgz";
      sha1 = "17ea6366066d00c58e375b8ec7dfd0453c89822a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."micromatch"."^2.1.5" =
    self.by-version."micromatch"."2.3.5";
  by-version."micromatch"."2.3.5" = self.buildNodePackage {
    name = "micromatch-2.3.5";
    version = "2.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/micromatch/-/micromatch-2.3.5.tgz";
      name = "micromatch-2.3.5.tgz";
      sha1 = "d8dfed89e28419d073489be55c33f0b05c273217";
    };
    deps = {
      "arr-diff-2.0.0" = self.by-version."arr-diff"."2.0.0";
      "array-unique-0.2.1" = self.by-version."array-unique"."0.2.1";
      "braces-1.8.2" = self.by-version."braces"."1.8.2";
      "expand-brackets-0.1.4" = self.by-version."expand-brackets"."0.1.4";
      "extglob-0.3.1" = self.by-version."extglob"."0.3.1";
      "filename-regex-2.0.0" = self.by-version."filename-regex"."2.0.0";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "kind-of-3.0.2" = self.by-version."kind-of"."3.0.2";
      "lazy-cache-0.2.4" = self.by-version."lazy-cache"."0.2.4";
      "normalize-path-2.0.1" = self.by-version."normalize-path"."2.0.1";
      "object.omit-2.0.0" = self.by-version."object.omit"."2.0.0";
      "parse-glob-3.0.4" = self.by-version."parse-glob"."3.0.4";
      "regex-cache-0.4.2" = self.by-version."regex-cache"."0.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."miller-rabin"."^4.0.0" =
    self.by-version."miller-rabin"."4.0.0";
  by-version."miller-rabin"."4.0.0" = self.buildNodePackage {
    name = "miller-rabin-4.0.0";
    version = "4.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/miller-rabin/-/miller-rabin-4.0.0.tgz";
      name = "miller-rabin-4.0.0.tgz";
      sha1 = "4a62fb1d42933c05583982f4c716f6fb9e6c6d3d";
    };
    deps = {
      "bn.js-4.5.0" = self.by-version."bn.js"."4.5.0";
      "brorand-1.0.5" = self.by-version."brorand"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."1.3.4" =
    self.by-version."mime"."1.3.4";
  by-version."mime"."1.3.4" = self.buildNodePackage {
    name = "mime-1.3.4";
    version = "1.3.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
      name = "mime-1.3.4.tgz";
      sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."^1.2.11" =
    self.by-version."mime"."1.3.4";
  by-spec."mime"."^1.3.4" =
    self.by-version."mime"."1.3.4";
  by-spec."mime-db".">= 1.19.0 < 2" =
    self.by-version."mime-db"."1.20.0";
  by-version."mime-db"."1.20.0" = self.buildNodePackage {
    name = "mime-db-1.20.0";
    version = "1.20.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.20.0.tgz";
      name = "mime-db-1.20.0.tgz";
      sha1 = "496f90fd01fe0e031c8823ec3aa9450ffda18ed8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-db"."~1.12.0" =
    self.by-version."mime-db"."1.12.0";
  by-version."mime-db"."1.12.0" = self.buildNodePackage {
    name = "mime-db-1.12.0";
    version = "1.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.12.0.tgz";
      name = "mime-db-1.12.0.tgz";
      sha1 = "3d0c63180f458eb10d325aaa37d7c58ae312e9d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-db"."~1.20.0" =
    self.by-version."mime-db"."1.20.0";
  by-spec."mime-types"."^2.1.3" =
    self.by-version."mime-types"."2.1.8";
  by-version."mime-types"."2.1.8" = self.buildNodePackage {
    name = "mime-types-2.1.8";
    version = "2.1.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.1.8.tgz";
      name = "mime-types-2.1.8.tgz";
      sha1 = "faf57823de04bc7cbff4ee82c6b63946e812ae72";
    };
    deps = {
      "mime-db-1.20.0" = self.by-version."mime-db"."1.20.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.0.1" =
    self.by-version."mime-types"."2.0.14";
  by-version."mime-types"."2.0.14" = self.buildNodePackage {
    name = "mime-types-2.0.14";
    version = "2.0.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.0.14.tgz";
      name = "mime-types-2.0.14.tgz";
      sha1 = "310e159db23e077f8bb22b748dabfa4957140aa6";
    };
    deps = {
      "mime-db-1.12.0" = self.by-version."mime-db"."1.12.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.0.3" =
    self.by-version."mime-types"."2.0.14";
  by-spec."mime-types"."~2.1.4" =
    self.by-version."mime-types"."2.1.8";
  by-spec."mime-types"."~2.1.6" =
    self.by-version."mime-types"."2.1.8";
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.8";
  by-spec."mime-types"."~2.1.8" =
    self.by-version."mime-types"."2.1.8";
  by-spec."minimalistic-assert"."^1.0.0" =
    self.by-version."minimalistic-assert"."1.0.0";
  by-version."minimalistic-assert"."1.0.0" = self.buildNodePackage {
    name = "minimalistic-assert-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimalistic-assert/-/minimalistic-assert-1.0.0.tgz";
      name = "minimalistic-assert-1.0.0.tgz";
      sha1 = "702be2dda6b37f4836bcb3f5db56641b64a1d3d3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."2 || 3" =
    self.by-version."minimatch"."3.0.0";
  by-version."minimatch"."3.0.0" = self.buildNodePackage {
    name = "minimatch-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-3.0.0.tgz";
      name = "minimatch-3.0.0.tgz";
      sha1 = "5236157a51e4f004c177fb3c527ff7dd78f0ef83";
    };
    deps = {
      "brace-expansion-1.1.2" = self.by-version."brace-expansion"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^1.0.0" =
    self.by-version."minimatch"."1.0.0";
  by-version."minimatch"."1.0.0" = self.buildNodePackage {
    name = "minimatch-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-1.0.0.tgz";
      name = "minimatch-1.0.0.tgz";
      sha1 = "e0dd2120b49e1b724ce8d714c520822a9438576d";
    };
    deps = {
      "lru-cache-2.7.3" = self.by-version."lru-cache"."2.7.3";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^2.0.1" =
    self.by-version."minimatch"."2.0.10";
  by-version."minimatch"."2.0.10" = self.buildNodePackage {
    name = "minimatch-2.0.10";
    version = "2.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-2.0.10.tgz";
      name = "minimatch-2.0.10.tgz";
      sha1 = "8d087c39c6b38c001b97fca7ce6d0e1e80afbac7";
    };
    deps = {
      "brace-expansion-1.1.2" = self.by-version."brace-expansion"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^2.0.10" =
    self.by-version."minimatch"."2.0.10";
  by-spec."minimatch"."^3.0.0" =
    self.by-version."minimatch"."3.0.0";
  by-spec."minimist"."0.0.8" =
    self.by-version."minimist"."0.0.8";
  by-version."minimist"."0.0.8" = self.buildNodePackage {
    name = "minimist-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
      name = "minimist-0.0.8.tgz";
      sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^1.1.0" =
    self.by-version."minimist"."1.2.0";
  by-version."minimist"."1.2.0" = self.buildNodePackage {
    name = "minimist-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
      name = "minimist-1.2.0.tgz";
      sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^1.2.0" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."~0.0.1" =
    self.by-version."minimist"."0.0.10";
  by-version."minimist"."0.0.10" = self.buildNodePackage {
    name = "minimist-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.10.tgz";
      name = "minimist-0.0.10.tgz";
      sha1 = "de3f98543dbf96082be48ad1a0c7cda836301dcf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.5.0" =
    self.by-version."mkdirp"."0.5.0";
  by-version."mkdirp"."0.5.0" = self.buildNodePackage {
    name = "mkdirp-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.0.tgz";
      name = "mkdirp-0.5.0.tgz";
      sha1 = "1d73076a6df986cd9344e15e71fcc05a4c9abf12";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp".">=0.5 0" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = self.buildNodePackage {
    name = "mkdirp-0.5.1";
    version = "0.5.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
      name = "mkdirp-0.5.1.tgz";
      sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."^0.3.5" =
    self.by-version."mkdirp"."0.3.5";
  by-version."mkdirp"."0.3.5" = self.buildNodePackage {
    name = "mkdirp-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
      name = "mkdirp-0.3.5.tgz";
      sha1 = "de3e5f8961c88c787ee1368df849ac4413eca8d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."^0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."^0.5.1" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."~0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkpath"."^0.1.0" =
    self.by-version."mkpath"."0.1.0";
  by-version."mkpath"."0.1.0" = self.buildNodePackage {
    name = "mkpath-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkpath/-/mkpath-0.1.0.tgz";
      name = "mkpath-0.1.0.tgz";
      sha1 = "7554a6f8d871834cc97b5462b122c4c124d6de91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."module-deps"."^3.7.11" =
    self.by-version."module-deps"."3.9.1";
  by-version."module-deps"."3.9.1" = self.buildNodePackage {
    name = "module-deps-3.9.1";
    version = "3.9.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/module-deps/-/module-deps-3.9.1.tgz";
      name = "module-deps-3.9.1.tgz";
      sha1 = "ea75caf9199090d25b0d5512b5acacb96e7f87f3";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "browser-resolve-1.11.0" = self.by-version."browser-resolve"."1.11.0";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "detective-4.3.1" = self.by-version."detective"."4.3.1";
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
      "stream-combiner2-1.0.2" = self.by-version."stream-combiner2"."1.0.2";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."module-deps"."^4.0.2" =
    self.by-version."module-deps"."4.0.2";
  by-version."module-deps"."4.0.2" = self.buildNodePackage {
    name = "module-deps-4.0.2";
    version = "4.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/module-deps/-/module-deps-4.0.2.tgz";
      name = "module-deps-4.0.2.tgz";
      sha1 = "962e6438b8b2ace391ad75b74078b9ce436acc20";
    };
    deps = {
      "JSONStream-1.0.7" = self.by-version."JSONStream"."1.0.7";
      "browser-resolve-1.11.0" = self.by-version."browser-resolve"."1.11.0";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "detective-4.3.1" = self.by-version."detective"."4.3.1";
      "duplexer2-0.1.4" = self.by-version."duplexer2"."0.1.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
      "stream-combiner2-1.1.1" = self.by-version."stream-combiner2"."1.1.1";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "through2-2.0.0" = self.by-version."through2"."2.0.0";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mout".">=0.9.0 <1.0.0" =
    self.by-version."mout"."0.11.1";
  by-version."mout"."0.11.1" = self.buildNodePackage {
    name = "mout-0.11.1";
    version = "0.11.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mout/-/mout-0.11.1.tgz";
      name = "mout-0.11.1.tgz";
      sha1 = "ba3611df5f0e5b1ffbfd01166b8f02d1f5fa2b99";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mout"."^0.11.0" =
    self.by-version."mout"."0.11.1";
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
      name = "ms-0.7.1.tgz";
      sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mute-stream"."0.0.5" =
    self.by-version."mute-stream"."0.0.5";
  by-version."mute-stream"."0.0.5" = self.buildNodePackage {
    name = "mute-stream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mute-stream/-/mute-stream-0.0.5.tgz";
      name = "mute-stream-0.0.5.tgz";
      sha1 = "8fbfabb0a98a253d3184331f9e8deb7372fac6c0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mute-stream"."~0.0.4" =
    self.by-version."mute-stream"."0.0.5";
  by-spec."nan"."^2.0.2" =
    self.by-version."nan"."2.1.0";
  by-version."nan"."2.1.0" = self.buildNodePackage {
    name = "nan-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-2.1.0.tgz";
      name = "nan-2.1.0.tgz";
      sha1 = "020a7ccedc63fdee85f85967d5607849e74abbe8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."negotiator"."0.5.3" =
    self.by-version."negotiator"."0.5.3";
  by-version."negotiator"."0.5.3" = self.buildNodePackage {
    name = "negotiator-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/negotiator/-/negotiator-0.5.3.tgz";
      name = "negotiator-0.5.3.tgz";
      sha1 = "269d5c476810ec92edbe7b6c2f28316384f9a7e8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."negotiator"."0.6.0" =
    self.by-version."negotiator"."0.6.0";
  by-version."negotiator"."0.6.0" = self.buildNodePackage {
    name = "negotiator-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/negotiator/-/negotiator-0.6.0.tgz";
      name = "negotiator-0.6.0.tgz";
      sha1 = "33593a5a2b0ce30c985840c6f56b6fb1ea9e3a55";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nested-error-stacks"."^1.0.0" =
    self.by-version."nested-error-stacks"."1.0.2";
  by-version."nested-error-stacks"."1.0.2" = self.buildNodePackage {
    name = "nested-error-stacks-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nested-error-stacks/-/nested-error-stacks-1.0.2.tgz";
      name = "nested-error-stacks-1.0.2.tgz";
      sha1 = "19f619591519f096769a5ba9a86e6eeec823c3cf";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-libs-browser".">= 0.4.0 <=0.6.0" =
    self.by-version."node-libs-browser"."0.5.3";
  by-version."node-libs-browser"."0.5.3" = self.buildNodePackage {
    name = "node-libs-browser-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-libs-browser/-/node-libs-browser-0.5.3.tgz";
      name = "node-libs-browser-0.5.3.tgz";
      sha1 = "55efa888ec907acdb8cffc4e7a51712780e13b6a";
    };
    deps = {
      "assert-1.3.0" = self.by-version."assert"."1.3.0";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-3.5.4" = self.by-version."buffer"."3.5.4";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-0.0.1" = self.by-version."constants-browserify"."0.0.1";
      "crypto-browserify-3.2.8" = self.by-version."crypto-browserify"."3.2.8";
      "domain-browser-1.1.4" = self.by-version."domain-browser"."1.1.4";
      "events-1.1.0" = self.by-version."events"."1.1.0";
      "http-browserify-1.7.0" = self.by-version."http-browserify"."1.7.0";
      "https-browserify-0.0.0" = self.by-version."https-browserify"."0.0.0";
      "os-browserify-0.1.2" = self.by-version."os-browserify"."0.1.2";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "stream-browserify-1.0.0" = self.by-version."stream-browserify"."1.0.0";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "timers-browserify-1.4.1" = self.by-version."timers-browserify"."1.4.1";
      "tty-browserify-0.0.0" = self.by-version."tty-browserify"."0.0.0";
      "url-0.10.3" = self.by-version."url"."0.10.3";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "vm-browserify-0.0.4" = self.by-version."vm-browserify"."0.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-pre-gyp"."^0.6.15" =
    self.by-version."node-pre-gyp"."0.6.17";
  by-version."node-pre-gyp"."0.6.17" = self.buildNodePackage {
    name = "node-pre-gyp-0.6.17";
    version = "0.6.17";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-pre-gyp/-/node-pre-gyp-0.6.17.tgz";
      name = "node-pre-gyp-0.6.17.tgz";
      sha1 = "135d7cd0af12eeb9d3e724ac89c61932a120887a";
    };
    deps = {
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "npmlog-2.0.0" = self.by-version."npmlog"."2.0.0";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "semver-5.1.0" = self.by-version."semver"."5.1.0";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "tar-pack-3.1.1" = self.by-version."tar-pack"."3.1.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rc-1.1.5" = self.by-version."rc"."1.1.5";
      "rimraf-2.4.4" = self.by-version."rimraf"."2.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-uuid"."^1.4.1" =
    self.by-version."node-uuid"."1.4.7";
  by-version."node-uuid"."1.4.7" = self.buildNodePackage {
    name = "node-uuid-1.4.7";
    version = "1.4.7";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-uuid/-/node-uuid-1.4.7.tgz";
      name = "node-uuid-1.4.7.tgz";
      sha1 = "6da5a17668c4b3dd59623bda11cf7fa4c1f60a6f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-uuid"."~1.4.0" =
    self.by-version."node-uuid"."1.4.7";
  by-spec."node-uuid"."~1.4.7" =
    self.by-version."node-uuid"."1.4.7";
  by-spec."nopt"."^3.0.1" =
    self.by-version."nopt"."3.0.6";
  by-version."nopt"."3.0.6" = self.buildNodePackage {
    name = "nopt-3.0.6";
    version = "3.0.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-3.0.6.tgz";
      name = "nopt-3.0.6.tgz";
      sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."~1.0.10" =
    self.by-version."nopt"."1.0.10";
  by-version."nopt"."1.0.10" = self.buildNodePackage {
    name = "nopt-1.0.10";
    version = "1.0.10";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-1.0.10.tgz";
      name = "nopt-1.0.10.tgz";
      sha1 = "6ddd21bd2a31417b92727dd585f8a6f37608ebee";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."~3.0.1" =
    self.by-version."nopt"."3.0.6";
  by-spec."normalize-path"."^2.0.0" =
    self.by-version."normalize-path"."2.0.1";
  by-version."normalize-path"."2.0.1" = self.buildNodePackage {
    name = "normalize-path-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/normalize-path/-/normalize-path-2.0.1.tgz";
      name = "normalize-path-2.0.1.tgz";
      sha1 = "47886ac1662760d4261b7d979d241709d3ce3f7a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmlog"."~2.0.0" =
    self.by-version."npmlog"."2.0.0";
  by-version."npmlog"."2.0.0" = self.buildNodePackage {
    name = "npmlog-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/npmlog/-/npmlog-2.0.0.tgz";
      name = "npmlog-2.0.0.tgz";
      sha1 = "4076c200a3dda51133e6f3cf052130105f78bbdf";
    };
    deps = {
      "ansi-0.3.0" = self.by-version."ansi"."0.3.0";
      "are-we-there-yet-1.0.5" = self.by-version."are-we-there-yet"."1.0.5";
      "gauge-1.2.2" = self.by-version."gauge"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."number-is-nan"."^1.0.0" =
    self.by-version."number-is-nan"."1.0.0";
  by-version."number-is-nan"."1.0.0" = self.buildNodePackage {
    name = "number-is-nan-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.0.tgz";
      name = "number-is-nan-1.0.0.tgz";
      sha1 = "c020f529c5282adfdd233d91d4b181c3d686dc4b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.6.0" =
    self.by-version."oauth-sign"."0.6.0";
  by-version."oauth-sign"."0.6.0" = self.buildNodePackage {
    name = "oauth-sign-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.6.0.tgz";
      name = "oauth-sign-0.6.0.tgz";
      sha1 = "7dbeae44f6ca454e1f168451d630746735813ce3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.8.0" =
    self.by-version."oauth-sign"."0.8.0";
  by-version."oauth-sign"."0.8.0" = self.buildNodePackage {
    name = "oauth-sign-0.8.0";
    version = "0.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.0.tgz";
      name = "oauth-sign-0.8.0.tgz";
      sha1 = "938fdc875765ba527137d8aec9d178e24debc553";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^2.0.0" =
    self.by-version."object-assign"."2.1.1";
  by-version."object-assign"."2.1.1" = self.buildNodePackage {
    name = "object-assign-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-2.1.1.tgz";
      name = "object-assign-2.1.1.tgz";
      sha1 = "43c36e5d569ff8e4816c4efa8be02d26967c18aa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^3.0.0" =
    self.by-version."object-assign"."3.0.0";
  by-version."object-assign"."3.0.0" = self.buildNodePackage {
    name = "object-assign-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-3.0.0.tgz";
      name = "object-assign-3.0.0.tgz";
      sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^4.0.1" =
    self.by-version."object-assign"."4.0.1";
  by-version."object-assign"."4.0.1" = self.buildNodePackage {
    name = "object-assign-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-4.0.1.tgz";
      name = "object-assign-4.0.1.tgz";
      sha1 = "99504456c3598b5cad4fc59c26e8a9bb107fe0bd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-keys"."^1.0.4" =
    self.by-version."object-keys"."1.0.9";
  by-version."object-keys"."1.0.9" = self.buildNodePackage {
    name = "object-keys-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-keys/-/object-keys-1.0.9.tgz";
      name = "object-keys-1.0.9.tgz";
      sha1 = "cabb1202d9a7af29b50edface8094bb46da5ea21";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object.omit"."^2.0.0" =
    self.by-version."object.omit"."2.0.0";
  by-version."object.omit"."2.0.0" = self.buildNodePackage {
    name = "object.omit-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object.omit/-/object.omit-2.0.0.tgz";
      name = "object.omit-2.0.0.tgz";
      sha1 = "868597333d54e60662940bb458605dd6ae12fe94";
    };
    deps = {
      "for-own-0.1.3" = self.by-version."for-own"."0.1.3";
      "is-extendable-0.1.1" = self.by-version."is-extendable"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."on-finished"."~2.3.0" =
    self.by-version."on-finished"."2.3.0";
  by-version."on-finished"."2.3.0" = self.buildNodePackage {
    name = "on-finished-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
      name = "on-finished-2.3.0.tgz";
      sha1 = "20f1336481b083cd75337992a16971aa2d906947";
    };
    deps = {
      "ee-first-1.1.1" = self.by-version."ee-first"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."on-headers"."~1.0.1" =
    self.by-version."on-headers"."1.0.1";
  by-version."on-headers"."1.0.1" = self.buildNodePackage {
    name = "on-headers-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/on-headers/-/on-headers-1.0.1.tgz";
      name = "on-headers-1.0.1.tgz";
      sha1 = "928f5d0f470d49342651ea6794b0857c100693f7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.3.3";
  by-version."once"."1.3.3" = self.buildNodePackage {
    name = "once-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.3.3.tgz";
      name = "once-1.3.3.tgz";
      sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
    };
    deps = {
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."^1.3.1" =
    self.by-version."once"."1.3.3";
  by-spec."once"."~1.1.1" =
    self.by-version."once"."1.1.1";
  by-version."once"."1.1.1" = self.buildNodePackage {
    name = "once-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.1.1.tgz";
      name = "once-1.1.1.tgz";
      sha1 = "9db574933ccb08c3a7614d154032c09ea6f339e7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."~1.3.0" =
    self.by-version."once"."1.3.3";
  by-spec."onetime"."^1.0.0" =
    self.by-version."onetime"."1.0.0";
  by-version."onetime"."1.0.0" = self.buildNodePackage {
    name = "onetime-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/onetime/-/onetime-1.0.0.tgz";
      name = "onetime-1.0.0.tgz";
      sha1 = "3a08a8e39d7816df52d34886374fb8ed8b651f62";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."opn"."^1.0.1" =
    self.by-version."opn"."1.0.2";
  by-version."opn"."1.0.2" = self.buildNodePackage {
    name = "opn-1.0.2";
    version = "1.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/opn/-/opn-1.0.2.tgz";
      name = "opn-1.0.2.tgz";
      sha1 = "b909643346d00a1abc977a8b96f3ce3c53d5cf5f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."^0.6.1" =
    self.by-version."optimist"."0.6.1";
  by-version."optimist"."0.6.1" = self.buildNodePackage {
    name = "optimist-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.6.1.tgz";
      name = "optimist-0.6.1.tgz";
      sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
      "minimist-0.0.10" = self.by-version."minimist"."0.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."~0.3" =
    self.by-version."optimist"."0.3.7";
  by-version."optimist"."0.3.7" = self.buildNodePackage {
    name = "optimist-0.3.7";
    version = "0.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.3.7.tgz";
      name = "optimist-0.3.7.tgz";
      sha1 = "c90941ad59e4273328923074d2cf2e7cbc6ec0d9";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."~0.3.5" =
    self.by-version."optimist"."0.3.7";
  by-spec."optimist"."~0.6.0" =
    self.by-version."optimist"."0.6.1";
  by-spec."original".">=0.0.5" =
    self.by-version."original"."1.0.0";
  by-version."original"."1.0.0" = self.buildNodePackage {
    name = "original-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/original/-/original-1.0.0.tgz";
      name = "original-1.0.0.tgz";
      sha1 = "9147f93fa1696d04be61e01bd50baeaca656bd3b";
    };
    deps = {
      "url-parse-1.0.5" = self.by-version."url-parse"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-browserify"."~0.1.1" =
    self.by-version."os-browserify"."0.1.2";
  by-version."os-browserify"."0.1.2" = self.buildNodePackage {
    name = "os-browserify-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-browserify/-/os-browserify-0.1.2.tgz";
      name = "os-browserify-0.1.2.tgz";
      sha1 = "49ca0293e0b19590a5f5de10c7f265a617d8fe54";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-browserify"."~0.1.2" =
    self.by-version."os-browserify"."0.1.2";
  by-spec."os-homedir"."^1.0.0" =
    self.by-version."os-homedir"."1.0.1";
  by-version."os-homedir"."1.0.1" = self.buildNodePackage {
    name = "os-homedir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-homedir/-/os-homedir-1.0.1.tgz";
      name = "os-homedir-1.0.1.tgz";
      sha1 = "0d62bdf44b916fd3bbdcf2cab191948fb094f007";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-name"."^1.0.0" =
    self.by-version."os-name"."1.0.3";
  by-version."os-name"."1.0.3" = self.buildNodePackage {
    name = "os-name-1.0.3";
    version = "1.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-name/-/os-name-1.0.3.tgz";
      name = "os-name-1.0.3.tgz";
      sha1 = "1b379f64835af7c5a7f498b357cb95215c159edf";
    };
    deps = {
      "osx-release-1.1.0" = self.by-version."osx-release"."1.1.0";
      "win-release-1.1.1" = self.by-version."win-release"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-tmpdir"."^1.0.0" =
    self.by-version."os-tmpdir"."1.0.1";
  by-version."os-tmpdir"."1.0.1" = self.buildNodePackage {
    name = "os-tmpdir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.1.tgz";
      name = "os-tmpdir-1.0.1.tgz";
      sha1 = "e9b423a1edaf479882562e92ed71d7743a071b6e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."^0.1.0" =
    self.by-version."osenv"."0.1.3";
  by-version."osenv"."0.1.3" = self.buildNodePackage {
    name = "osenv-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/osenv/-/osenv-0.1.3.tgz";
      name = "osenv-0.1.3.tgz";
      sha1 = "83cf05c6d6458fc4d5ac6362ea325d92f2754217";
    };
    deps = {
      "os-homedir-1.0.1" = self.by-version."os-homedir"."1.0.1";
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."^0.1.3" =
    self.by-version."osenv"."0.1.3";
  by-spec."osx-release"."^1.0.0" =
    self.by-version."osx-release"."1.1.0";
  by-version."osx-release"."1.1.0" = self.buildNodePackage {
    name = "osx-release-1.1.0";
    version = "1.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/osx-release/-/osx-release-1.1.0.tgz";
      name = "osx-release-1.1.0.tgz";
      sha1 = "f217911a28136949af1bf9308b241e2737d3cd6c";
    };
    deps = {
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."p-throttler"."0.1.1" =
    self.by-version."p-throttler"."0.1.1";
  by-version."p-throttler"."0.1.1" = self.buildNodePackage {
    name = "p-throttler-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/p-throttler/-/p-throttler-0.1.1.tgz";
      name = "p-throttler-0.1.1.tgz";
      sha1 = "15246409d225d3eefca85c50de710a83a78cca6a";
    };
    deps = {
      "q-0.9.7" = self.by-version."q"."0.9.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."package-json"."^1.0.0" =
    self.by-version."package-json"."1.2.0";
  by-version."package-json"."1.2.0" = self.buildNodePackage {
    name = "package-json-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/package-json/-/package-json-1.2.0.tgz";
      name = "package-json-1.2.0.tgz";
      sha1 = "c8ecac094227cdf76a316874ed05e27cc939a0e0";
    };
    deps = {
      "got-3.3.1" = self.by-version."got"."3.3.1";
      "registry-url-3.0.3" = self.by-version."registry-url"."3.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pako"."~0.2.0" =
    self.by-version."pako"."0.2.8";
  by-version."pako"."0.2.8" = self.buildNodePackage {
    name = "pako-0.2.8";
    version = "0.2.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pako/-/pako-0.2.8.tgz";
      name = "pako-0.2.8.tgz";
      sha1 = "15ad772915362913f20de4a8a164b4aacc6165d6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parents"."^1.0.0" =
    self.by-version."parents"."1.0.1";
  by-version."parents"."1.0.1" = self.buildNodePackage {
    name = "parents-1.0.1";
    version = "1.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/parents/-/parents-1.0.1.tgz";
      name = "parents-1.0.1.tgz";
      sha1 = "fedd4d2bf193a77745fe71e371d73c3307d9c751";
    };
    deps = {
      "path-platform-0.11.15" = self.by-version."path-platform"."0.11.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parents"."^1.0.1" =
    self.by-version."parents"."1.0.1";
  by-spec."parse-asn1"."^5.0.0" =
    self.by-version."parse-asn1"."5.0.0";
  by-version."parse-asn1"."5.0.0" = self.buildNodePackage {
    name = "parse-asn1-5.0.0";
    version = "5.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-asn1/-/parse-asn1-5.0.0.tgz";
      name = "parse-asn1-5.0.0.tgz";
      sha1 = "35060f6d5015d37628c770f4e091a0b5a278bc23";
    };
    deps = {
      "asn1.js-4.2.1" = self.by-version."asn1.js"."4.2.1";
      "browserify-aes-1.0.5" = self.by-version."browserify-aes"."1.0.5";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "evp_bytestokey-1.0.0" = self.by-version."evp_bytestokey"."1.0.0";
      "pbkdf2-3.0.4" = self.by-version."pbkdf2"."3.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-glob"."^3.0.4" =
    self.by-version."parse-glob"."3.0.4";
  by-version."parse-glob"."3.0.4" = self.buildNodePackage {
    name = "parse-glob-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-glob/-/parse-glob-3.0.4.tgz";
      name = "parse-glob-3.0.4.tgz";
      sha1 = "b2c376cfb11f35513badd173ef0bb6e3a388391c";
    };
    deps = {
      "glob-base-0.3.0" = self.by-version."glob-base"."0.3.0";
      "is-dotfile-1.0.2" = self.by-version."is-dotfile"."1.0.2";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseurl"."~1.3.0" =
    self.by-version."parseurl"."1.3.0";
  by-version."parseurl"."1.3.0" = self.buildNodePackage {
    name = "parseurl-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseurl/-/parseurl-1.3.0.tgz";
      name = "parseurl-1.3.0.tgz";
      sha1 = "b58046db4223e145afa76009e61bac87cc2281b3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-browserify"."0.0.0" =
    self.by-version."path-browserify"."0.0.0";
  by-version."path-browserify"."0.0.0" = self.buildNodePackage {
    name = "path-browserify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-browserify/-/path-browserify-0.0.0.tgz";
      name = "path-browserify-0.0.0.tgz";
      sha1 = "a0b870729aae214005b7d5032ec2cbbb0fb4451a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-browserify"."~0.0.0" =
    self.by-version."path-browserify"."0.0.0";
  by-spec."path-is-absolute"."^1.0.0" =
    self.by-version."path-is-absolute"."1.0.0";
  by-version."path-is-absolute"."1.0.0" = self.buildNodePackage {
    name = "path-is-absolute-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.0.tgz";
      name = "path-is-absolute-1.0.0.tgz";
      sha1 = "263dada66ab3f2fb10bf7f9d24dd8f3e570ef912";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-platform"."~0.11.15" =
    self.by-version."path-platform"."0.11.15";
  by-version."path-platform"."0.11.15" = self.buildNodePackage {
    name = "path-platform-0.11.15";
    version = "0.11.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-platform/-/path-platform-0.11.15.tgz";
      name = "path-platform-0.11.15.tgz";
      sha1 = "e864217f74c36850f0852b78dc7bf7d4a5721bf2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-to-regexp"."0.1.7" =
    self.by-version."path-to-regexp"."0.1.7";
  by-version."path-to-regexp"."0.1.7" = self.buildNodePackage {
    name = "path-to-regexp-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
      name = "path-to-regexp-0.1.7.tgz";
      sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pbkdf2"."^3.0.3" =
    self.by-version."pbkdf2"."3.0.4";
  by-version."pbkdf2"."3.0.4" = self.buildNodePackage {
    name = "pbkdf2-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pbkdf2/-/pbkdf2-3.0.4.tgz";
      name = "pbkdf2-3.0.4.tgz";
      sha1 = "12c8bfaf920543786a85150b03f68d5f1aa982fc";
    };
    deps = {
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pbkdf2-compat"."2.0.1" =
    self.by-version."pbkdf2-compat"."2.0.1";
  by-version."pbkdf2-compat"."2.0.1" = self.buildNodePackage {
    name = "pbkdf2-compat-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pbkdf2-compat/-/pbkdf2-compat-2.0.1.tgz";
      name = "pbkdf2-compat-2.0.1.tgz";
      sha1 = "b6e0c8fa99494d94e0511575802a59a5c142f288";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie"."^1.0.0" =
    self.by-version."pinkie"."1.0.0";
  by-version."pinkie"."1.0.0" = self.buildNodePackage {
    name = "pinkie-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pinkie/-/pinkie-1.0.0.tgz";
      name = "pinkie-1.0.0.tgz";
      sha1 = "5a47f28ba1015d0201bda7bf0f358e47bec8c7e4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie"."^2.0.0" =
    self.by-version."pinkie"."2.0.1";
  by-version."pinkie"."2.0.1" = self.buildNodePackage {
    name = "pinkie-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pinkie/-/pinkie-2.0.1.tgz";
      name = "pinkie-2.0.1.tgz";
      sha1 = "4236c86fc29f261c2045bbe81f78cbb2a5e8306c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie-promise"."^1.0.0" =
    self.by-version."pinkie-promise"."1.0.0";
  by-version."pinkie-promise"."1.0.0" = self.buildNodePackage {
    name = "pinkie-promise-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pinkie-promise/-/pinkie-promise-1.0.0.tgz";
      name = "pinkie-promise-1.0.0.tgz";
      sha1 = "d1da67f5482563bb7cf57f286ae2822ecfbf3670";
    };
    deps = {
      "pinkie-1.0.0" = self.by-version."pinkie"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie-promise"."^2.0.0" =
    self.by-version."pinkie-promise"."2.0.0";
  by-version."pinkie-promise"."2.0.0" = self.buildNodePackage {
    name = "pinkie-promise-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.0.tgz";
      name = "pinkie-promise-2.0.0.tgz";
      sha1 = "4c83538de1f6e660c29e0a13446844f7a7e88259";
    };
    deps = {
      "pinkie-2.0.1" = self.by-version."pinkie"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prepend-http"."^1.0.0" =
    self.by-version."prepend-http"."1.0.3";
  by-version."prepend-http"."1.0.3" = self.buildNodePackage {
    name = "prepend-http-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/prepend-http/-/prepend-http-1.0.3.tgz";
      name = "prepend-http-1.0.3.tgz";
      sha1 = "4d0d2b6f9efcf1190c23931325b4f3a9dba84869";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."preserve"."^0.2.0" =
    self.by-version."preserve"."0.2.0";
  by-version."preserve"."0.2.0" = self.buildNodePackage {
    name = "preserve-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz";
      name = "preserve-0.2.0.tgz";
      sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."process"."^0.11.0" =
    self.by-version."process"."0.11.2";
  by-version."process"."0.11.2" = self.buildNodePackage {
    name = "process-0.11.2";
    version = "0.11.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/process/-/process-0.11.2.tgz";
      name = "process-0.11.2.tgz";
      sha1 = "8a58d1d12c573f3f890da9848a4fe8e16ca977b2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."process"."~0.11.0" =
    self.by-version."process"."0.11.2";
  by-spec."process-nextick-args"."~1.0.0" =
    self.by-version."process-nextick-args"."1.0.6";
  by-version."process-nextick-args"."1.0.6" = self.buildNodePackage {
    name = "process-nextick-args-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.6.tgz";
      name = "process-nextick-args-1.0.6.tgz";
      sha1 = "0f96b001cea90b12592ce566edb97ec11e69bd05";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."promptly"."0.2.0" =
    self.by-version."promptly"."0.2.0";
  by-version."promptly"."0.2.0" = self.buildNodePackage {
    name = "promptly-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/promptly/-/promptly-0.2.0.tgz";
      name = "promptly-0.2.0.tgz";
      sha1 = "73ef200fa8329d5d3a8df41798950b8646ca46d9";
    };
    deps = {
      "read-1.0.7" = self.by-version."read"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."proxy-addr"."~1.0.8" =
    self.by-version."proxy-addr"."1.0.9";
  by-version."proxy-addr"."1.0.9" = self.buildNodePackage {
    name = "proxy-addr-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/proxy-addr/-/proxy-addr-1.0.9.tgz";
      name = "proxy-addr-1.0.9.tgz";
      sha1 = "8ac877a230f80f10bf9e5bf42584cde87bd219a6";
    };
    deps = {
      "forwarded-0.1.0" = self.by-version."forwarded"."0.1.0";
      "ipaddr.js-1.0.4" = self.by-version."ipaddr.js"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prr"."~0.0.0" =
    self.by-version."prr"."0.0.0";
  by-version."prr"."0.0.0" = self.buildNodePackage {
    name = "prr-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/prr/-/prr-0.0.0.tgz";
      name = "prr-0.0.0.tgz";
      sha1 = "1a84b85908325501411853d0081ee3fa86e2926a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."public-encrypt"."^4.0.0" =
    self.by-version."public-encrypt"."4.0.0";
  by-version."public-encrypt"."4.0.0" = self.buildNodePackage {
    name = "public-encrypt-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/public-encrypt/-/public-encrypt-4.0.0.tgz";
      name = "public-encrypt-4.0.0.tgz";
      sha1 = "39f699f3a46560dd5ebacbca693caf7c65c18cc6";
    };
    deps = {
      "bn.js-4.5.0" = self.by-version."bn.js"."4.5.0";
      "browserify-rsa-4.0.0" = self.by-version."browserify-rsa"."4.0.0";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "parse-asn1-5.0.0" = self.by-version."parse-asn1"."5.0.0";
      "randombytes-2.0.1" = self.by-version."randombytes"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pulp"."*" =
    self.by-version."pulp"."5.0.2";
  by-version."pulp"."5.0.2" = self.buildNodePackage {
    name = "pulp-5.0.2";
    version = "5.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/pulp/-/pulp-5.0.2.tgz";
      name = "pulp-5.0.2.tgz";
      sha1 = "58365680ec6c8e38a4a60390bfa520b7e22e7b55";
    };
    deps = {
      "ansi-0.3.0" = self.by-version."ansi"."0.3.0";
      "bluebird-3.0.6" = self.by-version."bluebird"."3.0.6";
      "bower-1.7.0" = self.by-version."bower"."1.7.0";
      "browserify-11.2.0" = self.by-version."browserify"."11.2.0";
      "browserify-incremental-3.0.1" = self.by-version."browserify-incremental"."3.0.1";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "merge-1.2.0" = self.by-version."merge"."1.2.0";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "purs-loader-0.3.4" = self.by-version."purs-loader"."0.3.4";
      "q-1.4.1" = self.by-version."q"."1.4.1";
      "rx-4.0.7" = self.by-version."rx"."4.0.7";
      "string-stream-0.0.7" = self.by-version."string-stream"."0.0.7";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "temp-0.8.3" = self.by-version."temp"."0.8.3";
      "touch-1.0.0" = self.by-version."touch"."1.0.0";
      "tree-kill-1.0.0" = self.by-version."tree-kill"."1.0.0";
      "ver-compare-0.1.1" = self.by-version."ver-compare"."0.1.1";
      "watchpack-0.2.9" = self.by-version."watchpack"."0.2.9";
      "webpack-1.12.9" = self.by-version."webpack"."1.12.9";
      "webpack-dev-server-1.14.0" = self.by-version."webpack-dev-server"."1.14.0";
      "wordwrap-0.0.2" = self.by-version."wordwrap"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "pulp" = self.by-version."pulp"."5.0.2";
  by-spec."pump"."^1.0.0" =
    self.by-version."pump"."1.0.1";
  by-version."pump"."1.0.1" = self.buildNodePackage {
    name = "pump-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pump/-/pump-1.0.1.tgz";
      name = "pump-1.0.1.tgz";
      sha1 = "f1f1409fb9bd1085bbdb576b43b84ec4b5eadc1a";
    };
    deps = {
      "end-of-stream-1.1.0" = self.by-version."end-of-stream"."1.1.0";
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."punycode"."1.3.2" =
    self.by-version."punycode"."1.3.2";
  by-version."punycode"."1.3.2" = self.buildNodePackage {
    name = "punycode-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/punycode/-/punycode-1.3.2.tgz";
      name = "punycode-1.3.2.tgz";
      sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."punycode"."^1.2.4" =
    self.by-version."punycode"."1.3.2";
  by-spec."punycode"."^1.3.2" =
    self.by-version."punycode"."1.3.2";
  by-spec."purs-loader"."^0.3.4" =
    self.by-version."purs-loader"."0.3.4";
  by-version."purs-loader"."0.3.4" = self.buildNodePackage {
    name = "purs-loader-0.3.4";
    version = "0.3.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/purs-loader/-/purs-loader-0.3.4.tgz";
      name = "purs-loader-0.3.4.tgz";
      sha1 = "84b849a22505fa6e686b835e1583a36ebf6ad0fb";
    };
    deps = {
      "async-1.5.0" = self.by-version."async"."1.5.0";
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."q"."^1.1.2" =
    self.by-version."q"."1.4.1";
  by-version."q"."1.4.1" = self.buildNodePackage {
    name = "q-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-1.4.1.tgz";
      name = "q-1.4.1.tgz";
      sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."q"."^1.4.1" =
    self.by-version."q"."1.4.1";
  by-spec."q"."~0.9.2" =
    self.by-version."q"."0.9.7";
  by-version."q"."0.9.7" = self.buildNodePackage {
    name = "q-0.9.7";
    version = "0.9.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-0.9.7.tgz";
      name = "q-0.9.7.tgz";
      sha1 = "4de2e6cb3b29088c9e4cbc03bf9d42fb96ce2f75";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."4.0.0" =
    self.by-version."qs"."4.0.0";
  by-version."qs"."4.0.0" = self.buildNodePackage {
    name = "qs-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-4.0.0.tgz";
      name = "qs-4.0.0.tgz";
      sha1 = "c31d9b74ec27df75e543a86c78728ed8d4623607";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~2.3.1" =
    self.by-version."qs"."2.3.3";
  by-version."qs"."2.3.3" = self.buildNodePackage {
    name = "qs-2.3.3";
    version = "2.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-2.3.3.tgz";
      name = "qs-2.3.3.tgz";
      sha1 = "e9e85adbe75da0bbe4c8e0476a086290f863b404";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~5.2.0" =
    self.by-version."qs"."5.2.0";
  by-version."qs"."5.2.0" = self.buildNodePackage {
    name = "qs-5.2.0";
    version = "5.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-5.2.0.tgz";
      name = "qs-5.2.0.tgz";
      sha1 = "a9f31142af468cb72b25b30136ba2456834916be";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."querystring"."0.2.0" =
    self.by-version."querystring"."0.2.0";
  by-version."querystring"."0.2.0" = self.buildNodePackage {
    name = "querystring-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/querystring/-/querystring-0.2.0.tgz";
      name = "querystring-0.2.0.tgz";
      sha1 = "b209849203bb25df820da756e747005878521620";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."querystring-es3"."~0.2.0" =
    self.by-version."querystring-es3"."0.2.1";
  by-version."querystring-es3"."0.2.1" = self.buildNodePackage {
    name = "querystring-es3-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/querystring-es3/-/querystring-es3-0.2.1.tgz";
      name = "querystring-es3-0.2.1.tgz";
      sha1 = "9ec61f79049875707d69414596fd907a4d711e73";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."querystringify"."0.0.x" =
    self.by-version."querystringify"."0.0.3";
  by-version."querystringify"."0.0.3" = self.buildNodePackage {
    name = "querystringify-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/querystringify/-/querystringify-0.0.3.tgz";
      name = "querystringify-0.0.3.tgz";
      sha1 = "0c9d36fbf8c7a4f71eb370857763577a63335be7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randomatic"."^1.1.3" =
    self.by-version."randomatic"."1.1.3";
  by-version."randomatic"."1.1.3" = self.buildNodePackage {
    name = "randomatic-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/randomatic/-/randomatic-1.1.3.tgz";
      name = "randomatic-1.1.3.tgz";
      sha1 = "cfbd4fe82545202b0de0ce13d61c41f2d467d5cf";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "kind-of-2.0.1" = self.by-version."kind-of"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randombytes"."^2.0.0" =
    self.by-version."randombytes"."2.0.1";
  by-version."randombytes"."2.0.1" = self.buildNodePackage {
    name = "randombytes-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/randombytes/-/randombytes-2.0.1.tgz";
      name = "randombytes-2.0.1.tgz";
      sha1 = "18f4a9ba0dd07bdb1580bc9156091fcf90eabc6f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randombytes"."^2.0.1" =
    self.by-version."randombytes"."2.0.1";
  by-spec."range-parser"."~1.0.2" =
    self.by-version."range-parser"."1.0.3";
  by-version."range-parser"."1.0.3" = self.buildNodePackage {
    name = "range-parser-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/range-parser/-/range-parser-1.0.3.tgz";
      name = "range-parser-1.0.3.tgz";
      sha1 = "6872823535c692e2c2a0103826afd82c2e0ff175";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."^1.0.1" =
    self.by-version."rc"."1.1.5";
  by-version."rc"."1.1.5" = self.buildNodePackage {
    name = "rc-1.1.5";
    version = "1.1.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rc/-/rc-1.1.5.tgz";
      name = "rc-1.1.5.tgz";
      sha1 = "3bae28d7bed87d1ccb5863f8dce8c27f2ceee89c";
    };
    deps = {
      "deep-extend-0.4.0" = self.by-version."deep-extend"."0.4.0";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "strip-json-comments-1.0.4" = self.by-version."strip-json-comments"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."~1.1.0" =
    self.by-version."rc"."1.1.5";
  by-spec."read"."~1.0.4" =
    self.by-version."read"."1.0.7";
  by-version."read"."1.0.7" = self.buildNodePackage {
    name = "read-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/read/-/read-1.0.7.tgz";
      name = "read-1.0.7.tgz";
      sha1 = "b3da19bd052431a97671d44a42634adf710b40c4";
    };
    deps = {
      "mute-stream-0.0.5" = self.by-version."mute-stream"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-all-stream"."^3.0.0" =
    self.by-version."read-all-stream"."3.0.1";
  by-version."read-all-stream"."3.0.1" = self.buildNodePackage {
    name = "read-all-stream-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-all-stream/-/read-all-stream-3.0.1.tgz";
      name = "read-all-stream-3.0.1.tgz";
      sha1 = "c3701aecd7c911516677590eedea49684c62fa47";
    };
    deps = {
      "pinkie-promise-1.0.0" = self.by-version."pinkie-promise"."1.0.0";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-only-stream"."^1.1.1" =
    self.by-version."read-only-stream"."1.1.1";
  by-version."read-only-stream"."1.1.1" = self.buildNodePackage {
    name = "read-only-stream-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-only-stream/-/read-only-stream-1.1.1.tgz";
      name = "read-only-stream-1.1.1.tgz";
      sha1 = "5da77c799ed1388d3ef88a18471bb5924f8a0ba1";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "readable-wrap-1.0.0" = self.by-version."readable-wrap"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-only-stream"."^2.0.0" =
    self.by-version."read-only-stream"."2.0.0";
  by-version."read-only-stream"."2.0.0" = self.buildNodePackage {
    name = "read-only-stream-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-only-stream/-/read-only-stream-2.0.0.tgz";
      name = "read-only-stream-2.0.0.tgz";
      sha1 = "2724fd6a8113d73764ac288d4386270c1dbf17f0";
    };
    deps = {
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream".">=1.0.33-1 <1.1.0-0" =
    self.by-version."readable-stream"."1.0.33";
  by-version."readable-stream"."1.0.33" = self.buildNodePackage {
    name = "readable-stream-1.0.33";
    version = "1.0.33";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.33.tgz";
      name = "readable-stream-1.0.33.tgz";
      sha1 = "3a360dd66c1b1d7fd4705389860eda1d0f61126c";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream".">=1.1.13-1 <1.2.0-0" =
    self.by-version."readable-stream"."1.1.13";
  by-version."readable-stream"."1.1.13" = self.buildNodePackage {
    name = "readable-stream-1.1.13";
    version = "1.1.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.1.13.tgz";
      name = "readable-stream-1.1.13.tgz";
      sha1 = "f6eef764f514c89e2b9e23146a75ba106756d23e";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^1.0.27-1" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^1.0.31" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^1.1.13" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^1.1.13-1" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^1.1.8" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^2.0.0" =
    self.by-version."readable-stream"."2.0.4";
  by-version."readable-stream"."2.0.4" = self.buildNodePackage {
    name = "readable-stream-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-2.0.4.tgz";
      name = "readable-stream-2.0.4.tgz";
      sha1 = "2523ef27ffa339d7ba9da8603f2d0599d06edbd8";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "process-nextick-args-1.0.6" = self.by-version."process-nextick-args"."1.0.6";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^2.0.0 || ^1.1.13" =
    self.by-version."readable-stream"."2.0.4";
  by-spec."readable-stream"."^2.0.1" =
    self.by-version."readable-stream"."2.0.4";
  by-spec."readable-stream"."^2.0.2" =
    self.by-version."readable-stream"."2.0.4";
  by-spec."readable-stream"."~1.0.17" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.26" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.1.9" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."~2.0.0" =
    self.by-version."readable-stream"."2.0.4";
  by-spec."readable-stream"."~2.0.4" =
    self.by-version."readable-stream"."2.0.4";
  by-spec."readable-wrap"."^1.0.0" =
    self.by-version."readable-wrap"."1.0.0";
  by-version."readable-wrap"."1.0.0" = self.buildNodePackage {
    name = "readable-wrap-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-wrap/-/readable-wrap-1.0.0.tgz";
      name = "readable-wrap-1.0.0.tgz";
      sha1 = "3b5a211c631e12303a54991c806c17e7ae206bff";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readdirp"."^2.0.0" =
    self.by-version."readdirp"."2.0.0";
  by-version."readdirp"."2.0.0" = self.buildNodePackage {
    name = "readdirp-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readdirp/-/readdirp-2.0.0.tgz";
      name = "readdirp-2.0.0.tgz";
      sha1 = "cc09ba5d12d8feb864bc75f6e2ebc137060cbd82";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readline2"."^1.0.1" =
    self.by-version."readline2"."1.0.1";
  by-version."readline2"."1.0.1" = self.buildNodePackage {
    name = "readline2-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readline2/-/readline2-1.0.1.tgz";
      name = "readline2-1.0.1.tgz";
      sha1 = "41059608ffc154757b715d9989d199ffbf372e35";
    };
    deps = {
      "code-point-at-1.0.0" = self.by-version."code-point-at"."1.0.0";
      "is-fullwidth-code-point-1.0.0" = self.by-version."is-fullwidth-code-point"."1.0.0";
      "mute-stream-0.0.5" = self.by-version."mute-stream"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redeyed"."~0.4.0" =
    self.by-version."redeyed"."0.4.4";
  by-version."redeyed"."0.4.4" = self.buildNodePackage {
    name = "redeyed-0.4.4";
    version = "0.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redeyed/-/redeyed-0.4.4.tgz";
      name = "redeyed-0.4.4.tgz";
      sha1 = "37e990a6f2b21b2a11c2e6a48fd4135698cba97f";
    };
    deps = {
      "esprima-1.0.4" = self.by-version."esprima"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regex-cache"."^0.4.2" =
    self.by-version."regex-cache"."0.4.2";
  by-version."regex-cache"."0.4.2" = self.buildNodePackage {
    name = "regex-cache-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/regex-cache/-/regex-cache-0.4.2.tgz";
      name = "regex-cache-0.4.2.tgz";
      sha1 = "6e4f89c266bc03c33fd129c062184687f4663487";
    };
    deps = {
      "is-equal-shallow-0.1.3" = self.by-version."is-equal-shallow"."0.1.3";
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."registry-url"."^3.0.0" =
    self.by-version."registry-url"."3.0.3";
  by-version."registry-url"."3.0.3" = self.buildNodePackage {
    name = "registry-url-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/registry-url/-/registry-url-3.0.3.tgz";
      name = "registry-url-3.0.3.tgz";
      sha1 = "c9f5102e0fd9c9f250522a7f19f68672c84ccc96";
    };
    deps = {
      "rc-1.1.5" = self.by-version."rc"."1.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-element"."^1.1.2" =
    self.by-version."repeat-element"."1.1.2";
  by-version."repeat-element"."1.1.2" = self.buildNodePackage {
    name = "repeat-element-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-element/-/repeat-element-1.1.2.tgz";
      name = "repeat-element-1.1.2.tgz";
      sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-string"."^1.5.2" =
    self.by-version."repeat-string"."1.5.2";
  by-version."repeat-string"."1.5.2" = self.buildNodePackage {
    name = "repeat-string-1.5.2";
    version = "1.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-string/-/repeat-string-1.5.2.tgz";
      name = "repeat-string-1.5.2.tgz";
      sha1 = "21065f70727ad053a0dd5e957ac9e00c7560d90a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.53.0" =
    self.by-version."request"."2.53.0";
  by-version."request"."2.53.0" = self.buildNodePackage {
    name = "request-2.53.0";
    version = "2.53.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.53.0.tgz";
      name = "request-2.53.0.tgz";
      sha1 = "180a3ae92b7b639802e4f9545dd8fcdeb71d760c";
    };
    deps = {
      "bl-0.9.4" = self.by-version."bl"."0.9.4";
      "caseless-0.9.0" = self.by-version."caseless"."0.9.0";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "form-data-0.2.0" = self.by-version."form-data"."0.2.0";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.0.14" = self.by-version."mime-types"."2.0.14";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "qs-2.3.3" = self.by-version."qs"."2.3.3";
      "tunnel-agent-0.4.1" = self.by-version."tunnel-agent"."0.4.1";
      "tough-cookie-2.2.1" = self.by-version."tough-cookie"."2.2.1";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "oauth-sign-0.6.0" = self.by-version."oauth-sign"."0.6.0";
      "hawk-2.3.1" = self.by-version."hawk"."2.3.1";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.x" =
    self.by-version."request"."2.67.0";
  by-version."request"."2.67.0" = self.buildNodePackage {
    name = "request-2.67.0";
    version = "2.67.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.67.0.tgz";
      name = "request-2.67.0.tgz";
      sha1 = "8af74780e2bf11ea0ae9aa965c11f11afd272742";
    };
    deps = {
      "bl-1.0.0" = self.by-version."bl"."1.0.0";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-1.0.0-rc3" = self.by-version."form-data"."1.0.0-rc3";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.8" = self.by-version."mime-types"."2.1.8";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "qs-5.2.0" = self.by-version."qs"."5.2.0";
      "tunnel-agent-0.4.1" = self.by-version."tunnel-agent"."0.4.1";
      "tough-cookie-2.2.1" = self.by-version."tough-cookie"."2.2.1";
      "http-signature-1.1.0" = self.by-version."http-signature"."1.1.0";
      "oauth-sign-0.8.0" = self.by-version."oauth-sign"."0.8.0";
      "hawk-3.1.2" = self.by-version."hawk"."3.1.2";
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "is-typedarray-1.0.0" = self.by-version."is-typedarray"."1.0.0";
      "har-validator-2.0.3" = self.by-version."har-validator"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."^2.40.0" =
    self.by-version."request"."2.67.0";
  by-spec."request"."^2.51.0" =
    self.by-version."request"."2.67.0";
  by-spec."request-progress"."0.3.1" =
    self.by-version."request-progress"."0.3.1";
  by-version."request-progress"."0.3.1" = self.buildNodePackage {
    name = "request-progress-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request-progress/-/request-progress-0.3.1.tgz";
      name = "request-progress-0.3.1.tgz";
      sha1 = "0721c105d8a96ac6b2ce8b2c89ae2d5ecfcf6b3a";
    };
    deps = {
      "throttleit-0.0.2" = self.by-version."throttleit"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request-replay"."^0.2.0" =
    self.by-version."request-replay"."0.2.0";
  by-version."request-replay"."0.2.0" = self.buildNodePackage {
    name = "request-replay-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request-replay/-/request-replay-0.2.0.tgz";
      name = "request-replay-0.2.0.tgz";
      sha1 = "9b693a5d118b39f5c596ead5ed91a26444057f60";
    };
    deps = {
      "retry-0.6.1" = self.by-version."retry"."0.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."requires-port"."0.x.x" =
    self.by-version."requires-port"."0.0.1";
  by-version."requires-port"."0.0.1" = self.buildNodePackage {
    name = "requires-port-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/requires-port/-/requires-port-0.0.1.tgz";
      name = "requires-port-0.0.1.tgz";
      sha1 = "4b4414411d9df7c855995dd899a8c78a2951c16d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."requires-port"."1.0.x" =
    self.by-version."requires-port"."1.0.0";
  by-version."requires-port"."1.0.0" = self.buildNodePackage {
    name = "requires-port-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/requires-port/-/requires-port-1.0.0.tgz";
      name = "requires-port-1.0.0.tgz";
      sha1 = "925d2601d39ac485e091cf0da5c6e694dc3dcaff";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."resolve"."1.1.6" =
    self.by-version."resolve"."1.1.6";
  by-version."resolve"."1.1.6" = self.buildNodePackage {
    name = "resolve-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/resolve/-/resolve-1.1.6.tgz";
      name = "resolve-1.1.6.tgz";
      sha1 = "d3492ad054ca800f5befa612e61beac1eec98f8f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."resolve"."^1.1.3" =
    self.by-version."resolve"."1.1.6";
  by-spec."resolve"."^1.1.4" =
    self.by-version."resolve"."1.1.6";
  by-spec."restore-cursor"."^1.0.1" =
    self.by-version."restore-cursor"."1.0.1";
  by-version."restore-cursor"."1.0.1" = self.buildNodePackage {
    name = "restore-cursor-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/restore-cursor/-/restore-cursor-1.0.1.tgz";
      name = "restore-cursor-1.0.1.tgz";
      sha1 = "34661f46886327fed2991479152252df92daa541";
    };
    deps = {
      "exit-hook-1.1.1" = self.by-version."exit-hook"."1.1.1";
      "onetime-1.0.0" = self.by-version."onetime"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."retry"."0.6.1" =
    self.by-version."retry"."0.6.1";
  by-version."retry"."0.6.1" = self.buildNodePackage {
    name = "retry-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/retry/-/retry-0.6.1.tgz";
      name = "retry-0.6.1.tgz";
      sha1 = "fdc90eed943fde11b893554b8cc63d0e899ba918";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."retry"."~0.6.0" =
    self.by-version."retry"."0.6.1";
  by-spec."right-align"."^0.1.1" =
    self.by-version."right-align"."0.1.3";
  by-version."right-align"."0.1.3" = self.buildNodePackage {
    name = "right-align-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/right-align/-/right-align-0.1.3.tgz";
      name = "right-align-0.1.3.tgz";
      sha1 = "61339b722fe6a3515689210d24e14c96148613ef";
    };
    deps = {
      "align-text-0.1.3" = self.by-version."align-text"."0.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."2" =
    self.by-version."rimraf"."2.4.4";
  by-version."rimraf"."2.4.4" = self.buildNodePackage {
    name = "rimraf-2.4.4";
    version = "2.4.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.4.4.tgz";
      name = "rimraf-2.4.4.tgz";
      sha1 = "b528ce2ebe0e6d89fb03b265de11d61da0dbcf82";
    };
    deps = {
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."^2.2.0" =
    self.by-version."rimraf"."2.4.4";
  by-spec."rimraf"."^2.2.8" =
    self.by-version."rimraf"."2.4.4";
  by-spec."rimraf"."~2.2.6" =
    self.by-version."rimraf"."2.2.8";
  by-version."rimraf"."2.2.8" = self.buildNodePackage {
    name = "rimraf-2.2.8";
    version = "2.2.8";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
      name = "rimraf-2.2.8.tgz";
      sha1 = "e439be2aaee327321952730f99a8929e4fc50582";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."~2.4.0" =
    self.by-version."rimraf"."2.4.4";
  by-spec."rimraf"."~2.4.4" =
    self.by-version."rimraf"."2.4.4";
  by-spec."ripemd160"."0.2.0" =
    self.by-version."ripemd160"."0.2.0";
  by-version."ripemd160"."0.2.0" = self.buildNodePackage {
    name = "ripemd160-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ripemd160/-/ripemd160-0.2.0.tgz";
      name = "ripemd160-0.2.0.tgz";
      sha1 = "2bf198bde167cacfa51c0a928e84b68bbe171fce";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ripemd160"."^1.0.0" =
    self.by-version."ripemd160"."1.0.1";
  by-version."ripemd160"."1.0.1" = self.buildNodePackage {
    name = "ripemd160-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ripemd160/-/ripemd160-1.0.1.tgz";
      name = "ripemd160-1.0.1.tgz";
      sha1 = "93a4bbd4942bc574b69a8fa57c71de10ecca7d6e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."run-async"."^0.1.0" =
    self.by-version."run-async"."0.1.0";
  by-version."run-async"."0.1.0" = self.buildNodePackage {
    name = "run-async-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/run-async/-/run-async-0.1.0.tgz";
      name = "run-async-0.1.0.tgz";
      sha1 = "c8ad4a5e110661e402a7d21b530e009f25f8e389";
    };
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rx"."^4.0.7" =
    self.by-version."rx"."4.0.7";
  by-version."rx"."4.0.7" = self.buildNodePackage {
    name = "rx-4.0.7";
    version = "4.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rx/-/rx-4.0.7.tgz";
      name = "rx-4.0.7.tgz";
      sha1 = "b7ae4857c594068b5fc561f72f4798c2d057e247";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rx-lite"."^3.1.2" =
    self.by-version."rx-lite"."3.1.2";
  by-version."rx-lite"."3.1.2" = self.buildNodePackage {
    name = "rx-lite-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rx-lite/-/rx-lite-3.1.2.tgz";
      name = "rx-lite-3.1.2.tgz";
      sha1 = "19ce502ca572665f3b647b10939f97fd1615f102";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."^2.3.0" =
    self.by-version."semver"."2.3.2";
  by-version."semver"."2.3.2" = self.buildNodePackage {
    name = "semver-2.3.2";
    version = "2.3.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-2.3.2.tgz";
      name = "semver-2.3.2.tgz";
      sha1 = "b9848f25d6cf36333073ec9ef8856d42f1233e52";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."^5.0.1" =
    self.by-version."semver"."5.1.0";
  by-version."semver"."5.1.0" = self.buildNodePackage {
    name = "semver-5.1.0";
    version = "5.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-5.1.0.tgz";
      name = "semver-5.1.0.tgz";
      sha1 = "85f2cf8550465c4df000cf7d86f6b054106ab9e5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."^5.0.3" =
    self.by-version."semver"."5.1.0";
  by-spec."semver"."~5.1.0" =
    self.by-version."semver"."5.1.0";
  by-spec."semver-diff"."^2.0.0" =
    self.by-version."semver-diff"."2.1.0";
  by-version."semver-diff"."2.1.0" = self.buildNodePackage {
    name = "semver-diff-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver-diff/-/semver-diff-2.1.0.tgz";
      name = "semver-diff-2.1.0.tgz";
      sha1 = "4bbb8437c8d37e4b0cf1a68fd726ec6d645d6d36";
    };
    deps = {
      "semver-5.1.0" = self.by-version."semver"."5.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."send"."0.13.0" =
    self.by-version."send"."0.13.0";
  by-version."send"."0.13.0" = self.buildNodePackage {
    name = "send-0.13.0";
    version = "0.13.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/send/-/send-0.13.0.tgz";
      name = "send-0.13.0.tgz";
      sha1 = "518f921aeb0560aec7dcab2990b14cf6f3cce5de";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "destroy-1.0.3" = self.by-version."destroy"."1.0.3";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "range-parser-1.0.3" = self.by-version."range-parser"."1.0.3";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-index"."^1.7.2" =
    self.by-version."serve-index"."1.7.2";
  by-version."serve-index"."1.7.2" = self.buildNodePackage {
    name = "serve-index-1.7.2";
    version = "1.7.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-index/-/serve-index-1.7.2.tgz";
      name = "serve-index-1.7.2.tgz";
      sha1 = "9a155d9c4f9d391e463970e7b4eb16c7672141c0";
    };
    deps = {
      "accepts-1.2.13" = self.by-version."accepts"."1.2.13";
      "batch-0.5.2" = self.by-version."batch"."0.5.2";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-types-2.1.8" = self.by-version."mime-types"."2.1.8";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-static"."~1.10.0" =
    self.by-version."serve-static"."1.10.0";
  by-version."serve-static"."1.10.0" = self.buildNodePackage {
    name = "serve-static-1.10.0";
    version = "1.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-static/-/serve-static-1.10.0.tgz";
      name = "serve-static-1.10.0.tgz";
      sha1 = "be632faa685820e4a43ed3df1379135cc4f370d7";
    };
    deps = {
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "send-0.13.0" = self.by-version."send"."0.13.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sha.js"."2.2.6" =
    self.by-version."sha.js"."2.2.6";
  by-version."sha.js"."2.2.6" = self.buildNodePackage {
    name = "sha.js-2.2.6";
    version = "2.2.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/sha.js/-/sha.js-2.2.6.tgz";
      name = "sha.js-2.2.6.tgz";
      sha1 = "17ddeddc5f722fb66501658895461977867315ba";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sha.js"."^2.3.6" =
    self.by-version."sha.js"."2.4.4";
  by-version."sha.js"."2.4.4" = self.buildNodePackage {
    name = "sha.js-2.4.4";
    version = "2.4.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/sha.js/-/sha.js-2.4.4.tgz";
      name = "sha.js-2.4.4.tgz";
      sha1 = "da1b088fde46c9ed4f17e6d29f29f4928e98e251";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sha.js"."~2.4.4" =
    self.by-version."sha.js"."2.4.4";
  by-spec."shasum"."^1.0.0" =
    self.by-version."shasum"."1.0.2";
  by-version."shasum"."1.0.2" = self.buildNodePackage {
    name = "shasum-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/shasum/-/shasum-1.0.2.tgz";
      name = "shasum-1.0.2.tgz";
      sha1 = "e7012310d8f417f4deb5712150e5678b87ae565f";
    };
    deps = {
      "json-stable-stringify-0.0.1" = self.by-version."json-stable-stringify"."0.0.1";
      "sha.js-2.4.4" = self.by-version."sha.js"."2.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."shell-quote"."^1.4.2" =
    self.by-version."shell-quote"."1.4.3";
  by-version."shell-quote"."1.4.3" = self.buildNodePackage {
    name = "shell-quote-1.4.3";
    version = "1.4.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/shell-quote/-/shell-quote-1.4.3.tgz";
      name = "shell-quote-1.4.3.tgz";
      sha1 = "952c44e0b1ed9013ef53958179cc643e8777466b";
    };
    deps = {
      "jsonify-0.0.0" = self.by-version."jsonify"."0.0.0";
      "array-filter-0.0.1" = self.by-version."array-filter"."0.0.1";
      "array-reduce-0.0.0" = self.by-version."array-reduce"."0.0.0";
      "array-map-0.0.0" = self.by-version."array-map"."0.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."shell-quote"."^1.4.3" =
    self.by-version."shell-quote"."1.4.3";
  by-spec."shell-quote"."~0.0.1" =
    self.by-version."shell-quote"."0.0.1";
  by-version."shell-quote"."0.0.1" = self.buildNodePackage {
    name = "shell-quote-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/shell-quote/-/shell-quote-0.0.1.tgz";
      name = "shell-quote-0.0.1.tgz";
      sha1 = "1a41196f3c0333c482323593d6886ecf153dd986";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sigmund"."~1.0.0" =
    self.by-version."sigmund"."1.0.1";
  by-version."sigmund"."1.0.1" = self.buildNodePackage {
    name = "sigmund-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
      name = "sigmund-1.0.1.tgz";
      sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."slide"."^1.1.5" =
    self.by-version."slide"."1.1.6";
  by-version."slide"."1.1.6" = self.buildNodePackage {
    name = "slide-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/slide/-/slide-1.1.6.tgz";
      name = "slide-1.1.6.tgz";
      sha1 = "56eb027d65b4d2dce6cb2e2d32c4d4afc9e1d707";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sntp"."1.x.x" =
    self.by-version."sntp"."1.0.9";
  by-version."sntp"."1.0.9" = self.buildNodePackage {
    name = "sntp-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
      name = "sntp-1.0.9.tgz";
      sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sockjs"."^0.3.15" =
    self.by-version."sockjs"."0.3.15";
  by-version."sockjs"."0.3.15" = self.buildNodePackage {
    name = "sockjs-0.3.15";
    version = "0.3.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sockjs/-/sockjs-0.3.15.tgz";
      name = "sockjs-0.3.15.tgz";
      sha1 = "e19b577e59e0fbdb21a0ae4f46203ca24cad8db8";
    };
    deps = {
      "faye-websocket-0.9.4" = self.by-version."faye-websocket"."0.9.4";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sockjs-client"."^1.0.3" =
    self.by-version."sockjs-client"."1.0.3";
  by-version."sockjs-client"."1.0.3" = self.buildNodePackage {
    name = "sockjs-client-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sockjs-client/-/sockjs-client-1.0.3.tgz";
      name = "sockjs-client-1.0.3.tgz";
      sha1 = "b0d8280998460eb2564c5d79d7e3d7cfd8a353ad";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "eventsource-0.1.6" = self.by-version."eventsource"."0.1.6";
      "faye-websocket-0.7.3" = self.by-version."faye-websocket"."0.7.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "json3-3.3.2" = self.by-version."json3"."3.3.2";
      "url-parse-1.0.5" = self.by-version."url-parse"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-list-map"."~0.1.0" =
    self.by-version."source-list-map"."0.1.5";
  by-version."source-list-map"."0.1.5" = self.buildNodePackage {
    name = "source-list-map-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-list-map/-/source-list-map-0.1.5.tgz";
      name = "source-list-map-0.1.5.tgz";
      sha1 = "ddf32f5173faeca3010561dd7e9a682c027f459e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."0.4.2" =
    self.by-version."source-map"."0.4.2";
  by-version."source-map"."0.4.2" = self.buildNodePackage {
    name = "source-map-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.4.2.tgz";
      name = "source-map-0.4.2.tgz";
      sha1 = "dc9f3114394ab7c1f9782972f3d11820fff06f1f";
    };
    deps = {
      "amdefine-1.0.0" = self.by-version."amdefine"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."~0.1.7" =
    self.by-version."source-map"."0.1.43";
  by-version."source-map"."0.1.43" = self.buildNodePackage {
    name = "source-map-0.1.43";
    version = "0.1.43";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.1.43.tgz";
      name = "source-map-0.1.43.tgz";
      sha1 = "c24bc146ca517c1471f5dacbe2571b2b7f9e3346";
    };
    deps = {
      "amdefine-1.0.0" = self.by-version."amdefine"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."~0.4.0" =
    self.by-version."source-map"."0.4.4";
  by-version."source-map"."0.4.4" = self.buildNodePackage {
    name = "source-map-0.4.4";
    version = "0.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz";
      name = "source-map-0.4.4.tgz";
      sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
    };
    deps = {
      "amdefine-1.0.0" = self.by-version."amdefine"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."~0.4.1" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."~0.4.2" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."~0.5.1" =
    self.by-version."source-map"."0.5.3";
  by-version."source-map"."0.5.3" = self.buildNodePackage {
    name = "source-map-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.5.3.tgz";
      name = "source-map-0.5.3.tgz";
      sha1 = "82674b85a71b0be76c3e7416d15e9f5252eb3be0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sprintf-js"."~1.0.2" =
    self.by-version."sprintf-js"."1.0.3";
  by-version."sprintf-js"."1.0.3" = self.buildNodePackage {
    name = "sprintf-js-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.3.tgz";
      name = "sprintf-js-1.0.3.tgz";
      sha1 = "04e6926f662895354f3dd015203633b857297e2c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sshpk"."^1.7.0" =
    self.by-version."sshpk"."1.7.1";
  by-version."sshpk"."1.7.1" = self.buildNodePackage {
    name = "sshpk-1.7.1";
    version = "1.7.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/sshpk/-/sshpk-1.7.1.tgz";
      name = "sshpk-1.7.1.tgz";
      sha1 = "565e386c42a77e6062fbd14c0472ff21cd53398c";
    };
    deps = {
      "asn1-0.2.3" = self.by-version."asn1"."0.2.3";
      "assert-plus-0.2.0" = self.by-version."assert-plus"."0.2.0";
      "dashdash-1.10.1" = self.by-version."dashdash"."1.10.1";
    };
    optionalDependencies = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
      "tweetnacl-0.13.2" = self.by-version."tweetnacl"."0.13.2";
      "jodid25519-1.0.2" = self.by-version."jodid25519"."1.0.2";
      "ecc-jsbn-0.1.1" = self.by-version."ecc-jsbn"."0.1.1";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."1" =
    self.by-version."statuses"."1.2.1";
  by-version."statuses"."1.2.1" = self.buildNodePackage {
    name = "statuses-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/statuses/-/statuses-1.2.1.tgz";
      name = "statuses-1.2.1.tgz";
      sha1 = "dded45cc18256d51ed40aec142489d5c61026d28";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."~1.2.1" =
    self.by-version."statuses"."1.2.1";
  by-spec."stream-browserify"."^1.0.0" =
    self.by-version."stream-browserify"."1.0.0";
  by-version."stream-browserify"."1.0.0" = self.buildNodePackage {
    name = "stream-browserify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-browserify/-/stream-browserify-1.0.0.tgz";
      name = "stream-browserify-1.0.0.tgz";
      sha1 = "bf9b4abfb42b274d751479e44e0ff2656b6f1193";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-browserify"."^2.0.0" =
    self.by-version."stream-browserify"."2.0.1";
  by-version."stream-browserify"."2.0.1" = self.buildNodePackage {
    name = "stream-browserify-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-browserify/-/stream-browserify-2.0.1.tgz";
      name = "stream-browserify-2.0.1.tgz";
      sha1 = "66266ee5f9bdb9940a4e4514cafb43bb71e5c9db";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-cache"."~0.0.1" =
    self.by-version."stream-cache"."0.0.2";
  by-version."stream-cache"."0.0.2" = self.buildNodePackage {
    name = "stream-cache-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-cache/-/stream-cache-0.0.2.tgz";
      name = "stream-cache-0.0.2.tgz";
      sha1 = "1ac5ad6832428ca55667dbdee395dad4e6db118f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-combiner2"."^1.1.1" =
    self.by-version."stream-combiner2"."1.1.1";
  by-version."stream-combiner2"."1.1.1" = self.buildNodePackage {
    name = "stream-combiner2-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-combiner2/-/stream-combiner2-1.1.1.tgz";
      name = "stream-combiner2-1.1.1.tgz";
      sha1 = "fb4d8a1420ea362764e21ad4780397bebcb41cbe";
    };
    deps = {
      "duplexer2-0.1.4" = self.by-version."duplexer2"."0.1.4";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-combiner2"."~1.0.0" =
    self.by-version."stream-combiner2"."1.0.2";
  by-version."stream-combiner2"."1.0.2" = self.buildNodePackage {
    name = "stream-combiner2-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-combiner2/-/stream-combiner2-1.0.2.tgz";
      name = "stream-combiner2-1.0.2.tgz";
      sha1 = "ba72a6b50cbfabfa950fc8bc87604bd01eb60671";
    };
    deps = {
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
      "through2-0.5.1" = self.by-version."through2"."0.5.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-http"."^1.2.0" =
    self.by-version."stream-http"."1.7.1";
  by-version."stream-http"."1.7.1" = self.buildNodePackage {
    name = "stream-http-1.7.1";
    version = "1.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-http/-/stream-http-1.7.1.tgz";
      name = "stream-http-1.7.1.tgz";
      sha1 = "d3d2a6e14c36a38b9dafb199aee7bbc570519978";
    };
    deps = {
      "builtin-status-codes-1.0.0" = self.by-version."builtin-status-codes"."1.0.0";
      "foreach-2.0.5" = self.by-version."foreach"."2.0.5";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "object-keys-1.0.9" = self.by-version."object-keys"."1.0.9";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-http"."^2.0.0" =
    self.by-version."stream-http"."2.0.2";
  by-version."stream-http"."2.0.2" = self.buildNodePackage {
    name = "stream-http-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-http/-/stream-http-2.0.2.tgz";
      name = "stream-http-2.0.2.tgz";
      sha1 = "5acdcd05c6fe78dfeace92a81a73ebf3e8f82913";
    };
    deps = {
      "builtin-status-codes-1.0.0" = self.by-version."builtin-status-codes"."1.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-splicer"."^1.1.0" =
    self.by-version."stream-splicer"."1.3.2";
  by-version."stream-splicer"."1.3.2" = self.buildNodePackage {
    name = "stream-splicer-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-splicer/-/stream-splicer-1.3.2.tgz";
      name = "stream-splicer-1.3.2.tgz";
      sha1 = "3c0441be15b9bf4e226275e6dc83964745546661";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "readable-wrap-1.0.0" = self.by-version."readable-wrap"."1.0.0";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-splicer"."^2.0.0" =
    self.by-version."stream-splicer"."2.0.0";
  by-version."stream-splicer"."2.0.0" = self.buildNodePackage {
    name = "stream-splicer-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-splicer/-/stream-splicer-2.0.0.tgz";
      name = "stream-splicer-2.0.0.tgz";
      sha1 = "1b63be438a133e4b671cc1935197600175910d83";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string-length"."^1.0.0" =
    self.by-version."string-length"."1.0.1";
  by-version."string-length"."1.0.1" = self.buildNodePackage {
    name = "string-length-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string-length/-/string-length-1.0.1.tgz";
      name = "string-length-1.0.1.tgz";
      sha1 = "56970fb1c38558e9e70b728bf3de269ac45adfac";
    };
    deps = {
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string-stream"."0.0.7" =
    self.by-version."string-stream"."0.0.7";
  by-version."string-stream"."0.0.7" = self.buildNodePackage {
    name = "string-stream-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string-stream/-/string-stream-0.0.7.tgz";
      name = "string-stream-0.0.7.tgz";
      sha1 = "cfcde82799fa62f303429aaa79336ee8834332fe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~0.10.0" =
    self.by-version."string_decoder"."0.10.31";
  by-version."string_decoder"."0.10.31" = self.buildNodePackage {
    name = "string_decoder-0.10.31";
    version = "0.10.31";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
      name = "string_decoder-0.10.31.tgz";
      sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~0.10.25" =
    self.by-version."string_decoder"."0.10.31";
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-spec."stringify-object"."^1.0.0" =
    self.by-version."stringify-object"."1.0.1";
  by-version."stringify-object"."1.0.1" = self.buildNodePackage {
    name = "stringify-object-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringify-object/-/stringify-object-1.0.1.tgz";
      name = "stringify-object-1.0.1.tgz";
      sha1 = "86d35e7dbfbce9aa45637d7ecdd7847e159db8a2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringstream"."~0.0.4" =
    self.by-version."stringstream"."0.0.5";
  by-version."stringstream"."0.0.5" = self.buildNodePackage {
    name = "stringstream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringstream/-/stringstream-0.0.5.tgz";
      name = "stringstream-0.0.5.tgz";
      sha1 = "4e484cd4de5a0bbbee18e46307710a8a81621878";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^3.0.0" =
    self.by-version."strip-ansi"."3.0.0";
  by-version."strip-ansi"."3.0.0" = self.buildNodePackage {
    name = "strip-ansi-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.0.tgz";
      name = "strip-ansi-3.0.0.tgz";
      sha1 = "7510b665567ca914ccb5d7e072763ac968be3724";
    };
    deps = {
      "ansi-regex-2.0.0" = self.by-version."ansi-regex"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-json-comments"."~1.0.4" =
    self.by-version."strip-json-comments"."1.0.4";
  by-version."strip-json-comments"."1.0.4" = self.buildNodePackage {
    name = "strip-json-comments-1.0.4";
    version = "1.0.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
      name = "strip-json-comments-1.0.4.tgz";
      sha1 = "1e15fbcac97d3ee99bf2d73b4c656b082bbafb91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."subarg"."^1.0.0" =
    self.by-version."subarg"."1.0.0";
  by-version."subarg"."1.0.0" = self.buildNodePackage {
    name = "subarg-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/subarg/-/subarg-1.0.0.tgz";
      name = "subarg-1.0.0.tgz";
      sha1 = "f62cf17581e996b48fc965699f54c06ae268b8d2";
    };
    deps = {
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."success-symbol"."^0.1.0" =
    self.by-version."success-symbol"."0.1.0";
  by-version."success-symbol"."0.1.0" = self.buildNodePackage {
    name = "success-symbol-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/success-symbol/-/success-symbol-0.1.0.tgz";
      name = "success-symbol-0.1.0.tgz";
      sha1 = "24022e486f3bf1cdca094283b769c472d3b72897";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^2.0.0" =
    self.by-version."supports-color"."2.0.0";
  by-version."supports-color"."2.0.0" = self.buildNodePackage {
    name = "supports-color-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz";
      name = "supports-color-2.0.0.tgz";
      sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^3.1.0" =
    self.by-version."supports-color"."3.1.2";
  by-version."supports-color"."3.1.2" = self.buildNodePackage {
    name = "supports-color-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-3.1.2.tgz";
      name = "supports-color-3.1.2.tgz";
      sha1 = "72a262894d9d408b956ca05ff37b2ed8a6e2a2d5";
    };
    deps = {
      "has-flag-1.0.0" = self.by-version."has-flag"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^3.1.1" =
    self.by-version."supports-color"."3.1.2";
  by-spec."syntax-error"."^1.1.1" =
    self.by-version."syntax-error"."1.1.4";
  by-version."syntax-error"."1.1.4" = self.buildNodePackage {
    name = "syntax-error-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/syntax-error/-/syntax-error-1.1.4.tgz";
      name = "syntax-error-1.1.4.tgz";
      sha1 = "1ad035e1b4f72fe16186510ac24f055c48002f6d";
    };
    deps = {
      "acorn-1.2.2" = self.by-version."acorn"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tapable"."^0.1.8" =
    self.by-version."tapable"."0.1.10";
  by-version."tapable"."0.1.10" = self.buildNodePackage {
    name = "tapable-0.1.10";
    version = "0.1.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tapable/-/tapable-0.1.10.tgz";
      name = "tapable-0.1.10.tgz";
      sha1 = "29c35707c2b70e50d07482b5d202e8ed446dafd4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tapable"."~0.1.8" =
    self.by-version."tapable"."0.1.10";
  by-spec."tar"."~2.2.0" =
    self.by-version."tar"."2.2.1";
  by-version."tar"."2.2.1" = self.buildNodePackage {
    name = "tar-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar/-/tar-2.2.1.tgz";
      name = "tar-2.2.1.tgz";
      sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
    };
    deps = {
      "block-stream-0.0.8" = self.by-version."block-stream"."0.0.8";
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar"."~2.2.1" =
    self.by-version."tar"."2.2.1";
  by-spec."tar-fs"."^1.4.1" =
    self.by-version."tar-fs"."1.8.1";
  by-version."tar-fs"."1.8.1" = self.buildNodePackage {
    name = "tar-fs-1.8.1";
    version = "1.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-fs/-/tar-fs-1.8.1.tgz";
      name = "tar-fs-1.8.1.tgz";
      sha1 = "3ee6cfa351633775eaa75e3af6ec307e9eaa403c";
    };
    deps = {
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "pump-1.0.1" = self.by-version."pump"."1.0.1";
      "tar-stream-1.3.1" = self.by-version."tar-stream"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar-pack"."~3.1.0" =
    self.by-version."tar-pack"."3.1.1";
  by-version."tar-pack"."3.1.1" = self.buildNodePackage {
    name = "tar-pack-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-pack/-/tar-pack-3.1.1.tgz";
      name = "tar-pack-3.1.1.tgz";
      sha1 = "2ae872f526313b6ae3c279c0353bf69bd51af76f";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "uid-number-0.0.3" = self.by-version."uid-number"."0.0.3";
      "once-1.1.1" = self.by-version."once"."1.1.1";
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "rimraf-2.4.4" = self.by-version."rimraf"."2.4.4";
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "fstream-ignore-1.0.3" = self.by-version."fstream-ignore"."1.0.3";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar-stream"."^1.1.2" =
    self.by-version."tar-stream"."1.3.1";
  by-version."tar-stream"."1.3.1" = self.buildNodePackage {
    name = "tar-stream-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-stream/-/tar-stream-1.3.1.tgz";
      name = "tar-stream-1.3.1.tgz";
      sha1 = "490ec2ad1ec5823fce63f18bb904c7469cd70897";
    };
    deps = {
      "bl-1.0.0" = self.by-version."bl"."1.0.0";
      "end-of-stream-1.1.0" = self.by-version."end-of-stream"."1.1.0";
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."temp"."^0.8.1" =
    self.by-version."temp"."0.8.3";
  by-version."temp"."0.8.3" = self.buildNodePackage {
    name = "temp-0.8.3";
    version = "0.8.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/temp/-/temp-0.8.3.tgz";
      name = "temp-0.8.3.tgz";
      sha1 = "e0c6bc4d26b903124410e4fed81103014dfc1f59";
    };
    deps = {
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."throttleit"."~0.0.2" =
    self.by-version."throttleit"."0.0.2";
  by-version."throttleit"."0.0.2" = self.buildNodePackage {
    name = "throttleit-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/throttleit/-/throttleit-0.0.2.tgz";
      name = "throttleit-0.0.2.tgz";
      sha1 = "cfedf88e60c00dd9697b61fdd2a8343a9b680eaf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through".">=2.2.7 <3" =
    self.by-version."through"."2.3.8";
  by-version."through"."2.3.8" = self.buildNodePackage {
    name = "through-2.3.8";
    version = "2.3.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through/-/through-2.3.8.tgz";
      name = "through-2.3.8.tgz";
      sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through"."^2.3.6" =
    self.by-version."through"."2.3.8";
  by-spec."through2"."^0.6.2" =
    self.by-version."through2"."0.6.5";
  by-version."through2"."0.6.5" = self.buildNodePackage {
    name = "through2-0.6.5";
    version = "0.6.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-0.6.5.tgz";
      name = "through2-0.6.5.tgz";
      sha1 = "41ab9c67b29d57209071410e1d7a7a968cd3ad48";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through2"."^0.6.3" =
    self.by-version."through2"."0.6.5";
  by-spec."through2"."^1.0.0" =
    self.by-version."through2"."1.1.1";
  by-version."through2"."1.1.1" = self.buildNodePackage {
    name = "through2-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-1.1.1.tgz";
      name = "through2-1.1.1.tgz";
      sha1 = "0847cbc4449f3405574dbdccd9bb841b83ac3545";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through2"."^2.0.0" =
    self.by-version."through2"."2.0.0";
  by-version."through2"."2.0.0" = self.buildNodePackage {
    name = "through2-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-2.0.0.tgz";
      name = "through2-2.0.0.tgz";
      sha1 = "f41a1c31df5e129e4314446f66eca05cd6a30480";
    };
    deps = {
      "readable-stream-2.0.4" = self.by-version."readable-stream"."2.0.4";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through2"."~0.5.1" =
    self.by-version."through2"."0.5.1";
  by-version."through2"."0.5.1" = self.buildNodePackage {
    name = "through2-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-0.5.1.tgz";
      name = "through2-0.5.1.tgz";
      sha1 = "dfdd012eb9c700e2323fd334f38ac622ab372da7";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "xtend-3.0.0" = self.by-version."xtend"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."timed-out"."^2.0.0" =
    self.by-version."timed-out"."2.0.0";
  by-version."timed-out"."2.0.0" = self.buildNodePackage {
    name = "timed-out-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/timed-out/-/timed-out-2.0.0.tgz";
      name = "timed-out-2.0.0.tgz";
      sha1 = "f38b0ae81d3747d628001f41dafc652ace671c0a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."timers-browserify"."^1.0.1" =
    self.by-version."timers-browserify"."1.4.1";
  by-version."timers-browserify"."1.4.1" = self.buildNodePackage {
    name = "timers-browserify-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/timers-browserify/-/timers-browserify-1.4.1.tgz";
      name = "timers-browserify-1.4.1.tgz";
      sha1 = "bf8afeb7b50d6c500e2b3e0a5d759c4005e985d7";
    };
    deps = {
      "process-0.11.2" = self.by-version."process"."0.11.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tmp"."0.0.24" =
    self.by-version."tmp"."0.0.24";
  by-version."tmp"."0.0.24" = self.buildNodePackage {
    name = "tmp-0.0.24";
    version = "0.0.24";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tmp/-/tmp-0.0.24.tgz";
      name = "tmp-0.0.24.tgz";
      sha1 = "d6a5e198d14a9835cc6f2d7c3d9e302428c8cf12";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."touch"."0.0.3" =
    self.by-version."touch"."0.0.3";
  by-version."touch"."0.0.3" = self.buildNodePackage {
    name = "touch-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/touch/-/touch-0.0.3.tgz";
      name = "touch-0.0.3.tgz";
      sha1 = "51aef3d449571d4f287a5d87c9c8b49181a0db1d";
    };
    deps = {
      "nopt-1.0.10" = self.by-version."nopt"."1.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."touch"."^1.0.0" =
    self.by-version."touch"."1.0.0";
  by-version."touch"."1.0.0" = self.buildNodePackage {
    name = "touch-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/touch/-/touch-1.0.0.tgz";
      name = "touch-1.0.0.tgz";
      sha1 = "449cbe2dbae5a8c8038e30d71fa0ff464947c4de";
    };
    deps = {
      "nopt-1.0.10" = self.by-version."nopt"."1.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie".">=0.12.0" =
    self.by-version."tough-cookie"."2.2.1";
  by-version."tough-cookie"."2.2.1" = self.buildNodePackage {
    name = "tough-cookie-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tough-cookie/-/tough-cookie-2.2.1.tgz";
      name = "tough-cookie-2.2.1.tgz";
      sha1 = "3b0516b799e70e8164436a1446e7e5877fda118e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie"."^2.0.0" =
    self.by-version."tough-cookie"."2.2.1";
  by-spec."tough-cookie"."~2.2.0" =
    self.by-version."tough-cookie"."2.2.1";
  by-spec."traverse".">=0.3.0 <0.4" =
    self.by-version."traverse"."0.3.9";
  by-version."traverse"."0.3.9" = self.buildNodePackage {
    name = "traverse-0.3.9";
    version = "0.3.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/traverse/-/traverse-0.3.9.tgz";
      name = "traverse-0.3.9.tgz";
      sha1 = "717b8f220cc0bb7b44e40514c22b2e8bbc70d8b9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tree-kill"."^1.0.0" =
    self.by-version."tree-kill"."1.0.0";
  by-version."tree-kill"."1.0.0" = self.buildNodePackage {
    name = "tree-kill-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tree-kill/-/tree-kill-1.0.0.tgz";
      name = "tree-kill-1.0.0.tgz";
      sha1 = "6ef2cff673c85cfc88cb2cd3bbb1f3cc82a963ab";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tty-browserify"."0.0.0" =
    self.by-version."tty-browserify"."0.0.0";
  by-version."tty-browserify"."0.0.0" = self.buildNodePackage {
    name = "tty-browserify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tty-browserify/-/tty-browserify-0.0.0.tgz";
      name = "tty-browserify-0.0.0.tgz";
      sha1 = "a157ba402da24e9bf957f9aa69d524eed42901a6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tty-browserify"."~0.0.0" =
    self.by-version."tty-browserify"."0.0.0";
  by-spec."tunnel-agent"."~0.4.0" =
    self.by-version."tunnel-agent"."0.4.1";
  by-version."tunnel-agent"."0.4.1" = self.buildNodePackage {
    name = "tunnel-agent-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.1.tgz";
      name = "tunnel-agent-0.4.1.tgz";
      sha1 = "bbeecff4d679ce753db9462761a88dfcec3c5ab3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tunnel-agent"."~0.4.1" =
    self.by-version."tunnel-agent"."0.4.1";
  by-spec."tweetnacl".">=0.13.0 <1.0.0" =
    self.by-version."tweetnacl"."0.13.2";
  by-version."tweetnacl"."0.13.2" = self.buildNodePackage {
    name = "tweetnacl-0.13.2";
    version = "0.13.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tweetnacl/-/tweetnacl-0.13.2.tgz";
      name = "tweetnacl-0.13.2.tgz";
      sha1 = "453161770469d45cd266c36404e2bc99a8fa9944";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-is"."~1.6.6" =
    self.by-version."type-is"."1.6.10";
  by-version."type-is"."1.6.10" = self.buildNodePackage {
    name = "type-is-1.6.10";
    version = "1.6.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-is/-/type-is-1.6.10.tgz";
      name = "type-is-1.6.10.tgz";
      sha1 = "d27e995b20d8c2a543f3420573f690a3929fd75a";
    };
    deps = {
      "media-typer-0.3.0" = self.by-version."media-typer"."0.3.0";
      "mime-types-2.1.8" = self.by-version."mime-types"."2.1.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."typedarray"."~0.0.5" =
    self.by-version."typedarray"."0.0.6";
  by-version."typedarray"."0.0.6" = self.buildNodePackage {
    name = "typedarray-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/typedarray/-/typedarray-0.0.6.tgz";
      name = "typedarray-0.0.6.tgz";
      sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."~2.3" =
    self.by-version."uglify-js"."2.3.6";
  by-version."uglify-js"."2.3.6" = self.buildNodePackage {
    name = "uglify-js-2.3.6";
    version = "2.3.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-2.3.6.tgz";
      name = "uglify-js-2.3.6.tgz";
      sha1 = "fa0984770b428b7a9b2a8058f46355d14fef211a";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."~2.6.0" =
    self.by-version."uglify-js"."2.6.1";
  by-version."uglify-js"."2.6.1" = self.buildNodePackage {
    name = "uglify-js-2.6.1";
    version = "2.6.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-2.6.1.tgz";
      name = "uglify-js-2.6.1.tgz";
      sha1 = "edbbe1888ba3525ded3a7bf836b30b3405d3161b";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "source-map-0.5.3" = self.by-version."source-map"."0.5.3";
      "uglify-to-browserify-1.0.2" = self.by-version."uglify-to-browserify"."1.0.2";
      "yargs-3.10.0" = self.by-version."yargs"."3.10.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-to-browserify"."~1.0.0" =
    self.by-version."uglify-to-browserify"."1.0.2";
  by-version."uglify-to-browserify"."1.0.2" = self.buildNodePackage {
    name = "uglify-to-browserify-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
      name = "uglify-to-browserify-1.0.2.tgz";
      sha1 = "6e0924d6bda6b5afe349e39a6d632850a0f882b7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uid-number"."0.0.3" =
    self.by-version."uid-number"."0.0.3";
  by-version."uid-number"."0.0.3" = self.buildNodePackage {
    name = "uid-number-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uid-number/-/uid-number-0.0.3.tgz";
      name = "uid-number-0.0.3.tgz";
      sha1 = "cefb0fa138d8d8098da71a40a0d04a8327d6e1cc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."umd"."^3.0.0" =
    self.by-version."umd"."3.0.1";
  by-version."umd"."3.0.1" = self.buildNodePackage {
    name = "umd-3.0.1";
    version = "3.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/umd/-/umd-3.0.1.tgz";
      name = "umd-3.0.1.tgz";
      sha1 = "8ae556e11011f63c2596708a8837259f01b3d60e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."unpipe"."~1.0.0" =
    self.by-version."unpipe"."1.0.0";
  by-version."unpipe"."1.0.0" = self.buildNodePackage {
    name = "unpipe-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
      name = "unpipe-1.0.0.tgz";
      sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."untildify"."2.1.0" =
    self.by-version."untildify"."2.1.0";
  by-version."untildify"."2.1.0" = self.buildNodePackage {
    name = "untildify-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/untildify/-/untildify-2.1.0.tgz";
      name = "untildify-2.1.0.tgz";
      sha1 = "17eb2807987f76952e9c0485fc311d06a826a2e0";
    };
    deps = {
      "os-homedir-1.0.1" = self.by-version."os-homedir"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."update-notifier"."^0.3.0" =
    self.by-version."update-notifier"."0.3.2";
  by-version."update-notifier"."0.3.2" = self.buildNodePackage {
    name = "update-notifier-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/update-notifier/-/update-notifier-0.3.2.tgz";
      name = "update-notifier-0.3.2.tgz";
      sha1 = "22a8735baadef3320e2db928f693da898dc87777";
    };
    deps = {
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "configstore-0.3.2" = self.by-version."configstore"."0.3.2";
      "is-npm-1.0.0" = self.by-version."is-npm"."1.0.0";
      "latest-version-1.0.1" = self.by-version."latest-version"."1.0.1";
      "semver-diff-2.1.0" = self.by-version."semver-diff"."2.1.0";
      "string-length-1.0.1" = self.by-version."string-length"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."url"."~0.10.1" =
    self.by-version."url"."0.10.3";
  by-version."url"."0.10.3" = self.buildNodePackage {
    name = "url-0.10.3";
    version = "0.10.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/url/-/url-0.10.3.tgz";
      name = "url-0.10.3.tgz";
      sha1 = "021e4d9c7705f21bbf37d03ceb58767402774c64";
    };
    deps = {
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
      "querystring-0.2.0" = self.by-version."querystring"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."url"."~0.11.0" =
    self.by-version."url"."0.11.0";
  by-version."url"."0.11.0" = self.buildNodePackage {
    name = "url-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/url/-/url-0.11.0.tgz";
      name = "url-0.11.0.tgz";
      sha1 = "3838e97cfc60521eb73c525a8e55bfdd9e2e28f1";
    };
    deps = {
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
      "querystring-0.2.0" = self.by-version."querystring"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."url-parse"."1.0.x" =
    self.by-version."url-parse"."1.0.5";
  by-version."url-parse"."1.0.5" = self.buildNodePackage {
    name = "url-parse-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/url-parse/-/url-parse-1.0.5.tgz";
      name = "url-parse-1.0.5.tgz";
      sha1 = "0854860422afdcfefeb6c965c662d4800169927b";
    };
    deps = {
      "querystringify-0.0.3" = self.by-version."querystringify"."0.0.3";
      "requires-port-1.0.0" = self.by-version."requires-port"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."url-parse"."^1.0.1" =
    self.by-version."url-parse"."1.0.5";
  by-spec."user-home"."^1.0.0" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = self.buildNodePackage {
    name = "user-home-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
      name = "user-home-1.1.1.tgz";
      sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."user-home"."^1.1.0" =
    self.by-version."user-home"."1.1.1";
  by-spec."util"."0.10.3" =
    self.by-version."util"."0.10.3";
  by-version."util"."0.10.3" = self.buildNodePackage {
    name = "util-0.10.3";
    version = "0.10.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/util/-/util-0.10.3.tgz";
      name = "util-0.10.3.tgz";
      sha1 = "7afb1afe50805246489e3db7fe0ed379336ac0f9";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."util"."~0.10.1" =
    self.by-version."util"."0.10.3";
  by-spec."util"."~0.10.3" =
    self.by-version."util"."0.10.3";
  by-spec."util-deprecate"."~1.0.1" =
    self.by-version."util-deprecate"."1.0.2";
  by-version."util-deprecate"."1.0.2" = self.buildNodePackage {
    name = "util-deprecate-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
      name = "util-deprecate-1.0.2.tgz";
      sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."utils-merge"."1.0.0" =
    self.by-version."utils-merge"."1.0.0";
  by-version."utils-merge"."1.0.0" = self.buildNodePackage {
    name = "utils-merge-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utils-merge/-/utils-merge-1.0.0.tgz";
      name = "utils-merge-1.0.0.tgz";
      sha1 = "0294fb922bb9375153541c4f7096231f287c8af8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uuid"."^2.0.1" =
    self.by-version."uuid"."2.0.1";
  by-version."uuid"."2.0.1" = self.buildNodePackage {
    name = "uuid-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uuid/-/uuid-2.0.1.tgz";
      name = "uuid-2.0.1.tgz";
      sha1 = "c2a30dedb3e535d72ccf82e343941a50ba8533ac";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vary"."~1.0.1" =
    self.by-version."vary"."1.0.1";
  by-version."vary"."1.0.1" = self.buildNodePackage {
    name = "vary-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vary/-/vary-1.0.1.tgz";
      name = "vary-1.0.1.tgz";
      sha1 = "99e4981566a286118dfb2b817357df7993376d10";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vary"."~1.1.0" =
    self.by-version."vary"."1.1.0";
  by-version."vary"."1.1.0" = self.buildNodePackage {
    name = "vary-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vary/-/vary-1.1.0.tgz";
      name = "vary-1.1.0.tgz";
      sha1 = "e1e5affbbd16ae768dd2674394b9ad3022653140";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ver-compare"."^0.1.1" =
    self.by-version."ver-compare"."0.1.1";
  by-version."ver-compare"."0.1.1" = self.buildNodePackage {
    name = "ver-compare-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ver-compare/-/ver-compare-0.1.1.tgz";
      name = "ver-compare-0.1.1.tgz";
      sha1 = "9217777f76b490768827e064e74298c9f946faf9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."verror"."1.3.6" =
    self.by-version."verror"."1.3.6";
  by-version."verror"."1.3.6" = self.buildNodePackage {
    name = "verror-1.3.6";
    version = "1.3.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/verror/-/verror-1.3.6.tgz";
      name = "verror-1.3.6.tgz";
      sha1 = "cff5df12946d297d2baaefaa2689e25be01c005c";
    };
    deps = {
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vm-browserify"."0.0.4" =
    self.by-version."vm-browserify"."0.0.4";
  by-version."vm-browserify"."0.0.4" = self.buildNodePackage {
    name = "vm-browserify-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vm-browserify/-/vm-browserify-0.0.4.tgz";
      name = "vm-browserify-0.0.4.tgz";
      sha1 = "5d7ea45bbef9e4a6ff65f95438e0a87c357d5a73";
    };
    deps = {
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vm-browserify"."~0.0.1" =
    self.by-version."vm-browserify"."0.0.4";
  by-spec."watchpack"."^0.2.1" =
    self.by-version."watchpack"."0.2.9";
  by-version."watchpack"."0.2.9" = self.buildNodePackage {
    name = "watchpack-0.2.9";
    version = "0.2.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/watchpack/-/watchpack-0.2.9.tgz";
      name = "watchpack-0.2.9.tgz";
      sha1 = "62eaa4ab5e5ba35fdfc018275626e3c0f5e3fb0b";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "chokidar-1.4.0" = self.by-version."chokidar"."1.4.0";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."watchpack"."^0.2.9" =
    self.by-version."watchpack"."0.2.9";
  by-spec."webpack".">=1.0.0 <3" =
    self.by-version."webpack"."1.12.9";
  by-version."webpack"."1.12.9" = self.buildNodePackage {
    name = "webpack-1.12.9";
    version = "1.12.9";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack/-/webpack-1.12.9.tgz";
      name = "webpack-1.12.9.tgz";
      sha1 = "2a031d66189839cc5cbf2c68f80566da2e14ff4e";
    };
    deps = {
      "async-1.5.0" = self.by-version."async"."1.5.0";
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "enhanced-resolve-0.9.1" = self.by-version."enhanced-resolve"."0.9.1";
      "esprima-2.7.0" = self.by-version."esprima"."2.7.0";
      "interpret-0.6.6" = self.by-version."interpret"."0.6.6";
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "node-libs-browser-0.5.3" = self.by-version."node-libs-browser"."0.5.3";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "tapable-0.1.10" = self.by-version."tapable"."0.1.10";
      "uglify-js-2.6.1" = self.by-version."uglify-js"."2.6.1";
      "watchpack-0.2.9" = self.by-version."watchpack"."0.2.9";
      "webpack-core-0.6.8" = self.by-version."webpack-core"."0.6.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack".">=1.3.0 <3" =
    self.by-version."webpack"."1.12.9";
  by-spec."webpack".">=1.3.0 >=1.11.0 <2.0.0" =
    self.by-version."webpack"."1.12.9";
  by-spec."webpack"."^1.11.0" =
    self.by-version."webpack"."1.12.9";
  by-spec."webpack-core"."~0.6.0" =
    self.by-version."webpack-core"."0.6.8";
  by-version."webpack-core"."0.6.8" = self.buildNodePackage {
    name = "webpack-core-0.6.8";
    version = "0.6.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-core/-/webpack-core-0.6.8.tgz";
      name = "webpack-core-0.6.8.tgz";
      sha1 = "edf9135de00a6a3c26dd0f14b208af0aa4af8d0a";
    };
    deps = {
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "source-list-map-0.1.5" = self.by-version."source-list-map"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-middleware"."^1.4.0" =
    self.by-version."webpack-dev-middleware"."1.4.0";
  by-version."webpack-dev-middleware"."1.4.0" = self.buildNodePackage {
    name = "webpack-dev-middleware-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-dev-middleware/-/webpack-dev-middleware-1.4.0.tgz";
      name = "webpack-dev-middleware-1.4.0.tgz";
      sha1 = "326ec7725cde19692e70edb1ff8a570312ee6830";
    };
    deps = {
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."webpack"."1.12.9"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-server"."^1.10.1" =
    self.by-version."webpack-dev-server"."1.14.0";
  by-version."webpack-dev-server"."1.14.0" = self.buildNodePackage {
    name = "webpack-dev-server-1.14.0";
    version = "1.14.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-dev-server/-/webpack-dev-server-1.14.0.tgz";
      name = "webpack-dev-server-1.14.0.tgz";
      sha1 = "ace376e571a84162f229ba6598e9180f7efc9eec";
    };
    deps = {
      "compression-1.6.0" = self.by-version."compression"."1.6.0";
      "connect-history-api-fallback-1.1.0" = self.by-version."connect-history-api-fallback"."1.1.0";
      "express-4.13.3" = self.by-version."express"."4.13.3";
      "http-proxy-1.12.0" = self.by-version."http-proxy"."1.12.0";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "serve-index-1.7.2" = self.by-version."serve-index"."1.7.2";
      "sockjs-0.3.15" = self.by-version."sockjs"."0.3.15";
      "sockjs-client-1.0.3" = self.by-version."sockjs-client"."1.0.3";
      "stream-cache-0.0.2" = self.by-version."stream-cache"."0.0.2";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "webpack-dev-middleware-1.4.0" = self.by-version."webpack-dev-middleware"."1.4.0";
      "webpack-1.12.9" = self.by-version."webpack"."1.12.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."websocket-driver".">=0.3.6" =
    self.by-version."websocket-driver"."0.6.3";
  by-version."websocket-driver"."0.6.3" = self.buildNodePackage {
    name = "websocket-driver-0.6.3";
    version = "0.6.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/websocket-driver/-/websocket-driver-0.6.3.tgz";
      name = "websocket-driver-0.6.3.tgz";
      sha1 = "fd21911bb46dee34ad85bdbc5676bf9024ed087b";
    };
    deps = {
      "websocket-extensions-0.1.1" = self.by-version."websocket-extensions"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."websocket-driver".">=0.5.1" =
    self.by-version."websocket-driver"."0.6.3";
  by-spec."websocket-extensions".">=0.1.1" =
    self.by-version."websocket-extensions"."0.1.1";
  by-version."websocket-extensions"."0.1.1" = self.buildNodePackage {
    name = "websocket-extensions-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/websocket-extensions/-/websocket-extensions-0.1.1.tgz";
      name = "websocket-extensions-0.1.1.tgz";
      sha1 = "76899499c184b6ef754377c2dbb0cd6cb55d29e7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."which"."^1.0.8" =
    self.by-version."which"."1.2.0";
  by-version."which"."1.2.0" = self.buildNodePackage {
    name = "which-1.2.0";
    version = "1.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/which/-/which-1.2.0.tgz";
      name = "which-1.2.0.tgz";
      sha1 = "a5c8df5abc792f6ce9652c8d9ca8f3a91b77e59d";
    };
    deps = {
      "is-absolute-0.1.7" = self.by-version."is-absolute"."0.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."win-release"."^1.0.0" =
    self.by-version."win-release"."1.1.1";
  by-version."win-release"."1.1.1" = self.buildNodePackage {
    name = "win-release-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/win-release/-/win-release-1.1.1.tgz";
      name = "win-release-1.1.1.tgz";
      sha1 = "5fa55e02be7ca934edfc12665632e849b72e5209";
    };
    deps = {
      "semver-5.1.0" = self.by-version."semver"."5.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."window-size"."0.1.0" =
    self.by-version."window-size"."0.1.0";
  by-version."window-size"."0.1.0" = self.buildNodePackage {
    name = "window-size-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/window-size/-/window-size-0.1.0.tgz";
      name = "window-size-0.1.0.tgz";
      sha1 = "5438cd2ea93b202efa3a19fe8887aee7c94f9c9d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wordwrap"."0.0.2" =
    self.by-version."wordwrap"."0.0.2";
  by-version."wordwrap"."0.0.2" = self.buildNodePackage {
    name = "wordwrap-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wordwrap/-/wordwrap-0.0.2.tgz";
      name = "wordwrap-0.0.2.tgz";
      sha1 = "b79669bb42ecb409f83d583cad52ca17eaa1643f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wordwrap"."~0.0.2" =
    self.by-version."wordwrap"."0.0.3";
  by-version."wordwrap"."0.0.3" = self.buildNodePackage {
    name = "wordwrap-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
      name = "wordwrap-0.0.3.tgz";
      sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wrappy"."1" =
    self.by-version."wrappy"."1.0.1";
  by-version."wrappy"."1.0.1" = self.buildNodePackage {
    name = "wrappy-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wrappy/-/wrappy-1.0.1.tgz";
      name = "wrappy-1.0.1.tgz";
      sha1 = "1e65969965ccbc2db4548c6b84a6f2c5aedd4739";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."write-file-atomic"."^1.1.2" =
    self.by-version."write-file-atomic"."1.1.4";
  by-version."write-file-atomic"."1.1.4" = self.buildNodePackage {
    name = "write-file-atomic-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/write-file-atomic/-/write-file-atomic-1.1.4.tgz";
      name = "write-file-atomic-1.1.4.tgz";
      sha1 = "b1f52dc2e8dc0e3cb04d187a25f758a38a90ca3b";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "imurmurhash-0.1.4" = self.by-version."imurmurhash"."0.1.4";
      "slide-1.1.6" = self.by-version."slide"."1.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xdg-basedir"."^1.0.0" =
    self.by-version."xdg-basedir"."1.0.1";
  by-version."xdg-basedir"."1.0.1" = self.buildNodePackage {
    name = "xdg-basedir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xdg-basedir/-/xdg-basedir-1.0.1.tgz";
      name = "xdg-basedir-1.0.1.tgz";
      sha1 = "14ff8f63a4fdbcb05d5b6eea22b36f3033b9f04e";
    };
    deps = {
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xdg-basedir"."^2.0.0" =
    self.by-version."xdg-basedir"."2.0.0";
  by-version."xdg-basedir"."2.0.0" = self.buildNodePackage {
    name = "xdg-basedir-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xdg-basedir/-/xdg-basedir-2.0.0.tgz";
      name = "xdg-basedir-2.0.0.tgz";
      sha1 = "edbc903cc385fc04523d966a335504b5504d1bd2";
    };
    deps = {
      "os-homedir-1.0.1" = self.by-version."os-homedir"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xtend".">=4.0.0 <4.1.0-0" =
    self.by-version."xtend"."4.0.1";
  by-version."xtend"."4.0.1" = self.buildNodePackage {
    name = "xtend-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-4.0.1.tgz";
      name = "xtend-4.0.1.tgz";
      sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xtend"."^4.0.0" =
    self.by-version."xtend"."4.0.1";
  by-spec."xtend"."~3.0.0" =
    self.by-version."xtend"."3.0.0";
  by-version."xtend"."3.0.0" = self.buildNodePackage {
    name = "xtend-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-3.0.0.tgz";
      name = "xtend-3.0.0.tgz";
      sha1 = "5cce7407baf642cba7becda568111c493f59665a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xtend"."~4.0.0" =
    self.by-version."xtend"."4.0.1";
  by-spec."yargs"."~3.10.0" =
    self.by-version."yargs"."3.10.0";
  by-version."yargs"."3.10.0" = self.buildNodePackage {
    name = "yargs-3.10.0";
    version = "3.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yargs/-/yargs-3.10.0.tgz";
      name = "yargs-3.10.0.tgz";
      sha1 = "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1";
    };
    deps = {
      "camelcase-1.2.1" = self.by-version."camelcase"."1.2.1";
      "cliui-2.1.0" = self.by-version."cliui"."2.1.0";
      "decamelize-1.1.1" = self.by-version."decamelize"."1.1.1";
      "window-size-0.1.0" = self.by-version."window-size"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}

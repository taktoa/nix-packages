{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."Base64"."~0.2.0" =
    self.by-version."Base64"."0.2.1";
  by-version."Base64"."0.2.1" = self.buildNodePackage {
    name = "Base64-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/Base64/-/Base64-0.2.1.tgz";
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
      url = "https://registry.npmjs.org/JSONStream/-/JSONStream-0.10.0.tgz";
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
    self.by-version."JSONStream"."1.1.2";
  by-version."JSONStream"."1.1.2" = self.buildNodePackage {
    name = "JSONStream-1.1.2";
    version = "1.1.2";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/JSONStream/-/JSONStream-1.1.2.tgz";
      name = "JSONStream-1.1.2.tgz";
      sha1 = "7c01816613d7e5fe41e913edb3b7f359fddbfbf8";
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
    self.by-version."abbrev"."1.0.9";
  by-version."abbrev"."1.0.9" = self.buildNodePackage {
    name = "abbrev-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/abbrev/-/abbrev-1.0.9.tgz";
      name = "abbrev-1.0.9.tgz";
      sha1 = "91b4792588a7738c25f35dd6f63752a2f8776135";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."accepts"."~1.3.3" =
    self.by-version."accepts"."1.3.3";
  by-version."accepts"."1.3.3" = self.buildNodePackage {
    name = "accepts-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/accepts/-/accepts-1.3.3.tgz";
      name = "accepts-1.3.3.tgz";
      sha1 = "c3ca7434938648c3e0d9c1e328dd68b622c284ca";
    };
    deps = {
      "mime-types-2.1.11" = self.by-version."mime-types"."2.1.11";
      "negotiator-0.6.1" = self.by-version."negotiator"."0.6.1";
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
      url = "https://registry.npmjs.org/acorn/-/acorn-1.2.2.tgz";
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
  by-spec."acorn"."^2.7.0" =
    self.by-version."acorn"."2.7.0";
  by-version."acorn"."2.7.0" = self.buildNodePackage {
    name = "acorn-2.7.0";
    version = "2.7.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/acorn/-/acorn-2.7.0.tgz";
      name = "acorn-2.7.0.tgz";
      sha1 = "ab6e7d9d886aaca8b085bc3312b79a198433f0e7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."acorn"."^3.0.0" =
    self.by-version."acorn"."3.2.0";
  by-version."acorn"."3.2.0" = self.buildNodePackage {
    name = "acorn-3.2.0";
    version = "3.2.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/acorn/-/acorn-3.2.0.tgz";
      name = "acorn-3.2.0.tgz";
      sha1 = "7a82989ef6f063a237ababaf8df20d2965184b9f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."acorn"."^3.2.0" =
    self.by-version."acorn"."3.2.0";
  by-spec."align-text"."^0.1.1" =
    self.by-version."align-text"."0.1.4";
  by-version."align-text"."0.1.4" = self.buildNodePackage {
    name = "align-text-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/align-text/-/align-text-0.1.4.tgz";
      name = "align-text-0.1.4.tgz";
      sha1 = "0cd90a561093f35d0a99256c22b7069433fad117";
    };
    deps = {
      "kind-of-3.0.3" = self.by-version."kind-of"."3.0.3";
      "longest-1.0.1" = self.by-version."longest"."1.0.1";
      "repeat-string-1.5.4" = self.by-version."repeat-string"."1.5.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."align-text"."^0.1.3" =
    self.by-version."align-text"."0.1.4";
  by-spec."amdefine".">=0.0.4" =
    self.by-version."amdefine"."1.0.0";
  by-version."amdefine"."1.0.0" = self.buildNodePackage {
    name = "amdefine-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/amdefine/-/amdefine-1.0.0.tgz";
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
    self.by-version."ansi"."0.3.1";
  by-version."ansi"."0.3.1" = self.buildNodePackage {
    name = "ansi-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi/-/ansi-0.3.1.tgz";
      name = "ansi-0.3.1.tgz";
      sha1 = "0c42d4fb17160d5a9af1e484bace1c66922c1b21";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi"."~0.3.1" =
    self.by-version."ansi"."0.3.1";
  by-spec."ansi-regex"."^2.0.0" =
    self.by-version."ansi-regex"."2.0.0";
  by-version."ansi-regex"."2.0.0" = self.buildNodePackage {
    name = "ansi-regex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.0.0.tgz";
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
  by-spec."ansi-styles"."^2.2.1" =
    self.by-version."ansi-styles"."2.2.1";
  by-version."ansi-styles"."2.2.1" = self.buildNodePackage {
    name = "ansi-styles-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz";
      name = "ansi-styles-2.2.1.tgz";
      sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
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
      url = "https://registry.npmjs.org/ansicolors/-/ansicolors-0.2.1.tgz";
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
      url = "https://registry.npmjs.org/anymatch/-/anymatch-1.3.0.tgz";
      name = "anymatch-1.3.0.tgz";
      sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
    };
    deps = {
      "arrify-1.0.1" = self.by-version."arrify"."1.0.1";
      "micromatch-2.3.10" = self.by-version."micromatch"."2.3.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."are-we-there-yet"."~1.1.2" =
    self.by-version."are-we-there-yet"."1.1.2";
  by-version."are-we-there-yet"."1.1.2" = self.buildNodePackage {
    name = "are-we-there-yet-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.1.2.tgz";
      name = "are-we-there-yet-1.1.2.tgz";
      sha1 = "80e470e95a084794fe1899262c5667c6e88de1b3";
    };
    deps = {
      "delegates-1.0.0" = self.by-version."delegates"."1.0.0";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
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
      url = "https://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/arr-flatten/-/arr-flatten-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/array-filter/-/array-filter-0.0.1.tgz";
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
      url = "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz";
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
      url = "https://registry.npmjs.org/array-map/-/array-map-0.0.0.tgz";
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
      url = "https://registry.npmjs.org/array-reduce/-/array-reduce-0.0.0.tgz";
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
      url = "https://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz";
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
    self.by-version."arrify"."1.0.1";
  by-version."arrify"."1.0.1" = self.buildNodePackage {
    name = "arrify-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/arrify/-/arrify-1.0.1.tgz";
      name = "arrify-1.0.1.tgz";
      sha1 = "898508da2226f380df904728456849c1501a4b0d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asn1"."~0.2.3" =
    self.by-version."asn1"."0.2.3";
  by-version."asn1"."0.2.3" = self.buildNodePackage {
    name = "asn1-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
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
    self.by-version."asn1.js"."4.6.2";
  by-version."asn1.js"."4.6.2" = self.buildNodePackage {
    name = "asn1.js-4.6.2";
    version = "4.6.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asn1.js/-/asn1.js-4.6.2.tgz";
      name = "asn1.js-4.6.2.tgz";
      sha1 = "c7c5a3444a45d40e7c56416400d00b33fd78247f";
    };
    deps = {
      "bn.js-4.11.4" = self.by-version."bn.js"."4.11.4";
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
    self.by-version."assert"."1.4.1";
  by-version."assert"."1.4.1" = self.buildNodePackage {
    name = "assert-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assert/-/assert-1.4.1.tgz";
      name = "assert-1.4.1.tgz";
      sha1 = "99912d591836b5a6f5b345c0f07eefc08fc65d91";
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
  by-version."assert"."1.3.0" = self.buildNodePackage {
    name = "assert-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assert/-/assert-1.3.0.tgz";
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
  by-spec."assert-plus"."^0.2.0" =
    self.by-version."assert-plus"."0.2.0";
  by-version."assert-plus"."0.2.0" = self.buildNodePackage {
    name = "assert-plus-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assert-plus/-/assert-plus-0.2.0.tgz";
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
  by-spec."assert-plus"."^1.0.0" =
    self.by-version."assert-plus"."1.0.0";
  by-version."assert-plus"."1.0.0" = self.buildNodePackage {
    name = "assert-plus-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz";
      name = "assert-plus-1.0.0.tgz";
      sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."astw"."^2.0.0" =
    self.by-version."astw"."2.0.0";
  by-version."astw"."2.0.0" = self.buildNodePackage {
    name = "astw-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/astw/-/astw-2.0.0.tgz";
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
  by-spec."async"."2.0.0-rc.4" =
    self.by-version."async"."2.0.0-rc.4";
  by-version."async"."2.0.0-rc.4" = self.buildNodePackage {
    name = "async-2.0.0-rc.4";
    version = "2.0.0-rc.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/async/-/async-2.0.0-rc.4.tgz";
      name = "async-2.0.0-rc.4.tgz";
      sha1 = "9b7f60724c17962a973f787419e0ebc5571dbad8";
    };
    deps = {
      "lodash-4.13.1" = self.by-version."lodash"."4.13.1";
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
      url = "https://registry.npmjs.org/async/-/async-0.9.2.tgz";
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
    self.by-version."async"."1.5.2";
  by-version."async"."1.5.2" = self.buildNodePackage {
    name = "async-1.5.2";
    version = "1.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/async/-/async-1.5.2.tgz";
      name = "async-1.5.2.tgz";
      sha1 = "ec6a61ae56480c0c3cb241c95618e20892f9672a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^1.5.2" =
    self.by-version."async"."1.5.2";
  by-spec."async"."~0.2.6" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/async/-/async-0.2.10.tgz";
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
  by-spec."async-each"."^1.0.0" =
    self.by-version."async-each"."1.0.0";
  by-version."async-each"."1.0.0" = self.buildNodePackage {
    name = "async-each-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/async-each/-/async-each-1.0.0.tgz";
      name = "async-each-1.0.0.tgz";
      sha1 = "b5319226c29d99277df63c8aee04093aa5f1d39f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."autosize"."^3.0.8" =
    self.by-version."autosize"."3.0.15";
  by-version."autosize"."3.0.15" = self.buildNodePackage {
    name = "autosize-3.0.15";
    version = "3.0.15";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/autosize/-/autosize-3.0.15.tgz";
      name = "autosize-3.0.15.tgz";
      sha1 = "8a7e37fafa5f42a3f4f8f1153a7fb5e631e8cab5";
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
      url = "https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.6.0.tgz";
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
  by-spec."aws4"."^1.2.1" =
    self.by-version."aws4"."1.4.1";
  by-version."aws4"."1.4.1" = self.buildNodePackage {
    name = "aws4-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/aws4/-/aws4-1.4.1.tgz";
      name = "aws4-1.4.1.tgz";
      sha1 = "fde7d5292466d230e5ee0f4e038d9dfaab08fc61";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."balanced-match"."^0.4.1" =
    self.by-version."balanced-match"."0.4.1";
  by-version."balanced-match"."0.4.1" = self.buildNodePackage {
    name = "balanced-match-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/balanced-match/-/balanced-match-0.4.1.tgz";
      name = "balanced-match-0.4.1.tgz";
      sha1 = "19053e2e0748eadb379da6c09d455cf5e1039335";
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
      url = "https://registry.npmjs.org/base64-js/-/base64-js-0.0.8.tgz";
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
  by-spec."base64-js"."^1.0.2" =
    self.by-version."base64-js"."1.1.2";
  by-version."base64-js"."1.1.2" = self.buildNodePackage {
    name = "base64-js-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/base64-js/-/base64-js-1.1.2.tgz";
      name = "base64-js-1.1.2.tgz";
      sha1 = "d6400cac1c4c660976d90d07a04351d89395f5e8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."batch"."0.5.3" =
    self.by-version."batch"."0.5.3";
  by-version."batch"."0.5.3" = self.buildNodePackage {
    name = "batch-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/batch/-/batch-0.5.3.tgz";
      name = "batch-0.5.3.tgz";
      sha1 = "3f3414f380321743bfc1042f9a83ff1d5824d464";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."big.js"."^3.1.3" =
    self.by-version."big.js"."3.1.3";
  by-version."big.js"."3.1.3" = self.buildNodePackage {
    name = "big.js-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/big.js/-/big.js-3.1.3.tgz";
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
  by-spec."binary-extensions"."^1.0.0" =
    self.by-version."binary-extensions"."1.4.1";
  by-version."binary-extensions"."1.4.1" = self.buildNodePackage {
    name = "binary-extensions-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/binary-extensions/-/binary-extensions-1.4.1.tgz";
      name = "binary-extensions-1.4.1.tgz";
      sha1 = "be94c78b44d9f9c336d0de3088545d5efa8511a8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."~1.1.2" =
    self.by-version."bl"."1.1.2";
  by-version."bl"."1.1.2" = self.buildNodePackage {
    name = "bl-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bl/-/bl-1.1.2.tgz";
      name = "bl-1.1.2.tgz";
      sha1 = "fdca871a99713aa00d19e3bbba41c44787a65398";
    };
    deps = {
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."block-stream"."*" =
    self.by-version."block-stream"."0.0.9";
  by-version."block-stream"."0.0.9" = self.buildNodePackage {
    name = "block-stream-0.0.9";
    version = "0.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/block-stream/-/block-stream-0.0.9.tgz";
      name = "block-stream-0.0.9.tgz";
      sha1 = "13ebfe778a03205cfe03751481ebb4b3300c126a";
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
  by-spec."bn.js"."^4.0.0" =
    self.by-version."bn.js"."4.11.4";
  by-version."bn.js"."4.11.4" = self.buildNodePackage {
    name = "bn.js-4.11.4";
    version = "4.11.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bn.js/-/bn.js-4.11.4.tgz";
      name = "bn.js-4.11.4.tgz";
      sha1 = "59f0735fa52ff7f00e2cdd1ad207b7c8603d374d";
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
    self.by-version."bn.js"."4.11.4";
  by-spec."bn.js"."^4.1.1" =
    self.by-version."bn.js"."4.11.4";
  by-spec."bn.js"."^4.4.0" =
    self.by-version."bn.js"."4.11.4";
  by-spec."bog"."^1.0.0" =
    self.by-version."bog"."1.0.2";
  by-version."bog"."1.0.2" = self.buildNodePackage {
    name = "bog-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bog/-/bog-1.0.2.tgz";
      name = "bog-1.0.2.tgz";
      sha1 = "f12b400f660e735157ff76c98d3f06b35bc0c5e6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."boom"."2.x.x" =
    self.by-version."boom"."2.10.1";
  by-version."boom"."2.10.1" = self.buildNodePackage {
    name = "boom-2.10.1";
    version = "2.10.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/boom/-/boom-2.10.1.tgz";
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
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.5";
  by-version."brace-expansion"."1.1.5" = self.buildNodePackage {
    name = "brace-expansion-1.1.5";
    version = "1.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.5.tgz";
      name = "brace-expansion-1.1.5.tgz";
      sha1 = "f5b4ad574e2cb7ccc1eb83e6fe79b8ecadf7a526";
    };
    deps = {
      "balanced-match-0.4.1" = self.by-version."balanced-match"."0.4.1";
      "concat-map-0.0.1" = self.by-version."concat-map"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."braces"."^1.8.2" =
    self.by-version."braces"."1.8.5";
  by-version."braces"."1.8.5" = self.buildNodePackage {
    name = "braces-1.8.5";
    version = "1.8.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/braces/-/braces-1.8.5.tgz";
      name = "braces-1.8.5.tgz";
      sha1 = "ba77962e12dff969d6b76711e914b737857bf6a7";
    };
    deps = {
      "expand-range-1.8.2" = self.by-version."expand-range"."1.8.2";
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
      url = "https://registry.npmjs.org/brorand/-/brorand-1.0.5.tgz";
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
      url = "https://registry.npmjs.org/browser-pack/-/browser-pack-5.0.1.tgz";
      name = "browser-pack-5.0.1.tgz";
      sha1 = "4197719b20c6e0aaa09451c5111e53efb6fbc18d";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
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
      url = "https://registry.npmjs.org/browser-pack/-/browser-pack-6.0.1.tgz";
      name = "browser-pack-6.0.1.tgz";
      sha1 = "779887c792eaa1f64a46a22c8f1051cdcd96755f";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
      "combine-source-map-0.7.2" = self.by-version."combine-source-map"."0.7.2";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "umd-3.0.1" = self.by-version."umd"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-resolve"."^1.11.0" =
    self.by-version."browser-resolve"."1.11.2";
  by-version."browser-resolve"."1.11.2" = self.buildNodePackage {
    name = "browser-resolve-1.11.2";
    version = "1.11.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browser-resolve/-/browser-resolve-1.11.2.tgz";
      name = "browser-resolve-1.11.2.tgz";
      sha1 = "8ff09b0a2c421718a1051c260b32e48f442938ce";
    };
    deps = {
      "resolve-1.1.7" = self.by-version."resolve"."1.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-resolve"."^1.7.0" =
    self.by-version."browser-resolve"."1.11.2";
  by-spec."browser-resolve"."^1.7.1" =
    self.by-version."browser-resolve"."1.11.2";
  by-spec."browser-split"."0.0.1" =
    self.by-version."browser-split"."0.0.1";
  by-version."browser-split"."0.0.1" = self.buildNodePackage {
    name = "browser-split-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browser-split/-/browser-split-0.0.1.tgz";
      name = "browser-split-0.0.1.tgz";
      sha1 = "7b097574f8e3ead606fb4664e64adfdda2981a93";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify"."*" =
    self.by-version."browserify"."13.0.1";
  by-version."browserify"."13.0.1" = self.buildNodePackage {
    name = "browserify-13.0.1";
    version = "13.0.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify/-/browserify-13.0.1.tgz";
      name = "browserify-13.0.1.tgz";
      sha1 = "d37179cbb222179ecf730ec7e625e998677902d4";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
      "assert-1.3.0" = self.by-version."assert"."1.3.0";
      "browser-pack-6.0.1" = self.by-version."browser-pack"."6.0.1";
      "browser-resolve-1.11.2" = self.by-version."browser-resolve"."1.11.2";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-4.7.0" = self.by-version."buffer"."4.7.0";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-1.0.0" = self.by-version."constants-browserify"."1.0.0";
      "crypto-browserify-3.11.0" = self.by-version."crypto-browserify"."3.11.0";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "deps-sort-2.0.0" = self.by-version."deps-sort"."2.0.0";
      "domain-browser-1.1.7" = self.by-version."domain-browser"."1.1.7";
      "duplexer2-0.1.4" = self.by-version."duplexer2"."0.1.4";
      "events-1.1.1" = self.by-version."events"."1.1.1";
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "has-1.0.1" = self.by-version."has"."1.0.1";
      "htmlescape-1.1.1" = self.by-version."htmlescape"."1.1.1";
      "https-browserify-0.0.1" = self.by-version."https-browserify"."0.0.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "insert-module-globals-7.0.1" = self.by-version."insert-module-globals"."7.0.1";
      "labeled-stream-splicer-2.0.0" = self.by-version."labeled-stream-splicer"."2.0.0";
      "module-deps-4.0.7" = self.by-version."module-deps"."4.0.7";
      "os-browserify-0.1.2" = self.by-version."os-browserify"."0.1.2";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.5" = self.by-version."process"."0.11.5";
      "punycode-1.4.1" = self.by-version."punycode"."1.4.1";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "read-only-stream-2.0.0" = self.by-version."read-only-stream"."2.0.0";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
      "resolve-1.1.7" = self.by-version."resolve"."1.1.7";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "shell-quote-1.6.1" = self.by-version."shell-quote"."1.6.1";
      "stream-browserify-2.0.1" = self.by-version."stream-browserify"."2.0.1";
      "stream-http-2.3.0" = self.by-version."stream-http"."2.3.0";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "syntax-error-1.1.6" = self.by-version."syntax-error"."1.1.6";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "timers-browserify-1.4.2" = self.by-version."timers-browserify"."1.4.2";
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
      url = "https://registry.npmjs.org/browserify/-/browserify-11.2.0.tgz";
      name = "browserify-11.2.0.tgz";
      sha1 = "a11bb9dd209d79572b813f7eeeaf828a5f5c0e4e";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
      "assert-1.3.0" = self.by-version."assert"."1.3.0";
      "browser-pack-5.0.1" = self.by-version."browser-pack"."5.0.1";
      "browser-resolve-1.11.2" = self.by-version."browser-resolve"."1.11.2";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-3.6.0" = self.by-version."buffer"."3.6.0";
      "builtins-0.0.7" = self.by-version."builtins"."0.0.7";
      "commondir-0.0.1" = self.by-version."commondir"."0.0.1";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-0.0.1" = self.by-version."constants-browserify"."0.0.1";
      "crypto-browserify-3.11.0" = self.by-version."crypto-browserify"."3.11.0";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "deps-sort-1.3.9" = self.by-version."deps-sort"."1.3.9";
      "domain-browser-1.1.7" = self.by-version."domain-browser"."1.1.7";
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
      "events-1.0.2" = self.by-version."events"."1.0.2";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "has-1.0.1" = self.by-version."has"."1.0.1";
      "htmlescape-1.1.1" = self.by-version."htmlescape"."1.1.1";
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
      "process-0.11.5" = self.by-version."process"."0.11.5";
      "punycode-1.4.1" = self.by-version."punycode"."1.4.1";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "read-only-stream-1.1.1" = self.by-version."read-only-stream"."1.1.1";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
      "resolve-1.1.7" = self.by-version."resolve"."1.1.7";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "shell-quote-0.0.1" = self.by-version."shell-quote"."0.0.1";
      "stream-browserify-2.0.1" = self.by-version."stream-browserify"."2.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "syntax-error-1.1.6" = self.by-version."syntax-error"."1.1.6";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "timers-browserify-1.4.2" = self.by-version."timers-browserify"."1.4.2";
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
    self.by-version."browserify-aes"."1.0.6";
  by-version."browserify-aes"."1.0.6" = self.buildNodePackage {
    name = "browserify-aes-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-aes/-/browserify-aes-1.0.6.tgz";
      name = "browserify-aes-1.0.6.tgz";
      sha1 = "5e7725dbdef1fd5930d4ebab48567ce451c48a0a";
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
    self.by-version."browserify-aes"."1.0.6";
  by-spec."browserify-cache-api"."^3.0.0" =
    self.by-version."browserify-cache-api"."3.0.0";
  by-version."browserify-cache-api"."3.0.0" = self.buildNodePackage {
    name = "browserify-cache-api-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-cache-api/-/browserify-cache-api-3.0.0.tgz";
      name = "browserify-cache-api-3.0.0.tgz";
      sha1 = "c545c3484968d95d9eab62563e55798cf1a41e34";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
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
      url = "https://registry.npmjs.org/browserify-cipher/-/browserify-cipher-1.0.0.tgz";
      name = "browserify-cipher-1.0.0.tgz";
      sha1 = "9988244874bf5ed4e28da95666dcd66ac8fc363a";
    };
    deps = {
      "browserify-aes-1.0.6" = self.by-version."browserify-aes"."1.0.6";
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
      url = "https://registry.npmjs.org/browserify-des/-/browserify-des-1.0.0.tgz";
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
    self.by-version."browserify-incremental"."3.1.1";
  by-version."browserify-incremental"."3.1.1" = self.buildNodePackage {
    name = "browserify-incremental-3.1.1";
    version = "3.1.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-incremental/-/browserify-incremental-3.1.1.tgz";
      name = "browserify-incremental-3.1.1.tgz";
      sha1 = "0713cb7587247a632a9f08cf1bd169b878b62a8a";
    };
    deps = {
      "JSONStream-0.10.0" = self.by-version."JSONStream"."0.10.0";
      "browserify-cache-api-3.0.0" = self.by-version."browserify-cache-api"."3.0.0";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."browserify"."13.0.1"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-rsa"."^4.0.0" =
    self.by-version."browserify-rsa"."4.0.1";
  by-version."browserify-rsa"."4.0.1" = self.buildNodePackage {
    name = "browserify-rsa-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-rsa/-/browserify-rsa-4.0.1.tgz";
      name = "browserify-rsa-4.0.1.tgz";
      sha1 = "21e0abfaf6f2029cf2fafb133567a701d4135524";
    };
    deps = {
      "bn.js-4.11.4" = self.by-version."bn.js"."4.11.4";
      "randombytes-2.0.3" = self.by-version."randombytes"."2.0.3";
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
      url = "https://registry.npmjs.org/browserify-sign/-/browserify-sign-4.0.0.tgz";
      name = "browserify-sign-4.0.0.tgz";
      sha1 = "10773910c3c206d5420a46aad8694f820b85968f";
    };
    deps = {
      "bn.js-4.11.4" = self.by-version."bn.js"."4.11.4";
      "browserify-rsa-4.0.1" = self.by-version."browserify-rsa"."4.0.1";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
      "elliptic-6.3.1" = self.by-version."elliptic"."6.3.1";
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
      url = "https://registry.npmjs.org/browserify-zlib/-/browserify-zlib-0.1.4.tgz";
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
    self.by-version."buffer"."3.6.0";
  by-version."buffer"."3.6.0" = self.buildNodePackage {
    name = "buffer-3.6.0";
    version = "3.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buffer/-/buffer-3.6.0.tgz";
      name = "buffer-3.6.0.tgz";
      sha1 = "a72c936f77b96bf52f5f7e7b467180628551defb";
    };
    deps = {
      "base64-js-0.0.8" = self.by-version."base64-js"."0.0.8";
      "ieee754-1.1.6" = self.by-version."ieee754"."1.1.6";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer"."^3.0.3" =
    self.by-version."buffer"."3.6.0";
  by-spec."buffer"."^4.1.0" =
    self.by-version."buffer"."4.7.0";
  by-version."buffer"."4.7.0" = self.buildNodePackage {
    name = "buffer-4.7.0";
    version = "4.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buffer/-/buffer-4.7.0.tgz";
      name = "buffer-4.7.0.tgz";
      sha1 = "f32ca787cbaac88a62b230f7040ee431655c71f3";
    };
    deps = {
      "base64-js-1.1.2" = self.by-version."base64-js"."1.1.2";
      "ieee754-1.1.6" = self.by-version."ieee754"."1.1.6";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer"."^4.3.0" =
    self.by-version."buffer"."4.7.0";
  by-spec."buffer-shims"."^1.0.0" =
    self.by-version."buffer-shims"."1.0.0";
  by-version."buffer-shims"."1.0.0" = self.buildNodePackage {
    name = "buffer-shims-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buffer-shims/-/buffer-shims-1.0.0.tgz";
      name = "buffer-shims-1.0.0.tgz";
      sha1 = "9978ce317388c649ad8793028c3477ef044a8b51";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer-xor"."^1.0.2" =
    self.by-version."buffer-xor"."1.0.3";
  by-version."buffer-xor"."1.0.3" = self.buildNodePackage {
    name = "buffer-xor-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buffer-xor/-/buffer-xor-1.0.3.tgz";
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
  by-spec."builtin-modules"."^1.0.0" =
    self.by-version."builtin-modules"."1.1.1";
  by-version."builtin-modules"."1.1.1" = self.buildNodePackage {
    name = "builtin-modules-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/builtin-modules/-/builtin-modules-1.1.1.tgz";
      name = "builtin-modules-1.1.1.tgz";
      sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
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
      url = "https://registry.npmjs.org/builtin-status-codes/-/builtin-status-codes-1.0.0.tgz";
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
  by-spec."builtin-status-codes"."^2.0.0" =
    self.by-version."builtin-status-codes"."2.0.0";
  by-version."builtin-status-codes"."2.0.0" = self.buildNodePackage {
    name = "builtin-status-codes-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/builtin-status-codes/-/builtin-status-codes-2.0.0.tgz";
      name = "builtin-status-codes-2.0.0.tgz";
      sha1 = "6f22003baacf003ccd287afe6872151fddc58579";
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
      url = "https://registry.npmjs.org/builtins/-/builtins-0.0.7.tgz";
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
  by-spec."bytes"."2.3.0" =
    self.by-version."bytes"."2.3.0";
  by-version."bytes"."2.3.0" = self.buildNodePackage {
    name = "bytes-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bytes/-/bytes-2.3.0.tgz";
      name = "bytes-2.3.0.tgz";
      sha1 = "d5b680a165b6201739acb611542aabc2d8ceb070";
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
      url = "https://registry.npmjs.org/camelcase/-/camelcase-1.2.1.tgz";
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
  by-spec."camelcase"."^2.1.1" =
    self.by-version."camelcase"."2.1.1";
  by-version."camelcase"."2.1.1" = self.buildNodePackage {
    name = "camelcase-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/camelcase/-/camelcase-2.1.1.tgz";
      name = "camelcase-2.1.1.tgz";
      sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelcase"."^3.0.0" =
    self.by-version."camelcase"."3.0.0";
  by-version."camelcase"."3.0.0" = self.buildNodePackage {
    name = "camelcase-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/camelcase/-/camelcase-3.0.0.tgz";
      name = "camelcase-3.0.0.tgz";
      sha1 = "32fc4b9fcdaf845fcdf7e73bb97cac2261f0ab0a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelize"."^1.0.0" =
    self.by-version."camelize"."1.0.0";
  by-version."camelize"."1.0.0" = self.buildNodePackage {
    name = "camelize-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/camelize/-/camelize-1.0.0.tgz";
      name = "camelize-1.0.0.tgz";
      sha1 = "164a5483e630fa4321e5af07020e531831b2609b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cardinal"."^0.5.0" =
    self.by-version."cardinal"."0.5.0";
  by-version."cardinal"."0.5.0" = self.buildNodePackage {
    name = "cardinal-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/cardinal/-/cardinal-0.5.0.tgz";
      name = "cardinal-0.5.0.tgz";
      sha1 = "00d5f661dbd4aabfdf7d41ce48a5a59bca35a291";
    };
    deps = {
      "redeyed-0.5.0" = self.by-version."redeyed"."0.5.0";
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
      url = "https://registry.npmjs.org/caseless/-/caseless-0.11.0.tgz";
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
  by-spec."center-align"."^0.1.1" =
    self.by-version."center-align"."0.1.3";
  by-version."center-align"."0.1.3" = self.buildNodePackage {
    name = "center-align-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/center-align/-/center-align-0.1.3.tgz";
      name = "center-align-0.1.3.tgz";
      sha1 = "aa0d32629b6ee972200411cbd4461c907bc2b7ad";
    };
    deps = {
      "align-text-0.1.4" = self.by-version."align-text"."0.1.4";
      "lazy-cache-1.0.4" = self.by-version."lazy-cache"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.0.0" =
    self.by-version."chalk"."1.1.3";
  by-version."chalk"."1.1.3" = self.buildNodePackage {
    name = "chalk-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz";
      name = "chalk-1.1.3.tgz";
      sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
    };
    deps = {
      "ansi-styles-2.2.1" = self.by-version."ansi-styles"."2.2.1";
      "escape-string-regexp-1.0.5" = self.by-version."escape-string-regexp"."1.0.5";
      "has-ansi-2.0.0" = self.by-version."has-ansi"."2.0.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "supports-color-2.0.0" = self.by-version."supports-color"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.1.0" =
    self.by-version."chalk"."1.1.3";
  by-spec."chalk"."^1.1.1" =
    self.by-version."chalk"."1.1.3";
  by-spec."chokidar"."^1.0.0" =
    self.by-version."chokidar"."1.6.0";
  by-version."chokidar"."1.6.0" = self.buildNodePackage {
    name = "chokidar-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chokidar/-/chokidar-1.6.0.tgz";
      name = "chokidar-1.6.0.tgz";
      sha1 = "90c32ad4802901d7713de532dc284e96a63ad058";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "async-each-1.0.0" = self.by-version."async-each"."1.0.0";
      "glob-parent-2.0.0" = self.by-version."glob-parent"."2.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "is-binary-path-1.0.1" = self.by-version."is-binary-path"."1.0.1";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "readdirp-2.1.0" = self.by-version."readdirp"."2.1.0";
    };
    optionalDependencies = {
      "fsevents-1.0.12" = self.by-version."fsevents"."1.0.12";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chokidar"."^1.4.3" =
    self.by-version."chokidar"."1.6.0";
  by-spec."cipher-base"."^1.0.0" =
    self.by-version."cipher-base"."1.0.2";
  by-version."cipher-base"."1.0.2" = self.buildNodePackage {
    name = "cipher-base-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cipher-base/-/cipher-base-1.0.2.tgz";
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
  by-spec."cli-table"."^0.3.1" =
    self.by-version."cli-table"."0.3.1";
  by-version."cli-table"."0.3.1" = self.buildNodePackage {
    name = "cli-table-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cli-table/-/cli-table-0.3.1.tgz";
      name = "cli-table-0.3.1.tgz";
      sha1 = "f53b05266a8b1a0b934b3d0821e6e2dc5914ae23";
    };
    deps = {
      "colors-1.0.3" = self.by-version."colors"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cli-usage"."^0.1.1" =
    self.by-version."cli-usage"."0.1.2";
  by-version."cli-usage"."0.1.2" = self.buildNodePackage {
    name = "cli-usage-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cli-usage/-/cli-usage-0.1.2.tgz";
      name = "cli-usage-0.1.2.tgz";
      sha1 = "497c20eaf12ec2779393a9bfac225c5f6cb9152d";
    };
    deps = {
      "marked-0.3.5" = self.by-version."marked"."0.3.5";
      "marked-terminal-1.6.1" = self.by-version."marked-terminal"."1.6.1";
      "minimist-0.2.0" = self.by-version."minimist"."0.2.0";
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
      url = "https://registry.npmjs.org/cliui/-/cliui-2.1.0.tgz";
      name = "cliui-2.1.0.tgz";
      sha1 = "4b475760ff80264c762c3a1719032e91c7fea0d1";
    };
    deps = {
      "center-align-0.1.3" = self.by-version."center-align"."0.1.3";
      "right-align-0.1.3" = self.by-version."right-align"."0.1.3";
      "wordwrap-0.0.2" = self.by-version."wordwrap"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cliui"."^3.2.0" =
    self.by-version."cliui"."3.2.0";
  by-version."cliui"."3.2.0" = self.buildNodePackage {
    name = "cliui-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cliui/-/cliui-3.2.0.tgz";
      name = "cliui-3.2.0.tgz";
      sha1 = "120601537a916d29940f934da3b48d585a39213d";
    };
    deps = {
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "wrap-ansi-2.0.0" = self.by-version."wrap-ansi"."2.0.0";
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
      url = "https://registry.npmjs.org/clone/-/clone-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/code-point-at/-/code-point-at-1.0.0.tgz";
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
  by-spec."colors"."1.0.3" =
    self.by-version."colors"."1.0.3";
  by-version."colors"."1.0.3" = self.buildNodePackage {
    name = "colors-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/colors/-/colors-1.0.3.tgz";
      name = "colors-1.0.3.tgz";
      sha1 = "0433f44d809680fdeb60ed260f1b0c262e82a40b";
    };
    deps = {
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
      url = "https://registry.npmjs.org/combine-source-map/-/combine-source-map-0.6.1.tgz";
      name = "combine-source-map-0.6.1.tgz";
      sha1 = "9b4a09c316033d768e0f11e029fa2730e079ad96";
    };
    deps = {
      "convert-source-map-1.1.3" = self.by-version."convert-source-map"."1.1.3";
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
    self.by-version."combine-source-map"."0.7.2";
  by-version."combine-source-map"."0.7.2" = self.buildNodePackage {
    name = "combine-source-map-0.7.2";
    version = "0.7.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/combine-source-map/-/combine-source-map-0.7.2.tgz";
      name = "combine-source-map-0.7.2.tgz";
      sha1 = "0870312856b307a87cc4ac486f3a9a62aeccc09e";
    };
    deps = {
      "convert-source-map-1.1.3" = self.by-version."convert-source-map"."1.1.3";
      "inline-source-map-0.6.2" = self.by-version."inline-source-map"."0.6.2";
      "lodash.memoize-3.0.4" = self.by-version."lodash.memoize"."3.0.4";
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
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
      url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
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
  by-spec."combined-stream"."~1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-spec."commander"."^2.9.0" =
    self.by-version."commander"."2.9.0";
  by-version."commander"."2.9.0" = self.buildNodePackage {
    name = "commander-2.9.0";
    version = "2.9.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/commander/-/commander-2.9.0.tgz";
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
      url = "https://registry.npmjs.org/commondir/-/commondir-0.0.1.tgz";
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
  by-spec."compressible"."~2.0.8" =
    self.by-version."compressible"."2.0.8";
  by-version."compressible"."2.0.8" = self.buildNodePackage {
    name = "compressible-2.0.8";
    version = "2.0.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/compressible/-/compressible-2.0.8.tgz";
      name = "compressible-2.0.8.tgz";
      sha1 = "7162e6c46d3b9d200ffb45cb4e4a0f7832732503";
    };
    deps = {
      "mime-db-1.23.0" = self.by-version."mime-db"."1.23.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."compression"."^1.5.2" =
    self.by-version."compression"."1.6.2";
  by-version."compression"."1.6.2" = self.buildNodePackage {
    name = "compression-1.6.2";
    version = "1.6.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/compression/-/compression-1.6.2.tgz";
      name = "compression-1.6.2.tgz";
      sha1 = "cceb121ecc9d09c52d7ad0c3350ea93ddd402bc3";
    };
    deps = {
      "accepts-1.3.3" = self.by-version."accepts"."1.3.3";
      "bytes-2.3.0" = self.by-version."bytes"."2.3.0";
      "compressible-2.0.8" = self.by-version."compressible"."2.0.8";
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
      url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
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
      url = "https://registry.npmjs.org/concat-stream/-/concat-stream-1.5.1.tgz";
      name = "concat-stream-1.5.1.tgz";
      sha1 = "f3b80acf9e1f48e3875c0688b41b6c31602eea1c";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
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
      url = "https://registry.npmjs.org/concat-stream/-/concat-stream-1.4.10.tgz";
      name = "concat-stream-1.4.10.tgz";
      sha1 = "acc3bbf5602cb8cc980c6ac840fa7d8603e3ef36";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
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
  by-spec."connect-history-api-fallback"."1.1.0" =
    self.by-version."connect-history-api-fallback"."1.1.0";
  by-version."connect-history-api-fallback"."1.1.0" = self.buildNodePackage {
    name = "connect-history-api-fallback-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/connect-history-api-fallback/-/connect-history-api-fallback-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/console-browserify/-/console-browserify-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/constants-browserify/-/constants-browserify-0.0.1.tgz";
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
  by-spec."constants-browserify"."^1.0.0" =
    self.by-version."constants-browserify"."1.0.0";
  by-version."constants-browserify"."1.0.0" = self.buildNodePackage {
    name = "constants-browserify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/constants-browserify/-/constants-browserify-1.0.0.tgz";
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
  by-spec."constants-browserify"."~0.0.1" =
    self.by-version."constants-browserify"."0.0.1";
  by-spec."constants-browserify"."~1.0.0" =
    self.by-version."constants-browserify"."1.0.0";
  by-spec."content-disposition"."0.5.1" =
    self.by-version."content-disposition"."0.5.1";
  by-version."content-disposition"."0.5.1" = self.buildNodePackage {
    name = "content-disposition-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.1.tgz";
      name = "content-disposition-0.5.1.tgz";
      sha1 = "87476c6a67c8daa87e32e87616df883ba7fb071b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."content-type"."~1.0.2" =
    self.by-version."content-type"."1.0.2";
  by-version."content-type"."1.0.2" = self.buildNodePackage {
    name = "content-type-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/content-type/-/content-type-1.0.2.tgz";
      name = "content-type-1.0.2.tgz";
      sha1 = "b7d113aee7a8dd27bd21133c4dc2529df1721eed";
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
    self.by-version."convert-source-map"."1.1.3";
  by-version."convert-source-map"."1.1.3" = self.buildNodePackage {
    name = "convert-source-map-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/convert-source-map/-/convert-source-map-1.1.3.tgz";
      name = "convert-source-map-1.1.3.tgz";
      sha1 = "4829c877e9fe49b3161f3bf3673888e204699860";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie"."0.3.1" =
    self.by-version."cookie"."0.3.1";
  by-version."cookie"."0.3.1" = self.buildNodePackage {
    name = "cookie-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cookie/-/cookie-0.3.1.tgz";
      name = "cookie-0.3.1.tgz";
      sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
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
      url = "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
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
      url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/create-ecdh/-/create-ecdh-4.0.0.tgz";
      name = "create-ecdh-4.0.0.tgz";
      sha1 = "888c723596cdf7612f6498233eebd7a35301737d";
    };
    deps = {
      "bn.js-4.11.4" = self.by-version."bn.js"."4.11.4";
      "elliptic-6.3.1" = self.by-version."elliptic"."6.3.1";
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
      url = "https://registry.npmjs.org/create-hash/-/create-hash-1.1.2.tgz";
      name = "create-hash-1.1.2.tgz";
      sha1 = "51210062d7bb7479f6c65bb41a92208b1d61abad";
    };
    deps = {
      "cipher-base-1.0.2" = self.by-version."cipher-base"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ripemd160-1.0.1" = self.by-version."ripemd160"."1.0.1";
      "sha.js-2.4.5" = self.by-version."sha.js"."2.4.5";
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
      url = "https://registry.npmjs.org/create-hmac/-/create-hmac-1.1.4.tgz";
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
      url = "https://registry.npmjs.org/cryptiles/-/cryptiles-2.0.5.tgz";
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
      url = "https://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.11.0.tgz";
      name = "crypto-browserify-3.11.0.tgz";
      sha1 = "3652a0906ab9b2a7e0c3ce66a408e957a2485522";
    };
    deps = {
      "browserify-cipher-1.0.0" = self.by-version."browserify-cipher"."1.0.0";
      "browserify-sign-4.0.0" = self.by-version."browserify-sign"."4.0.0";
      "create-ecdh-4.0.0" = self.by-version."create-ecdh"."4.0.0";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
      "diffie-hellman-5.0.2" = self.by-version."diffie-hellman"."5.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "pbkdf2-3.0.4" = self.by-version."pbkdf2"."3.0.4";
      "public-encrypt-4.0.0" = self.by-version."public-encrypt"."4.0.0";
      "randombytes-2.0.3" = self.by-version."randombytes"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crypto-browserify"."^3.11.0" =
    self.by-version."crypto-browserify"."3.11.0";
  by-spec."crypto-browserify"."~3.2.6" =
    self.by-version."crypto-browserify"."3.2.8";
  by-version."crypto-browserify"."3.2.8" = self.buildNodePackage {
    name = "crypto-browserify-3.2.8";
    version = "3.2.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.2.8.tgz";
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
  by-spec."dashdash"."^1.12.0" =
    self.by-version."dashdash"."1.14.0";
  by-version."dashdash"."1.14.0" = self.buildNodePackage {
    name = "dashdash-1.14.0";
    version = "1.14.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/dashdash/-/dashdash-1.14.0.tgz";
      name = "dashdash-1.14.0.tgz";
      sha1 = "29e486c5418bf0f356034a993d51686a33e84141";
    };
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
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
      url = "https://registry.npmjs.org/date-now/-/date-now-0.1.4.tgz";
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
  by-spec."debug"."^2.2.0" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
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
  by-spec."debug"."~2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."decamelize"."^1.0.0" =
    self.by-version."decamelize"."1.2.0";
  by-version."decamelize"."1.2.0" = self.buildNodePackage {
    name = "decamelize-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/decamelize/-/decamelize-1.2.0.tgz";
      name = "decamelize-1.2.0.tgz";
      sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."decamelize"."^1.1.1" =
    self.by-version."decamelize"."1.2.0";
  by-spec."deep-extend"."~0.4.0" =
    self.by-version."deep-extend"."0.4.1";
  by-version."deep-extend"."0.4.1" = self.buildNodePackage {
    name = "deep-extend-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/deep-extend/-/deep-extend-0.4.1.tgz";
      name = "deep-extend-0.4.1.tgz";
      sha1 = "efe4113d08085f4e6f9687759810f807469e2253";
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
      url = "https://registry.npmjs.org/defined/-/defined-1.0.0.tgz";
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
  by-spec."delayed-stream"."~1.0.0" =
    self.by-version."delayed-stream"."1.0.0";
  by-version."delayed-stream"."1.0.0" = self.buildNodePackage {
    name = "delayed-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
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
  by-spec."delegates"."^1.0.0" =
    self.by-version."delegates"."1.0.0";
  by-version."delegates"."1.0.0" = self.buildNodePackage {
    name = "delegates-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz";
      name = "delegates-1.0.0.tgz";
      sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."depd"."~1.1.0" =
    self.by-version."depd"."1.1.0";
  by-version."depd"."1.1.0" = self.buildNodePackage {
    name = "depd-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/depd/-/depd-1.1.0.tgz";
      name = "depd-1.1.0.tgz";
      sha1 = "e1bd82c6aab6ced965b97b88b17ed3e528ca18c3";
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
      url = "https://registry.npmjs.org/deps-sort/-/deps-sort-1.3.9.tgz";
      name = "deps-sort-1.3.9.tgz";
      sha1 = "29dfff53e17b36aecae7530adbbbf622c2ed1a71";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
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
      url = "https://registry.npmjs.org/deps-sort/-/deps-sort-2.0.0.tgz";
      name = "deps-sort-2.0.0.tgz";
      sha1 = "091724902e84658260eb910748cccd1af6e21fb5";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
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
      url = "https://registry.npmjs.org/des.js/-/des.js-1.0.0.tgz";
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
  by-spec."destroy"."~1.0.4" =
    self.by-version."destroy"."1.0.4";
  by-version."destroy"."1.0.4" = self.buildNodePackage {
    name = "destroy-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/destroy/-/destroy-1.0.4.tgz";
      name = "destroy-1.0.4.tgz";
      sha1 = "978857442c44749e4206613e37946205826abd80";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."detective"."^4.0.0" =
    self.by-version."detective"."4.3.1";
  by-version."detective"."4.3.1" = self.buildNodePackage {
    name = "detective-4.3.1";
    version = "4.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/detective/-/detective-4.3.1.tgz";
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
    self.by-version."diffie-hellman"."5.0.2";
  by-version."diffie-hellman"."5.0.2" = self.buildNodePackage {
    name = "diffie-hellman-5.0.2";
    version = "5.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/diffie-hellman/-/diffie-hellman-5.0.2.tgz";
      name = "diffie-hellman-5.0.2.tgz";
      sha1 = "b5835739270cfe26acf632099fded2a07f209e5e";
    };
    deps = {
      "bn.js-4.11.4" = self.by-version."bn.js"."4.11.4";
      "miller-rabin-4.0.0" = self.by-version."miller-rabin"."4.0.0";
      "randombytes-2.0.3" = self.by-version."randombytes"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dom-walk"."^0.1.0" =
    self.by-version."dom-walk"."0.1.1";
  by-version."dom-walk"."0.1.1" = self.buildNodePackage {
    name = "dom-walk-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/dom-walk/-/dom-walk-0.1.1.tgz";
      name = "dom-walk-0.1.1.tgz";
      sha1 = "672226dc74c8f799ad35307df936aba11acd6018";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domain-browser"."^1.1.1" =
    self.by-version."domain-browser"."1.1.7";
  by-version."domain-browser"."1.1.7" = self.buildNodePackage {
    name = "domain-browser-1.1.7";
    version = "1.1.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/domain-browser/-/domain-browser-1.1.7.tgz";
      name = "domain-browser-1.1.7.tgz";
      sha1 = "867aa4b093faa05f1de08c06f4d7b21fdf8698bc";
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
    self.by-version."domain-browser"."1.1.7";
  by-spec."duplexer2"."0.0.2" =
    self.by-version."duplexer2"."0.0.2";
  by-version."duplexer2"."0.0.2" = self.buildNodePackage {
    name = "duplexer2-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/duplexer2/-/duplexer2-0.0.2.tgz";
      name = "duplexer2-0.0.2.tgz";
      sha1 = "c614dcf67e2fb14995a91711e5a617e8a60a31db";
    };
    deps = {
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
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
      url = "https://registry.npmjs.org/duplexer2/-/duplexer2-0.1.4.tgz";
      name = "duplexer2-0.1.4.tgz";
      sha1 = "8b12dab878c0d69e3e7891051662a32fc6bddcc1";
    };
    deps = {
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
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
  by-spec."ecc-jsbn"."~0.1.1" =
    self.by-version."ecc-jsbn"."0.1.1";
  by-version."ecc-jsbn"."0.1.1" = self.buildNodePackage {
    name = "ecc-jsbn-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
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
      url = "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
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
    self.by-version."elliptic"."6.3.1";
  by-version."elliptic"."6.3.1" = self.buildNodePackage {
    name = "elliptic-6.3.1";
    version = "6.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/elliptic/-/elliptic-6.3.1.tgz";
      name = "elliptic-6.3.1.tgz";
      sha1 = "17781f2109ab0ec686b146bdcff5d2e8c6aeceda";
    };
    deps = {
      "bn.js-4.11.4" = self.by-version."bn.js"."4.11.4";
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
  by-spec."emojis-list"."^2.0.0" =
    self.by-version."emojis-list"."2.0.1";
  by-version."emojis-list"."2.0.1" = self.buildNodePackage {
    name = "emojis-list-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/emojis-list/-/emojis-list-2.0.1.tgz";
      name = "emojis-list-2.0.1.tgz";
      sha1 = "a174d9d0838eb36af3d0590bb6d3e8dcd94f4fbd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."encodeurl"."~1.0.1" =
    self.by-version."encodeurl"."1.0.1";
  by-version."encodeurl"."1.0.1" = self.buildNodePackage {
    name = "encodeurl-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.1.tgz";
      name = "encodeurl-1.0.1.tgz";
      sha1 = "79e3d58655346909fe6f0f45a5de68103b294d20";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."enhanced-resolve"."^2.2.0" =
    self.by-version."enhanced-resolve"."2.2.2";
  by-version."enhanced-resolve"."2.2.2" = self.buildNodePackage {
    name = "enhanced-resolve-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-2.2.2.tgz";
      name = "enhanced-resolve-2.2.2.tgz";
      sha1 = "4da494d591183308bd46a95f5b40e255dc9d4a16";
    };
    deps = {
      "tapable-0.2.4" = self.by-version."tapable"."0.2.4";
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "graceful-fs-4.1.4" = self.by-version."graceful-fs"."4.1.4";
      "object-assign-4.1.0" = self.by-version."object-assign"."4.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."enhanced-resolve"."~0.9.0" =
    self.by-version."enhanced-resolve"."0.9.1";
  by-version."enhanced-resolve"."0.9.1" = self.buildNodePackage {
    name = "enhanced-resolve-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-0.9.1.tgz";
      name = "enhanced-resolve-0.9.1.tgz";
      sha1 = "4d6e689b3725f86090927ccc86cd9f1635b89e2e";
    };
    deps = {
      "tapable-0.1.10" = self.by-version."tapable"."0.1.10";
      "memory-fs-0.2.0" = self.by-version."memory-fs"."0.2.0";
      "graceful-fs-4.1.4" = self.by-version."graceful-fs"."4.1.4";
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
      url = "https://registry.npmjs.org/errno/-/errno-0.1.4.tgz";
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
  by-spec."error"."^4.3.0" =
    self.by-version."error"."4.4.0";
  by-version."error"."4.4.0" = self.buildNodePackage {
    name = "error-4.4.0";
    version = "4.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/error/-/error-4.4.0.tgz";
      name = "error-4.4.0.tgz";
      sha1 = "bf69ff251fb4a279c19adccdaa6b61e90d9bf12a";
    };
    deps = {
      "camelize-1.0.0" = self.by-version."camelize"."1.0.0";
      "string-template-0.2.1" = self.by-version."string-template"."0.2.1";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."error-ex"."^1.2.0" =
    self.by-version."error-ex"."1.3.0";
  by-version."error-ex"."1.3.0" = self.buildNodePackage {
    name = "error-ex-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/error-ex/-/error-ex-1.3.0.tgz";
      name = "error-ex-1.3.0.tgz";
      sha1 = "e67b43f3e82c96ea3a584ffee0b9fc3325d802d9";
    };
    deps = {
      "is-arrayish-0.2.1" = self.by-version."is-arrayish"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-html"."~1.0.3" =
    self.by-version."escape-html"."1.0.3";
  by-version."escape-html"."1.0.3" = self.buildNodePackage {
    name = "escape-html-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz";
      name = "escape-html-1.0.3.tgz";
      sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
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
    self.by-version."escape-string-regexp"."1.0.5";
  by-version."escape-string-regexp"."1.0.5" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
      name = "escape-string-regexp-1.0.5.tgz";
      sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima-fb"."~12001.1.0-dev-harmony-fb" =
    self.by-version."esprima-fb"."12001.1.0-dev-harmony-fb";
  by-version."esprima-fb"."12001.1.0-dev-harmony-fb" = self.buildNodePackage {
    name = "esprima-fb-12001.1.0-dev-harmony-fb";
    version = "12001.1.0-dev-harmony-fb";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/esprima-fb/-/esprima-fb-12001.1.0-dev-harmony-fb.tgz";
      name = "esprima-fb-12001.1.0-dev-harmony-fb.tgz";
      sha1 = "d84400384ba95ce2678c617ad24a7f40808da915";
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
      url = "https://registry.npmjs.org/etag/-/etag-1.7.0.tgz";
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
  by-spec."ev-store"."^7.0.0" =
    self.by-version."ev-store"."7.0.0";
  by-version."ev-store"."7.0.0" = self.buildNodePackage {
    name = "ev-store-7.0.0";
    version = "7.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ev-store/-/ev-store-7.0.0.tgz";
      name = "ev-store-7.0.0.tgz";
      sha1 = "1ab0c7f82136505dd74b31d17701cb2be6d26558";
    };
    deps = {
      "individual-3.0.0" = self.by-version."individual"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."eventemitter3"."1.x.x" =
    self.by-version."eventemitter3"."1.2.0";
  by-version."eventemitter3"."1.2.0" = self.buildNodePackage {
    name = "eventemitter3-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/eventemitter3/-/eventemitter3-1.2.0.tgz";
      name = "eventemitter3-1.2.0.tgz";
      sha1 = "1c86991d816ad1e504750e73874224ecf3bec508";
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
    self.by-version."events"."1.1.1";
  by-version."events"."1.1.1" = self.buildNodePackage {
    name = "events-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/events/-/events-1.1.1.tgz";
      name = "events-1.1.1.tgz";
      sha1 = "9ebdb7635ad099c70dcc4c2a1f5004288e8bd924";
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
      url = "https://registry.npmjs.org/events/-/events-1.0.2.tgz";
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
    self.by-version."events"."1.1.1";
  by-spec."eventsource"."~0.1.6" =
    self.by-version."eventsource"."0.1.6";
  by-version."eventsource"."0.1.6" = self.buildNodePackage {
    name = "eventsource-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/eventsource/-/eventsource-0.1.6.tgz";
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
      url = "https://registry.npmjs.org/evp_bytestokey/-/evp_bytestokey-1.0.0.tgz";
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
  by-spec."expand-brackets"."^0.1.4" =
    self.by-version."expand-brackets"."0.1.5";
  by-version."expand-brackets"."0.1.5" = self.buildNodePackage {
    name = "expand-brackets-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.5.tgz";
      name = "expand-brackets-0.1.5.tgz";
      sha1 = "df07284e342a807cd733ac5af72411e581d1177b";
    };
    deps = {
      "is-posix-bracket-0.1.1" = self.by-version."is-posix-bracket"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-range"."^1.8.1" =
    self.by-version."expand-range"."1.8.2";
  by-version."expand-range"."1.8.2" = self.buildNodePackage {
    name = "expand-range-1.8.2";
    version = "1.8.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/expand-range/-/expand-range-1.8.2.tgz";
      name = "expand-range-1.8.2.tgz";
      sha1 = "a299effd335fe2721ebae8e257ec79644fc85337";
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
    self.by-version."express"."4.14.0";
  by-version."express"."4.14.0" = self.buildNodePackage {
    name = "express-4.14.0";
    version = "4.14.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/express/-/express-4.14.0.tgz";
      name = "express-4.14.0.tgz";
      sha1 = "c1ee3f42cdc891fb3dc650a8922d51ec847d0d66";
    };
    deps = {
      "accepts-1.3.3" = self.by-version."accepts"."1.3.3";
      "array-flatten-1.1.1" = self.by-version."array-flatten"."1.1.1";
      "content-disposition-0.5.1" = self.by-version."content-disposition"."0.5.1";
      "content-type-1.0.2" = self.by-version."content-type"."1.0.2";
      "cookie-0.3.1" = self.by-version."cookie"."0.3.1";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "encodeurl-1.0.1" = self.by-version."encodeurl"."1.0.1";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "finalhandler-0.5.0" = self.by-version."finalhandler"."0.5.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "merge-descriptors-1.0.1" = self.by-version."merge-descriptors"."1.0.1";
      "methods-1.1.2" = self.by-version."methods"."1.1.2";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
      "path-to-regexp-0.1.7" = self.by-version."path-to-regexp"."0.1.7";
      "proxy-addr-1.1.2" = self.by-version."proxy-addr"."1.1.2";
      "qs-6.2.0" = self.by-version."qs"."6.2.0";
      "range-parser-1.2.0" = self.by-version."range-parser"."1.2.0";
      "send-0.14.1" = self.by-version."send"."0.14.1";
      "serve-static-1.11.1" = self.by-version."serve-static"."1.11.1";
      "type-is-1.6.13" = self.by-version."type-is"."1.6.13";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
      "vary-1.1.0" = self.by-version."vary"."1.1.0";
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
      url = "https://registry.npmjs.org/extend/-/extend-3.0.0.tgz";
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
    self.by-version."extglob"."0.3.2";
  by-version."extglob"."0.3.2" = self.buildNodePackage {
    name = "extglob-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/extglob/-/extglob-0.3.2.tgz";
      name = "extglob-0.3.2.tgz";
      sha1 = "2e18ff3d2f49ab2765cec9023f011daa8d8349a1";
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
  by-spec."extsprintf"."1.0.2" =
    self.by-version."extsprintf"."1.0.2";
  by-version."extsprintf"."1.0.2" = self.buildNodePackage {
    name = "extsprintf-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.0.2.tgz";
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
  by-spec."faye-websocket"."^0.10.0" =
    self.by-version."faye-websocket"."0.10.0";
  by-version."faye-websocket"."0.10.0" = self.buildNodePackage {
    name = "faye-websocket-0.10.0";
    version = "0.10.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.10.0.tgz";
      name = "faye-websocket-0.10.0.tgz";
      sha1 = "4e492f8d04dfb6f89003507f6edbf2d501e7c6f4";
    };
    deps = {
      "websocket-driver-0.6.5" = self.by-version."websocket-driver"."0.6.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."faye-websocket"."~0.11.0" =
    self.by-version."faye-websocket"."0.11.0";
  by-version."faye-websocket"."0.11.0" = self.buildNodePackage {
    name = "faye-websocket-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.11.0.tgz";
      name = "faye-websocket-0.11.0.tgz";
      sha1 = "d9ccf0e789e7db725d74bc4877d23aa42972ac50";
    };
    deps = {
      "websocket-driver-0.6.5" = self.by-version."websocket-driver"."0.6.5";
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
      url = "https://registry.npmjs.org/filename-regex/-/filename-regex-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/fill-range/-/fill-range-2.2.3.tgz";
      name = "fill-range-2.2.3.tgz";
      sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "isobject-2.1.0" = self.by-version."isobject"."2.1.0";
      "randomatic-1.1.5" = self.by-version."randomatic"."1.1.5";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.5.4" = self.by-version."repeat-string"."1.5.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."finalhandler"."0.5.0" =
    self.by-version."finalhandler"."0.5.0";
  by-version."finalhandler"."0.5.0" = self.buildNodePackage {
    name = "finalhandler-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/finalhandler/-/finalhandler-0.5.0.tgz";
      name = "finalhandler-0.5.0.tgz";
      sha1 = "e9508abece9b6dba871a6942a1d7911b91911ac7";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "statuses-1.3.0" = self.by-version."statuses"."1.3.0";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."find-up"."^1.0.0" =
    self.by-version."find-up"."1.1.2";
  by-version."find-up"."1.1.2" = self.buildNodePackage {
    name = "find-up-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/find-up/-/find-up-1.1.2.tgz";
      name = "find-up-1.1.2.tgz";
      sha1 = "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f";
    };
    deps = {
      "path-exists-2.1.0" = self.by-version."path-exists"."2.1.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fnuc"."0.0.15" =
    self.by-version."fnuc"."0.0.15";
  by-version."fnuc"."0.0.15" = self.buildNodePackage {
    name = "fnuc-0.0.15";
    version = "0.0.15";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fnuc/-/fnuc-0.0.15.tgz";
      name = "fnuc-0.0.15.tgz";
      sha1 = "da608358e93319d79e7115b6c0e1623f800bf54a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-in"."^0.1.5" =
    self.by-version."for-in"."0.1.5";
  by-version."for-in"."0.1.5" = self.buildNodePackage {
    name = "for-in-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/for-in/-/for-in-0.1.5.tgz";
      name = "for-in-0.1.5.tgz";
      sha1 = "007374e2b6d5c67420a1479bdb75a04872b738c4";
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
    self.by-version."for-own"."0.1.4";
  by-version."for-own"."0.1.4" = self.buildNodePackage {
    name = "for-own-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/for-own/-/for-own-0.1.4.tgz";
      name = "for-own-0.1.4.tgz";
      sha1 = "0149b41a39088c7515f51ebe1c1386d45f935072";
    };
    deps = {
      "for-in-0.1.5" = self.by-version."for-in"."0.1.5";
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
      url = "https://registry.npmjs.org/foreach/-/foreach-2.0.5.tgz";
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
  by-spec."forever-agent"."~0.6.1" =
    self.by-version."forever-agent"."0.6.1";
  by-version."forever-agent"."0.6.1" = self.buildNodePackage {
    name = "forever-agent-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
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
  by-spec."form-data"."~1.0.0-rc3" =
    self.by-version."form-data"."1.0.0-rc4";
  by-version."form-data"."1.0.0-rc4" = self.buildNodePackage {
    name = "form-data-1.0.0-rc4";
    version = "1.0.0-rc4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/form-data/-/form-data-1.0.0-rc4.tgz";
      name = "form-data-1.0.0-rc4.tgz";
      sha1 = "05ac6bc22227b43e4461f488161554699d4f8b5e";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.11" = self.by-version."mime-types"."2.1.11";
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
      url = "https://registry.npmjs.org/forwarded/-/forwarded-0.1.0.tgz";
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
      url = "https://registry.npmjs.org/fresh/-/fresh-0.3.0.tgz";
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
  by-spec."fs.realpath"."^1.0.0" =
    self.by-version."fs.realpath"."1.0.0";
  by-version."fs.realpath"."1.0.0" = self.buildNodePackage {
    name = "fs.realpath-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
      name = "fs.realpath-1.0.0.tgz";
      sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fsevents"."^1.0.0" =
    self.by-version."fsevents"."1.0.12";
  by-version."fsevents"."1.0.12" = self.buildNodePackage {
    name = "fsevents-1.0.12";
    version = "1.0.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fsevents/-/fsevents-1.0.12.tgz";
      name = "fsevents-1.0.12.tgz";
      sha1 = "7929e211c0b31f37f2f0fc346f315e403d7ed33b";
    };
    deps = {
      "nan-2.3.5" = self.by-version."nan"."2.3.5";
      "node-pre-gyp-0.6.28" = self.by-version."node-pre-gyp"."0.6.28";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ "darwin" ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.0" =
    self.by-version."fstream"."1.0.10";
  by-version."fstream"."1.0.10" = self.buildNodePackage {
    name = "fstream-1.0.10";
    version = "1.0.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fstream/-/fstream-1.0.10.tgz";
      name = "fstream-1.0.10.tgz";
      sha1 = "604e8a92fe26ffd9f6fae30399d4984e1ab22822";
    };
    deps = {
      "graceful-fs-4.1.4" = self.by-version."graceful-fs"."4.1.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.2" =
    self.by-version."fstream"."1.0.10";
  by-spec."fstream"."~1.0.10" =
    self.by-version."fstream"."1.0.10";
  by-spec."fstream-ignore"."~1.0.5" =
    self.by-version."fstream-ignore"."1.0.5";
  by-version."fstream-ignore"."1.0.5" = self.buildNodePackage {
    name = "fstream-ignore-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fstream-ignore/-/fstream-ignore-1.0.5.tgz";
      name = "fstream-ignore-1.0.5.tgz";
      sha1 = "9c31dae34767018fe1d249b24dada67d092da105";
    };
    deps = {
      "fstream-1.0.10" = self.by-version."fstream"."1.0.10";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.2" = self.by-version."minimatch"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."function-bind"."^1.0.2" =
    self.by-version."function-bind"."1.1.0";
  by-version."function-bind"."1.1.0" = self.buildNodePackage {
    name = "function-bind-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.0.tgz";
      name = "function-bind-1.1.0.tgz";
      sha1 = "16176714c801798e4e8f2cf7f7529467bb4a5771";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gauge"."~1.2.5" =
    self.by-version."gauge"."1.2.7";
  by-version."gauge"."1.2.7" = self.buildNodePackage {
    name = "gauge-1.2.7";
    version = "1.2.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gauge/-/gauge-1.2.7.tgz";
      name = "gauge-1.2.7.tgz";
      sha1 = "e9cec5483d3d4ee0ef44b60a7d99e4935e136d93";
    };
    deps = {
      "ansi-0.3.1" = self.by-version."ansi"."0.3.1";
      "has-unicode-2.0.1" = self.by-version."has-unicode"."2.0.1";
      "lodash.pad-4.4.0" = self.by-version."lodash.pad"."4.4.0";
      "lodash.padend-4.5.0" = self.by-version."lodash.padend"."4.5.0";
      "lodash.padstart-4.5.0" = self.by-version."lodash.padstart"."4.5.0";
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
      url = "https://registry.npmjs.org/generate-function/-/generate-function-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
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
  by-spec."getpass"."^0.1.1" =
    self.by-version."getpass"."0.1.6";
  by-version."getpass"."0.1.6" = self.buildNodePackage {
    name = "getpass-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/getpass/-/getpass-0.1.6.tgz";
      name = "getpass-0.1.6.tgz";
      sha1 = "283ffd9fc1256840875311c1b60e8c40187110e6";
    };
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
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
      url = "https://registry.npmjs.org/glob/-/glob-4.5.3.tgz";
      name = "glob-4.5.3.tgz";
      sha1 = "c6cb73d3226c1efef04de3c56d012f03377ee15f";
    };
    deps = {
      "inflight-1.0.5" = self.by-version."inflight"."1.0.5";
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
  by-spec."glob"."^5.0.15" =
    self.by-version."glob"."5.0.15";
  by-version."glob"."5.0.15" = self.buildNodePackage {
    name = "glob-5.0.15";
    version = "5.0.15";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-5.0.15.tgz";
      name = "glob-5.0.15.tgz";
      sha1 = "1bc936b9e02f4a603fcc222ecf7633d30b8b93b1";
    };
    deps = {
      "inflight-1.0.5" = self.by-version."inflight"."1.0.5";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.2" = self.by-version."minimatch"."3.0.2";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^5.0.3" =
    self.by-version."glob"."5.0.15";
  by-spec."glob"."^7.0.0" =
    self.by-version."glob"."7.0.5";
  by-version."glob"."7.0.5" = self.buildNodePackage {
    name = "glob-7.0.5";
    version = "7.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-7.0.5.tgz";
      name = "glob-7.0.5.tgz";
      sha1 = "b4202a69099bbb4d292a7c1b95b6682b67ebdc95";
    };
    deps = {
      "fs.realpath-1.0.0" = self.by-version."fs.realpath"."1.0.0";
      "inflight-1.0.5" = self.by-version."inflight"."1.0.5";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.2" = self.by-version."minimatch"."3.0.2";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-base"."^0.3.0" =
    self.by-version."glob-base"."0.3.0";
  by-version."glob-base"."0.3.0" = self.buildNodePackage {
    name = "glob-base-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob-base/-/glob-base-0.3.0.tgz";
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
      url = "https://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz";
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
  by-spec."global"."^4.3.0" =
    self.by-version."global"."4.3.0";
  by-version."global"."4.3.0" = self.buildNodePackage {
    name = "global-4.3.0";
    version = "4.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/global/-/global-4.3.0.tgz";
      name = "global-4.3.0.tgz";
      sha1 = "ef7ec4beead579b454f5ebd5e7f303db54f42a2b";
    };
    deps = {
      "min-document-2.18.0" = self.by-version."min-document"."2.18.0";
      "process-0.5.2" = self.by-version."process"."0.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^4.1.2" =
    self.by-version."graceful-fs"."4.1.4";
  by-version."graceful-fs"."4.1.4" = self.buildNodePackage {
    name = "graceful-fs-4.1.4";
    version = "4.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.4.tgz";
      name = "graceful-fs-4.1.4.tgz";
      sha1 = "ef089d2880f033b011823ce5c8fae798da775dbd";
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
      url = "https://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
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
  by-spec."growly"."^1.2.0" =
    self.by-version."growly"."1.3.0";
  by-version."growly"."1.3.0" = self.buildNodePackage {
    name = "growly-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/growly/-/growly-1.3.0.tgz";
      name = "growly-1.3.0.tgz";
      sha1 = "f10748cbe76af964b7c96c93c6bcc28af120c081";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hangupsjs"."^1.3.1" =
    self.by-version."hangupsjs"."1.3.1";
  by-version."hangupsjs"."1.3.1" = self.buildNodePackage {
    name = "hangupsjs-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hangupsjs/-/hangupsjs-1.3.1.tgz";
      name = "hangupsjs-1.3.1.tgz";
      sha1 = "a552fe123be82cea9afb648c60bd37887465230e";
    };
    deps = {
      "bog-1.0.2" = self.by-version."bog"."1.0.2";
      "fnuc-0.0.15" = self.by-version."fnuc"."0.0.15";
      "q-1.4.1" = self.by-version."q"."1.4.1";
      "request-2.72.0" = self.by-version."request"."2.72.0";
      "tough-cookie-2.2.2" = self.by-version."tough-cookie"."2.2.2";
      "tough-cookie-filestore-0.0.1" = self.by-version."tough-cookie-filestore"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."har-validator"."~2.0.6" =
    self.by-version."har-validator"."2.0.6";
  by-version."har-validator"."2.0.6" = self.buildNodePackage {
    name = "har-validator-2.0.6";
    version = "2.0.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/har-validator/-/har-validator-2.0.6.tgz";
      name = "har-validator-2.0.6.tgz";
      sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
    };
    deps = {
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "is-my-json-valid-2.13.1" = self.by-version."is-my-json-valid"."2.13.1";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
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
      url = "https://registry.npmjs.org/has/-/has-1.0.1.tgz";
      name = "has-1.0.1.tgz";
      sha1 = "8461733f538b0837c9361e39a9ab9e9704dc2f28";
    };
    deps = {
      "function-bind-1.1.0" = self.by-version."function-bind"."1.1.0";
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
      url = "https://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/has-flag/-/has-flag-1.0.0.tgz";
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
  by-spec."has-unicode"."^2.0.0" =
    self.by-version."has-unicode"."2.0.1";
  by-version."has-unicode"."2.0.1" = self.buildNodePackage {
    name = "has-unicode-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.1.tgz";
      name = "has-unicode-2.0.1.tgz";
      sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
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
      url = "https://registry.npmjs.org/hash.js/-/hash.js-1.0.3.tgz";
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
  by-spec."hawk"."~3.1.3" =
    self.by-version."hawk"."3.1.3";
  by-version."hawk"."3.1.3" = self.buildNodePackage {
    name = "hawk-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hawk/-/hawk-3.1.3.tgz";
      name = "hawk-3.1.3.tgz";
      sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
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
      url = "https://registry.npmjs.org/hoek/-/hoek-2.16.3.tgz";
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
  by-spec."hosted-git-info"."^2.1.4" =
    self.by-version."hosted-git-info"."2.1.5";
  by-version."hosted-git-info"."2.1.5" = self.buildNodePackage {
    name = "hosted-git-info-2.1.5";
    version = "2.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hosted-git-info/-/hosted-git-info-2.1.5.tgz";
      name = "hosted-git-info-2.1.5.tgz";
      sha1 = "0ba81d90da2e25ab34a332e6ec77936e1598118b";
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
    self.by-version."htmlescape"."1.1.1";
  by-version."htmlescape"."1.1.1" = self.buildNodePackage {
    name = "htmlescape-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/htmlescape/-/htmlescape-1.1.1.tgz";
      name = "htmlescape-1.1.1.tgz";
      sha1 = "3a03edc2214bca3b66424a3e7959349509cb0351";
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
      url = "https://registry.npmjs.org/http-browserify/-/http-browserify-1.7.0.tgz";
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
  by-spec."http-errors"."~1.5.0" =
    self.by-version."http-errors"."1.5.0";
  by-version."http-errors"."1.5.0" = self.buildNodePackage {
    name = "http-errors-1.5.0";
    version = "1.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/http-errors/-/http-errors-1.5.0.tgz";
      name = "http-errors-1.5.0.tgz";
      sha1 = "b1cb3d8260fd8e2386cad3189045943372d48211";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "setprototypeof-1.0.1" = self.by-version."setprototypeof"."1.0.1";
      "statuses-1.3.0" = self.by-version."statuses"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-proxy"."^1.11.2" =
    self.by-version."http-proxy"."1.14.0";
  by-version."http-proxy"."1.14.0" = self.buildNodePackage {
    name = "http-proxy-1.14.0";
    version = "1.14.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/http-proxy/-/http-proxy-1.14.0.tgz";
      name = "http-proxy-1.14.0.tgz";
      sha1 = "be32ab34dd5229e87840f4c27cb335ee195b2a83";
    };
    deps = {
      "eventemitter3-1.2.0" = self.by-version."eventemitter3"."1.2.0";
      "requires-port-1.0.0" = self.by-version."requires-port"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-signature"."~1.1.0" =
    self.by-version."http-signature"."1.1.1";
  by-version."http-signature"."1.1.1" = self.buildNodePackage {
    name = "http-signature-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/http-signature/-/http-signature-1.1.1.tgz";
      name = "http-signature-1.1.1.tgz";
      sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
    };
    deps = {
      "assert-plus-0.2.0" = self.by-version."assert-plus"."0.2.0";
      "jsprim-1.3.0" = self.by-version."jsprim"."1.3.0";
      "sshpk-1.8.3" = self.by-version."sshpk"."1.8.3";
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
      url = "https://registry.npmjs.org/https-browserify/-/https-browserify-0.0.0.tgz";
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
  by-spec."https-browserify"."0.0.1" =
    self.by-version."https-browserify"."0.0.1";
  by-version."https-browserify"."0.0.1" = self.buildNodePackage {
    name = "https-browserify-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/https-browserify/-/https-browserify-0.0.1.tgz";
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
  by-spec."https-browserify"."~0.0.0" =
    self.by-version."https-browserify"."0.0.1";
  by-spec."ieee754"."^1.1.4" =
    self.by-version."ieee754"."1.1.6";
  by-version."ieee754"."1.1.6" = self.buildNodePackage {
    name = "ieee754-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ieee754/-/ieee754-1.1.6.tgz";
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
  by-spec."indexof"."0.0.1" =
    self.by-version."indexof"."0.0.1";
  by-version."indexof"."0.0.1" = self.buildNodePackage {
    name = "indexof-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/indexof/-/indexof-0.0.1.tgz";
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
  by-spec."individual"."^3.0.0" =
    self.by-version."individual"."3.0.0";
  by-version."individual"."3.0.0" = self.buildNodePackage {
    name = "individual-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/individual/-/individual-3.0.0.tgz";
      name = "individual-3.0.0.tgz";
      sha1 = "e7ca4f85f8957b018734f285750dc22ec2f9862d";
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
    self.by-version."inflight"."1.0.5";
  by-version."inflight"."1.0.5" = self.buildNodePackage {
    name = "inflight-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/inflight/-/inflight-1.0.5.tgz";
      name = "inflight-1.0.5.tgz";
      sha1 = "db3204cd5a9de2e6cd890b85c6e2f66bcf4f620a";
    };
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "wrappy-1.0.2" = self.by-version."wrappy"."1.0.2";
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
      url = "https://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
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
      url = "https://registry.npmjs.org/ini/-/ini-1.3.4.tgz";
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
      url = "https://registry.npmjs.org/inline-source-map/-/inline-source-map-0.5.0.tgz";
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
    self.by-version."inline-source-map"."0.6.2";
  by-version."inline-source-map"."0.6.2" = self.buildNodePackage {
    name = "inline-source-map-0.6.2";
    version = "0.6.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/inline-source-map/-/inline-source-map-0.6.2.tgz";
      name = "inline-source-map-0.6.2.tgz";
      sha1 = "f9393471c18a79d1724f863fa38b586370ade2a5";
    };
    deps = {
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
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
      url = "https://registry.npmjs.org/insert-module-globals/-/insert-module-globals-6.6.3.tgz";
      name = "insert-module-globals-6.6.3.tgz";
      sha1 = "20638e29a30f9ed1ca2e3a825fbc2cba5246ddfc";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
      "combine-source-map-0.6.1" = self.by-version."combine-source-map"."0.6.1";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "is-buffer-1.1.3" = self.by-version."is-buffer"."1.1.3";
      "lexical-scope-1.2.0" = self.by-version."lexical-scope"."1.2.0";
      "process-0.11.5" = self.by-version."process"."0.11.5";
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
      url = "https://registry.npmjs.org/insert-module-globals/-/insert-module-globals-7.0.1.tgz";
      name = "insert-module-globals-7.0.1.tgz";
      sha1 = "c03bf4e01cb086d5b5e5ace8ad0afe7889d638c3";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
      "combine-source-map-0.7.2" = self.by-version."combine-source-map"."0.7.2";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "is-buffer-1.1.3" = self.by-version."is-buffer"."1.1.3";
      "lexical-scope-1.2.0" = self.by-version."lexical-scope"."1.2.0";
      "process-0.11.5" = self.by-version."process"."0.11.5";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
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
      url = "https://registry.npmjs.org/interpret/-/interpret-0.6.6.tgz";
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
  by-spec."interpret"."^1.0.0" =
    self.by-version."interpret"."1.0.1";
  by-version."interpret"."1.0.1" = self.buildNodePackage {
    name = "interpret-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/interpret/-/interpret-1.0.1.tgz";
      name = "interpret-1.0.1.tgz";
      sha1 = "d579fb7f693b858004947af39fa0db49f795602c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."invert-kv"."^1.0.0" =
    self.by-version."invert-kv"."1.0.0";
  by-version."invert-kv"."1.0.0" = self.buildNodePackage {
    name = "invert-kv-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/invert-kv/-/invert-kv-1.0.0.tgz";
      name = "invert-kv-1.0.0.tgz";
      sha1 = "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ipaddr.js"."1.1.1" =
    self.by-version."ipaddr.js"."1.1.1";
  by-version."ipaddr.js"."1.1.1" = self.buildNodePackage {
    name = "ipaddr.js-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.1.1.tgz";
      name = "ipaddr.js-1.1.1.tgz";
      sha1 = "c791d95f52b29c1247d5df80ada39b8a73647230";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-arrayish"."^0.2.1" =
    self.by-version."is-arrayish"."0.2.1";
  by-version."is-arrayish"."0.2.1" = self.buildNodePackage {
    name = "is-arrayish-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.2.1.tgz";
      name = "is-arrayish-0.2.1.tgz";
      sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
    };
    deps = {
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
      url = "https://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz";
      name = "is-binary-path-1.0.1.tgz";
      sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
    };
    deps = {
      "binary-extensions-1.4.1" = self.by-version."binary-extensions"."1.4.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-buffer"."^1.0.2" =
    self.by-version."is-buffer"."1.1.3";
  by-version."is-buffer"."1.1.3" = self.buildNodePackage {
    name = "is-buffer-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-buffer/-/is-buffer-1.1.3.tgz";
      name = "is-buffer-1.1.3.tgz";
      sha1 = "db897fc3f7aca2d50de94b6c8c2896a4771627af";
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
    self.by-version."is-buffer"."1.1.3";
  by-spec."is-builtin-module"."^1.0.0" =
    self.by-version."is-builtin-module"."1.0.0";
  by-version."is-builtin-module"."1.0.0" = self.buildNodePackage {
    name = "is-builtin-module-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
      name = "is-builtin-module-1.0.0.tgz";
      sha1 = "540572d34f7ac3119f8f76c30cbc1b1e037affbe";
    };
    deps = {
      "builtin-modules-1.1.1" = self.by-version."builtin-modules"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-dotfile"."^1.0.0" =
    self.by-version."is-dotfile"."1.0.2";
  by-version."is-dotfile"."1.0.2" = self.buildNodePackage {
    name = "is-dotfile-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.2.tgz";
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
  by-spec."is-equal-shallow"."^0.1.3" =
    self.by-version."is-equal-shallow"."0.1.3";
  by-version."is-equal-shallow"."0.1.3" = self.buildNodePackage {
    name = "is-equal-shallow-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
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
      url = "https://registry.npmjs.org/is-extendable/-/is-extendable-0.1.1.tgz";
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
      url = "https://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz";
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
  by-spec."is-my-json-valid"."^2.12.4" =
    self.by-version."is-my-json-valid"."2.13.1";
  by-version."is-my-json-valid"."2.13.1" = self.buildNodePackage {
    name = "is-my-json-valid-2.13.1";
    version = "2.13.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.13.1.tgz";
      name = "is-my-json-valid-2.13.1.tgz";
      sha1 = "d55778a82feb6b0963ff4be111d5d1684e890707";
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
  by-spec."is-number"."^2.0.2" =
    self.by-version."is-number"."2.1.0";
  by-version."is-number"."2.1.0" = self.buildNodePackage {
    name = "is-number-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-number/-/is-number-2.1.0.tgz";
      name = "is-number-2.1.0.tgz";
      sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
    };
    deps = {
      "kind-of-3.0.3" = self.by-version."kind-of"."3.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^2.1.0" =
    self.by-version."is-number"."2.1.0";
  by-spec."is-object"."^1.0.1" =
    self.by-version."is-object"."1.0.1";
  by-version."is-object"."1.0.1" = self.buildNodePackage {
    name = "is-object-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-object/-/is-object-1.0.1.tgz";
      name = "is-object-1.0.1.tgz";
      sha1 = "8952688c5ec2ffd6b03ecc85e769e02903083470";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-posix-bracket"."^0.1.0" =
    self.by-version."is-posix-bracket"."0.1.1";
  by-version."is-posix-bracket"."0.1.1" = self.buildNodePackage {
    name = "is-posix-bracket-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz";
      name = "is-posix-bracket-0.1.1.tgz";
      sha1 = "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-primitive"."^2.0.0" =
    self.by-version."is-primitive"."2.0.0";
  by-version."is-primitive"."2.0.0" = self.buildNodePackage {
    name = "is-primitive-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
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
  by-spec."is-typedarray"."~1.0.0" =
    self.by-version."is-typedarray"."1.0.0";
  by-version."is-typedarray"."1.0.0" = self.buildNodePackage {
    name = "is-typedarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
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
  by-spec."is-utf8"."^0.2.0" =
    self.by-version."is-utf8"."0.2.1";
  by-version."is-utf8"."0.2.1" = self.buildNodePackage {
    name = "is-utf8-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-utf8/-/is-utf8-0.2.1.tgz";
      name = "is-utf8-0.2.1.tgz";
      sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
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
      url = "https://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
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
  by-spec."isarray"."1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-version."isarray"."1.0.0" = self.buildNodePackage {
    name = "isarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
      name = "isarray-1.0.0.tgz";
      sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."^1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-spec."isarray"."~0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-spec."isarray"."~1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-spec."isexe"."^1.1.1" =
    self.by-version."isexe"."1.1.2";
  by-version."isexe"."1.1.2" = self.buildNodePackage {
    name = "isexe-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isexe/-/isexe-1.1.2.tgz";
      name = "isexe-1.1.2.tgz";
      sha1 = "36f3e22e60750920f5e7241a476a8c6a42275ad0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isobject"."^2.0.0" =
    self.by-version."isobject"."2.1.0";
  by-version."isobject"."2.1.0" = self.buildNodePackage {
    name = "isobject-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isobject/-/isobject-2.1.0.tgz";
      name = "isobject-2.1.0.tgz";
      sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
    };
    deps = {
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isstream"."~0.1.2" =
    self.by-version."isstream"."0.1.2";
  by-version."isstream"."0.1.2" = self.buildNodePackage {
    name = "isstream-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
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
  by-spec."jodid25519"."^1.0.0" =
    self.by-version."jodid25519"."1.0.2";
  by-version."jodid25519"."1.0.2" = self.buildNodePackage {
    name = "jodid25519-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jodid25519/-/jodid25519-1.0.2.tgz";
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
  by-spec."jsbn"."~0.1.0" =
    self.by-version."jsbn"."0.1.0";
  by-version."jsbn"."0.1.0" = self.buildNodePackage {
    name = "jsbn-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsbn/-/jsbn-0.1.0.tgz";
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
  by-spec."json-schema"."0.2.2" =
    self.by-version."json-schema"."0.2.2";
  by-version."json-schema"."0.2.2" = self.buildNodePackage {
    name = "json-schema-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-schema/-/json-schema-0.2.2.tgz";
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
      url = "https://registry.npmjs.org/json-stable-stringify/-/json-stable-stringify-0.0.1.tgz";
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
  by-spec."json-stringify-safe"."~5.0.1" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-version."json-stringify-safe"."5.0.1" = self.buildNodePackage {
    name = "json-stringify-safe-5.0.1";
    version = "5.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
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
  by-spec."json3"."^3.3.2" =
    self.by-version."json3"."3.3.2";
  by-version."json3"."3.3.2" = self.buildNodePackage {
    name = "json3-3.3.2";
    version = "3.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json3/-/json3-3.3.2.tgz";
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
  by-spec."json5"."^0.5.0" =
    self.by-version."json5"."0.5.0";
  by-version."json5"."0.5.0" = self.buildNodePackage {
    name = "json5-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/json5/-/json5-0.5.0.tgz";
      name = "json5-0.5.0.tgz";
      sha1 = "9b20715b026cbe3778fd769edccd822d8332a5b2";
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
      url = "https://registry.npmjs.org/jsonify/-/jsonify-0.0.0.tgz";
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
      url = "https://registry.npmjs.org/jsonparse/-/jsonparse-0.0.5.tgz";
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
      url = "https://registry.npmjs.org/jsonparse/-/jsonparse-1.2.0.tgz";
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
      url = "https://registry.npmjs.org/jsonpointer/-/jsonpointer-2.0.0.tgz";
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
    self.by-version."jsprim"."1.3.0";
  by-version."jsprim"."1.3.0" = self.buildNodePackage {
    name = "jsprim-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsprim/-/jsprim-1.3.0.tgz";
      name = "jsprim-1.3.0.tgz";
      sha1 = "ce2e1bef835204b4f3099928c602f8b6ae615650";
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
  by-spec."kind-of"."^3.0.2" =
    self.by-version."kind-of"."3.0.3";
  by-version."kind-of"."3.0.3" = self.buildNodePackage {
    name = "kind-of-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/kind-of/-/kind-of-3.0.3.tgz";
      name = "kind-of-3.0.3.tgz";
      sha1 = "c61608747d815b0362556db3276362a7a38aded3";
    };
    deps = {
      "is-buffer-1.1.3" = self.by-version."is-buffer"."1.1.3";
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
      url = "https://registry.npmjs.org/labeled-stream-splicer/-/labeled-stream-splicer-1.0.2.tgz";
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
  by-spec."labeled-stream-splicer"."^2.0.0" =
    self.by-version."labeled-stream-splicer"."2.0.0";
  by-version."labeled-stream-splicer"."2.0.0" = self.buildNodePackage {
    name = "labeled-stream-splicer-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/labeled-stream-splicer/-/labeled-stream-splicer-2.0.0.tgz";
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
  by-spec."lazy-cache"."^1.0.3" =
    self.by-version."lazy-cache"."1.0.4";
  by-version."lazy-cache"."1.0.4" = self.buildNodePackage {
    name = "lazy-cache-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lazy-cache/-/lazy-cache-1.0.4.tgz";
      name = "lazy-cache-1.0.4.tgz";
      sha1 = "a1d78fc3a50474cb80845d3b3b6e1da49a446e8e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lcid"."^1.0.0" =
    self.by-version."lcid"."1.0.0";
  by-version."lcid"."1.0.0" = self.buildNodePackage {
    name = "lcid-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lcid/-/lcid-1.0.0.tgz";
      name = "lcid-1.0.0.tgz";
      sha1 = "308accafa0bc483a3867b4b6f2b9506251d1b835";
    };
    deps = {
      "invert-kv-1.0.0" = self.by-version."invert-kv"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lexical-scope"."^1.2.0" =
    self.by-version."lexical-scope"."1.2.0";
  by-version."lexical-scope"."1.2.0" = self.buildNodePackage {
    name = "lexical-scope-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lexical-scope/-/lexical-scope-1.2.0.tgz";
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
  by-spec."load-json-file"."^1.0.0" =
    self.by-version."load-json-file"."1.1.0";
  by-version."load-json-file"."1.1.0" = self.buildNodePackage {
    name = "load-json-file-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/load-json-file/-/load-json-file-1.1.0.tgz";
      name = "load-json-file-1.1.0.tgz";
      sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
    };
    deps = {
      "graceful-fs-4.1.4" = self.by-version."graceful-fs"."4.1.4";
      "parse-json-2.2.0" = self.by-version."parse-json"."2.2.0";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
      "strip-bom-2.0.0" = self.by-version."strip-bom"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."load-json-file"."^1.1.0" =
    self.by-version."load-json-file"."1.1.0";
  by-spec."loader-runner"."^2.1.0" =
    self.by-version."loader-runner"."2.1.1";
  by-version."loader-runner"."2.1.1" = self.buildNodePackage {
    name = "loader-runner-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/loader-runner/-/loader-runner-2.1.1.tgz";
      name = "loader-runner-2.1.1.tgz";
      sha1 = "60a30f2a7c8eae79f0805b5848fee134f8ade519";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."^0.2.11" =
    self.by-version."loader-utils"."0.2.15";
  by-version."loader-utils"."0.2.15" = self.buildNodePackage {
    name = "loader-utils-0.2.15";
    version = "0.2.15";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/loader-utils/-/loader-utils-0.2.15.tgz";
      name = "loader-utils-0.2.15.tgz";
      sha1 = "c7df3342a9d4e2103dddc97d4060daccc246d6ac";
    };
    deps = {
      "big.js-3.1.3" = self.by-version."big.js"."3.1.3";
      "emojis-list-2.0.1" = self.by-version."emojis-list"."2.0.1";
      "json5-0.5.0" = self.by-version."json5"."0.5.0";
      "object-assign-4.1.0" = self.by-version."object-assign"."4.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."^0.2.6" =
    self.by-version."loader-utils"."0.2.15";
  by-spec."lodash"."^4.3.0" =
    self.by-version."lodash"."4.13.1";
  by-version."lodash"."4.13.1" = self.buildNodePackage {
    name = "lodash-4.13.1";
    version = "4.13.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash/-/lodash-4.13.1.tgz";
      name = "lodash-4.13.1.tgz";
      sha1 = "83e4b10913f48496d4d16fec4a560af2ee744b68";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._arraycopy"."^3.0.0" =
    self.by-version."lodash._arraycopy"."3.0.0";
  by-version."lodash._arraycopy"."3.0.0" = self.buildNodePackage {
    name = "lodash._arraycopy-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._arraycopy/-/lodash._arraycopy-3.0.0.tgz";
      name = "lodash._arraycopy-3.0.0.tgz";
      sha1 = "76e7b7c1f1fb92547374878a562ed06a3e50f6e1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._arrayeach"."^3.0.0" =
    self.by-version."lodash._arrayeach"."3.0.0";
  by-version."lodash._arrayeach"."3.0.0" = self.buildNodePackage {
    name = "lodash._arrayeach-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._arrayeach/-/lodash._arrayeach-3.0.0.tgz";
      name = "lodash._arrayeach-3.0.0.tgz";
      sha1 = "bab156b2a90d3f1bbd5c653403349e5e5933ef9e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._baseassign"."^3.0.0" =
    self.by-version."lodash._baseassign"."3.2.0";
  by-version."lodash._baseassign"."3.2.0" = self.buildNodePackage {
    name = "lodash._baseassign-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._baseassign/-/lodash._baseassign-3.2.0.tgz";
      name = "lodash._baseassign-3.2.0.tgz";
      sha1 = "8c38a099500f215ad09e59f1722fd0c52bfe0a4e";
    };
    deps = {
      "lodash._basecopy-3.0.1" = self.by-version."lodash._basecopy"."3.0.1";
      "lodash.keys-3.1.2" = self.by-version."lodash.keys"."3.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._baseclone"."^3.0.0" =
    self.by-version."lodash._baseclone"."3.3.0";
  by-version."lodash._baseclone"."3.3.0" = self.buildNodePackage {
    name = "lodash._baseclone-3.3.0";
    version = "3.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._baseclone/-/lodash._baseclone-3.3.0.tgz";
      name = "lodash._baseclone-3.3.0.tgz";
      sha1 = "303519bf6393fe7e42f34d8b630ef7794e3542b7";
    };
    deps = {
      "lodash._arraycopy-3.0.0" = self.by-version."lodash._arraycopy"."3.0.0";
      "lodash._arrayeach-3.0.0" = self.by-version."lodash._arrayeach"."3.0.0";
      "lodash._baseassign-3.2.0" = self.by-version."lodash._baseassign"."3.2.0";
      "lodash._basefor-3.0.3" = self.by-version."lodash._basefor"."3.0.3";
      "lodash.isarray-3.0.4" = self.by-version."lodash.isarray"."3.0.4";
      "lodash.keys-3.1.2" = self.by-version."lodash.keys"."3.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._basecopy"."^3.0.0" =
    self.by-version."lodash._basecopy"."3.0.1";
  by-version."lodash._basecopy"."3.0.1" = self.buildNodePackage {
    name = "lodash._basecopy-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._basecopy/-/lodash._basecopy-3.0.1.tgz";
      name = "lodash._basecopy-3.0.1.tgz";
      sha1 = "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._basefor"."^3.0.0" =
    self.by-version."lodash._basefor"."3.0.3";
  by-version."lodash._basefor"."3.0.3" = self.buildNodePackage {
    name = "lodash._basefor-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._basefor/-/lodash._basefor-3.0.3.tgz";
      name = "lodash._basefor-3.0.3.tgz";
      sha1 = "7550b4e9218ef09fad24343b612021c79b4c20c2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._baseslice"."~4.0.0" =
    self.by-version."lodash._baseslice"."4.0.0";
  by-version."lodash._baseslice"."4.0.0" = self.buildNodePackage {
    name = "lodash._baseslice-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._baseslice/-/lodash._baseslice-4.0.0.tgz";
      name = "lodash._baseslice-4.0.0.tgz";
      sha1 = "f5ce1df982948ecaff63f223853415b7b9763704";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._basetostring"."~4.12.0" =
    self.by-version."lodash._basetostring"."4.12.0";
  by-version."lodash._basetostring"."4.12.0" = self.buildNodePackage {
    name = "lodash._basetostring-4.12.0";
    version = "4.12.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._basetostring/-/lodash._basetostring-4.12.0.tgz";
      name = "lodash._basetostring-4.12.0.tgz";
      sha1 = "9327c9dc5158866b7fa4b9d42f4638e5766dd9df";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._bindcallback"."^3.0.0" =
    self.by-version."lodash._bindcallback"."3.0.1";
  by-version."lodash._bindcallback"."3.0.1" = self.buildNodePackage {
    name = "lodash._bindcallback-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._bindcallback/-/lodash._bindcallback-3.0.1.tgz";
      name = "lodash._bindcallback-3.0.1.tgz";
      sha1 = "e531c27644cf8b57a99e17ed95b35c748789392e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._createassigner"."^3.0.0" =
    self.by-version."lodash._createassigner"."3.1.1";
  by-version."lodash._createassigner"."3.1.1" = self.buildNodePackage {
    name = "lodash._createassigner-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._createassigner/-/lodash._createassigner-3.1.1.tgz";
      name = "lodash._createassigner-3.1.1.tgz";
      sha1 = "838a5bae2fdaca63ac22dee8e19fa4e6d6970b11";
    };
    deps = {
      "lodash._bindcallback-3.0.1" = self.by-version."lodash._bindcallback"."3.0.1";
      "lodash._isiterateecall-3.0.9" = self.by-version."lodash._isiterateecall"."3.0.9";
      "lodash.restparam-3.6.1" = self.by-version."lodash.restparam"."3.6.1";
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
      url = "https://registry.npmjs.org/lodash._getnative/-/lodash._getnative-3.9.1.tgz";
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
  by-spec."lodash._isiterateecall"."^3.0.0" =
    self.by-version."lodash._isiterateecall"."3.0.9";
  by-version."lodash._isiterateecall"."3.0.9" = self.buildNodePackage {
    name = "lodash._isiterateecall-3.0.9";
    version = "3.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
      name = "lodash._isiterateecall-3.0.9.tgz";
      sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.assign"."^3.0.0" =
    self.by-version."lodash.assign"."3.2.0";
  by-version."lodash.assign"."3.2.0" = self.buildNodePackage {
    name = "lodash.assign-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.assign/-/lodash.assign-3.2.0.tgz";
      name = "lodash.assign-3.2.0.tgz";
      sha1 = "3ce9f0234b4b2223e296b8fa0ac1fee8ebca64fa";
    };
    deps = {
      "lodash._baseassign-3.2.0" = self.by-version."lodash._baseassign"."3.2.0";
      "lodash._createassigner-3.1.1" = self.by-version."lodash._createassigner"."3.1.1";
      "lodash.keys-3.1.2" = self.by-version."lodash.keys"."3.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.assign"."^4.0.3" =
    self.by-version."lodash.assign"."4.0.9";
  by-version."lodash.assign"."4.0.9" = self.buildNodePackage {
    name = "lodash.assign-4.0.9";
    version = "4.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.assign/-/lodash.assign-4.0.9.tgz";
      name = "lodash.assign-4.0.9.tgz";
      sha1 = "0a0731d93590ddd9ba4589fad65aaf6ee09217e3";
    };
    deps = {
      "lodash.keys-4.0.7" = self.by-version."lodash.keys"."4.0.7";
      "lodash.rest-4.0.3" = self.by-version."lodash.rest"."4.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.assign"."^4.0.6" =
    self.by-version."lodash.assign"."4.0.9";
  by-spec."lodash.clonedeep"."^3.0.0" =
    self.by-version."lodash.clonedeep"."3.0.2";
  by-version."lodash.clonedeep"."3.0.2" = self.buildNodePackage {
    name = "lodash.clonedeep-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.clonedeep/-/lodash.clonedeep-3.0.2.tgz";
      name = "lodash.clonedeep-3.0.2.tgz";
      sha1 = "a0a1e40d82a5ea89ff5b147b8444ed63d92827db";
    };
    deps = {
      "lodash._baseclone-3.3.0" = self.by-version."lodash._baseclone"."3.3.0";
      "lodash._bindcallback-3.0.1" = self.by-version."lodash._bindcallback"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarguments"."^3.0.0" =
    self.by-version."lodash.isarguments"."3.0.8";
  by-version."lodash.isarguments"."3.0.8" = self.buildNodePackage {
    name = "lodash.isarguments-3.0.8";
    version = "3.0.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.isarguments/-/lodash.isarguments-3.0.8.tgz";
      name = "lodash.isarguments-3.0.8.tgz";
      sha1 = "5bf8da887f01f2a9e49c0a175cdaeb318a0e43dc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarray"."^3.0.0" =
    self.by-version."lodash.isarray"."3.0.4";
  by-version."lodash.isarray"."3.0.4" = self.buildNodePackage {
    name = "lodash.isarray-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.isarray/-/lodash.isarray-3.0.4.tgz";
      name = "lodash.isarray-3.0.4.tgz";
      sha1 = "79e4eb88c36a8122af86f844aa9bcd851b5fbb55";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.keys"."^3.0.0" =
    self.by-version."lodash.keys"."3.1.2";
  by-version."lodash.keys"."3.1.2" = self.buildNodePackage {
    name = "lodash.keys-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.keys/-/lodash.keys-3.1.2.tgz";
      name = "lodash.keys-3.1.2.tgz";
      sha1 = "4dbc0472b156be50a0b286855d1bd0b0c656098a";
    };
    deps = {
      "lodash._getnative-3.9.1" = self.by-version."lodash._getnative"."3.9.1";
      "lodash.isarguments-3.0.8" = self.by-version."lodash.isarguments"."3.0.8";
      "lodash.isarray-3.0.4" = self.by-version."lodash.isarray"."3.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.keys"."^4.0.0" =
    self.by-version."lodash.keys"."4.0.7";
  by-version."lodash.keys"."4.0.7" = self.buildNodePackage {
    name = "lodash.keys-4.0.7";
    version = "4.0.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.keys/-/lodash.keys-4.0.7.tgz";
      name = "lodash.keys-4.0.7.tgz";
      sha1 = "30e1b3bd98e54d6a0611991812685b6bc47cb63b";
    };
    deps = {
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
      url = "https://registry.npmjs.org/lodash.memoize/-/lodash.memoize-3.0.4.tgz";
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
  by-spec."lodash.pad"."^4.1.0" =
    self.by-version."lodash.pad"."4.4.0";
  by-version."lodash.pad"."4.4.0" = self.buildNodePackage {
    name = "lodash.pad-4.4.0";
    version = "4.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.pad/-/lodash.pad-4.4.0.tgz";
      name = "lodash.pad-4.4.0.tgz";
      sha1 = "faa38df26c0a69ec5086a82246c958e150dcb1ab";
    };
    deps = {
      "lodash._baseslice-4.0.0" = self.by-version."lodash._baseslice"."4.0.0";
      "lodash._basetostring-4.12.0" = self.by-version."lodash._basetostring"."4.12.0";
      "lodash.tostring-4.1.3" = self.by-version."lodash.tostring"."4.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.padend"."^4.1.0" =
    self.by-version."lodash.padend"."4.5.0";
  by-version."lodash.padend"."4.5.0" = self.buildNodePackage {
    name = "lodash.padend-4.5.0";
    version = "4.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.padend/-/lodash.padend-4.5.0.tgz";
      name = "lodash.padend-4.5.0.tgz";
      sha1 = "a289e9377ee2e6de8ba7f11f3a8eb326070b7619";
    };
    deps = {
      "lodash._baseslice-4.0.0" = self.by-version."lodash._baseslice"."4.0.0";
      "lodash._basetostring-4.12.0" = self.by-version."lodash._basetostring"."4.12.0";
      "lodash.tostring-4.1.3" = self.by-version."lodash.tostring"."4.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.padstart"."^4.1.0" =
    self.by-version."lodash.padstart"."4.5.0";
  by-version."lodash.padstart"."4.5.0" = self.buildNodePackage {
    name = "lodash.padstart-4.5.0";
    version = "4.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.padstart/-/lodash.padstart-4.5.0.tgz";
      name = "lodash.padstart-4.5.0.tgz";
      sha1 = "3ea190f6734841c3364d279d11e056726b60a79a";
    };
    deps = {
      "lodash._baseslice-4.0.0" = self.by-version."lodash._baseslice"."4.0.0";
      "lodash._basetostring-4.12.0" = self.by-version."lodash._basetostring"."4.12.0";
      "lodash.tostring-4.1.3" = self.by-version."lodash.tostring"."4.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.rest"."^4.0.0" =
    self.by-version."lodash.rest"."4.0.3";
  by-version."lodash.rest"."4.0.3" = self.buildNodePackage {
    name = "lodash.rest-4.0.3";
    version = "4.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.rest/-/lodash.rest-4.0.3.tgz";
      name = "lodash.rest-4.0.3.tgz";
      sha1 = "4c1c32c40028087250fabf70d42e0151548f48c5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.restparam"."^3.0.0" =
    self.by-version."lodash.restparam"."3.6.1";
  by-version."lodash.restparam"."3.6.1" = self.buildNodePackage {
    name = "lodash.restparam-3.6.1";
    version = "3.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.restparam/-/lodash.restparam-3.6.1.tgz";
      name = "lodash.restparam-3.6.1.tgz";
      sha1 = "936a4e309ef330a7645ed4145986c85ae5b20805";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.tostring"."^4.0.0" =
    self.by-version."lodash.tostring"."4.1.3";
  by-version."lodash.tostring"."4.1.3" = self.buildNodePackage {
    name = "lodash.tostring-4.1.3";
    version = "4.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.tostring/-/lodash.tostring-4.1.3.tgz";
      name = "lodash.tostring-4.1.3.tgz";
      sha1 = "5697f62973f30105a76c2deb3e2d1669f04fd825";
    };
    deps = {
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
      url = "https://registry.npmjs.org/longest/-/longest-1.0.1.tgz";
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
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.7.3";
  by-version."lru-cache"."2.7.3" = self.buildNodePackage {
    name = "lru-cache-2.7.3";
    version = "2.7.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lru-cache/-/lru-cache-2.7.3.tgz";
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
  by-spec."marked".">=0.3.3 >=0.3.2 <0.4.0" =
    self.by-version."marked"."0.3.5";
  by-version."marked"."0.3.5" = self.buildNodePackage {
    name = "marked-0.3.5";
    version = "0.3.5";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/marked/-/marked-0.3.5.tgz";
      name = "marked-0.3.5.tgz";
      sha1 = "4113a15ac5d7bca158a5aae07224587b9fa15b94";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."marked"."^0.3.2" =
    self.by-version."marked"."0.3.5";
  by-spec."marked"."^0.3.3" =
    self.by-version."marked"."0.3.5";
  by-spec."marked-terminal"."^1.6.1" =
    self.by-version."marked-terminal"."1.6.1";
  by-version."marked-terminal"."1.6.1" = self.buildNodePackage {
    name = "marked-terminal-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/marked-terminal/-/marked-terminal-1.6.1.tgz";
      name = "marked-terminal-1.6.1.tgz";
      sha1 = "04cd1c7c8b0ef48db3f68010d73a57a9661c6ccf";
    };
    deps = {
      "cardinal-0.5.0" = self.by-version."cardinal"."0.5.0";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "cli-table-0.3.1" = self.by-version."cli-table"."0.3.1";
      "lodash.assign-3.2.0" = self.by-version."lodash.assign"."3.2.0";
      "node-emoji-0.1.0" = self.by-version."node-emoji"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."marked"."0.3.5"];
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
      url = "https://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
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
      url = "https://registry.npmjs.org/memory-fs/-/memory-fs-0.2.0.tgz";
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
  by-spec."memory-fs"."^0.3.0" =
    self.by-version."memory-fs"."0.3.0";
  by-version."memory-fs"."0.3.0" = self.buildNodePackage {
    name = "memory-fs-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/memory-fs/-/memory-fs-0.3.0.tgz";
      name = "memory-fs-0.3.0.tgz";
      sha1 = "7bcc6b629e3a43e871d7e29aca6ae8a7f15cbb20";
    };
    deps = {
      "errno-0.1.4" = self.by-version."errno"."0.1.4";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."memory-fs"."~0.3.0" =
    self.by-version."memory-fs"."0.3.0";
  by-spec."merge-descriptors"."1.0.1" =
    self.by-version."merge-descriptors"."1.0.1";
  by-version."merge-descriptors"."1.0.1" = self.buildNodePackage {
    name = "merge-descriptors-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
      name = "merge-descriptors-1.0.1.tgz";
      sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."methods"."~1.1.2" =
    self.by-version."methods"."1.1.2";
  by-version."methods"."1.1.2" = self.buildNodePackage {
    name = "methods-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz";
      name = "methods-1.1.2.tgz";
      sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
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
    self.by-version."micromatch"."2.3.10";
  by-version."micromatch"."2.3.10" = self.buildNodePackage {
    name = "micromatch-2.3.10";
    version = "2.3.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/micromatch/-/micromatch-2.3.10.tgz";
      name = "micromatch-2.3.10.tgz";
      sha1 = "f4fb3175beec62795a7b8c24d5f745c3680660ab";
    };
    deps = {
      "arr-diff-2.0.0" = self.by-version."arr-diff"."2.0.0";
      "array-unique-0.2.1" = self.by-version."array-unique"."0.2.1";
      "braces-1.8.5" = self.by-version."braces"."1.8.5";
      "expand-brackets-0.1.5" = self.by-version."expand-brackets"."0.1.5";
      "extglob-0.3.2" = self.by-version."extglob"."0.3.2";
      "filename-regex-2.0.0" = self.by-version."filename-regex"."2.0.0";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "kind-of-3.0.3" = self.by-version."kind-of"."3.0.3";
      "normalize-path-2.0.1" = self.by-version."normalize-path"."2.0.1";
      "object.omit-2.0.0" = self.by-version."object.omit"."2.0.0";
      "parse-glob-3.0.4" = self.by-version."parse-glob"."3.0.4";
      "regex-cache-0.4.3" = self.by-version."regex-cache"."0.4.3";
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
      url = "https://registry.npmjs.org/miller-rabin/-/miller-rabin-4.0.0.tgz";
      name = "miller-rabin-4.0.0.tgz";
      sha1 = "4a62fb1d42933c05583982f4c716f6fb9e6c6d3d";
    };
    deps = {
      "bn.js-4.11.4" = self.by-version."bn.js"."4.11.4";
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
      url = "https://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
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
  by-spec."mime"."^1.3.4" =
    self.by-version."mime"."1.3.4";
  by-spec."mime-db".">= 1.23.0 < 2" =
    self.by-version."mime-db"."1.23.0";
  by-version."mime-db"."1.23.0" = self.buildNodePackage {
    name = "mime-db-1.23.0";
    version = "1.23.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-db/-/mime-db-1.23.0.tgz";
      name = "mime-db-1.23.0.tgz";
      sha1 = "a31b4070adaea27d732ea333740a64d0ec9a6659";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-db"."~1.23.0" =
    self.by-version."mime-db"."1.23.0";
  by-spec."mime-types"."^2.1.10" =
    self.by-version."mime-types"."2.1.11";
  by-version."mime-types"."2.1.11" = self.buildNodePackage {
    name = "mime-types-2.1.11";
    version = "2.1.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.11.tgz";
      name = "mime-types-2.1.11.tgz";
      sha1 = "c259c471bda808a85d6cd193b430a5fae4473b3c";
    };
    deps = {
      "mime-db-1.23.0" = self.by-version."mime-db"."1.23.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.1.11" =
    self.by-version."mime-types"."2.1.11";
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.11";
  by-spec."min-document"."^2.6.1" =
    self.by-version."min-document"."2.18.0";
  by-version."min-document"."2.18.0" = self.buildNodePackage {
    name = "min-document-2.18.0";
    version = "2.18.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/min-document/-/min-document-2.18.0.tgz";
      name = "min-document-2.18.0.tgz";
      sha1 = "23051234b0ae8cc52af8ec6fbb8b4857e442842d";
    };
    deps = {
      "dom-walk-0.1.1" = self.by-version."dom-walk"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimalistic-assert"."^1.0.0" =
    self.by-version."minimalistic-assert"."1.0.0";
  by-version."minimalistic-assert"."1.0.0" = self.buildNodePackage {
    name = "minimalistic-assert-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimalistic-assert/-/minimalistic-assert-1.0.0.tgz";
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
    self.by-version."minimatch"."3.0.2";
  by-version."minimatch"."3.0.2" = self.buildNodePackage {
    name = "minimatch-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.2.tgz";
      name = "minimatch-3.0.2.tgz";
      sha1 = "0f398a7300ea441e9c348c83d98ab8c9dbf9c40a";
    };
    deps = {
      "brace-expansion-1.1.5" = self.by-version."brace-expansion"."1.1.5";
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
      url = "https://registry.npmjs.org/minimatch/-/minimatch-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/minimatch/-/minimatch-2.0.10.tgz";
      name = "minimatch-2.0.10.tgz";
      sha1 = "8d087c39c6b38c001b97fca7ce6d0e1e80afbac7";
    };
    deps = {
      "brace-expansion-1.1.5" = self.by-version."brace-expansion"."1.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^3.0.0" =
    self.by-version."minimatch"."3.0.2";
  by-spec."minimatch"."^3.0.2" =
    self.by-version."minimatch"."3.0.2";
  by-spec."minimist"."0.0.8" =
    self.by-version."minimist"."0.0.8";
  by-version."minimist"."0.0.8" = self.buildNodePackage {
    name = "minimist-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
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
  by-spec."minimist"."^0.2.0" =
    self.by-version."minimist"."0.2.0";
  by-version."minimist"."0.2.0" = self.buildNodePackage {
    name = "minimist-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimist/-/minimist-0.2.0.tgz";
      name = "minimist-0.2.0.tgz";
      sha1 = "4dffe525dae2b864c66c2e23c6271d7afdecefce";
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
      url = "https://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
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
  by-spec."minimist"."^1.1.1" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."^1.2.0" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."~0.0.1" =
    self.by-version."minimist"."0.0.10";
  by-version."minimist"."0.0.10" = self.buildNodePackage {
    name = "minimist-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimist/-/minimist-0.0.10.tgz";
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
  by-spec."mkdirp".">=0.5 0" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = self.buildNodePackage {
    name = "mkdirp-0.5.1";
    version = "0.5.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
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
  by-spec."mkdirp"."~0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."module-deps"."^3.7.11" =
    self.by-version."module-deps"."3.9.1";
  by-version."module-deps"."3.9.1" = self.buildNodePackage {
    name = "module-deps-3.9.1";
    version = "3.9.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/module-deps/-/module-deps-3.9.1.tgz";
      name = "module-deps-3.9.1.tgz";
      sha1 = "ea75caf9199090d25b0d5512b5acacb96e7f87f3";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
      "browser-resolve-1.11.2" = self.by-version."browser-resolve"."1.11.2";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "detective-4.3.1" = self.by-version."detective"."4.3.1";
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
      "resolve-1.1.7" = self.by-version."resolve"."1.1.7";
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
    self.by-version."module-deps"."4.0.7";
  by-version."module-deps"."4.0.7" = self.buildNodePackage {
    name = "module-deps-4.0.7";
    version = "4.0.7";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/module-deps/-/module-deps-4.0.7.tgz";
      name = "module-deps-4.0.7.tgz";
      sha1 = "edfeb3937be7359bc14a6672c22ef124887f6ed2";
    };
    deps = {
      "JSONStream-1.1.2" = self.by-version."JSONStream"."1.1.2";
      "browser-resolve-1.11.2" = self.by-version."browser-resolve"."1.11.2";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "detective-4.3.1" = self.by-version."detective"."4.3.1";
      "duplexer2-0.1.4" = self.by-version."duplexer2"."0.1.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
      "resolve-1.1.7" = self.by-version."resolve"."1.1.7";
      "stream-combiner2-1.1.1" = self.by-version."stream-combiner2"."1.1.1";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."moment"."^2.10.3" =
    self.by-version."moment"."2.13.0";
  by-version."moment"."2.13.0" = self.buildNodePackage {
    name = "moment-2.13.0";
    version = "2.13.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/moment/-/moment-2.13.0.tgz";
      name = "moment-2.13.0.tgz";
      sha1 = "24162d99521e6d40f99ae6939e806d2139eaac52";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
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
  by-spec."mute-stream"."~0.0.4" =
    self.by-version."mute-stream"."0.0.6";
  by-version."mute-stream"."0.0.6" = self.buildNodePackage {
    name = "mute-stream-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mute-stream/-/mute-stream-0.0.6.tgz";
      name = "mute-stream-0.0.6.tgz";
      sha1 = "48962b19e169fd1dfc240b3f1e7317627bbc47db";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."^2.3.0" =
    self.by-version."nan"."2.3.5";
  by-version."nan"."2.3.5" = self.buildNodePackage {
    name = "nan-2.3.5";
    version = "2.3.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nan/-/nan-2.3.5.tgz";
      name = "nan-2.3.5.tgz";
      sha1 = "822a0dc266290ce4cd3a12282ca3e7e364668a08";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."negotiator"."0.6.1" =
    self.by-version."negotiator"."0.6.1";
  by-version."negotiator"."0.6.1" = self.buildNodePackage {
    name = "negotiator-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/negotiator/-/negotiator-0.6.1.tgz";
      name = "negotiator-0.6.1.tgz";
      sha1 = "2b327184e8992101177b28563fb5e7102acd0ca9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."next-tick"."^0.2.2" =
    self.by-version."next-tick"."0.2.2";
  by-version."next-tick"."0.2.2" = self.buildNodePackage {
    name = "next-tick-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/next-tick/-/next-tick-0.2.2.tgz";
      name = "next-tick-0.2.2.tgz";
      sha1 = "75da4a927ee5887e39065880065b7336413b310d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-emoji"."^0.1.0" =
    self.by-version."node-emoji"."0.1.0";
  by-version."node-emoji"."0.1.0" = self.buildNodePackage {
    name = "node-emoji-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-emoji/-/node-emoji-0.1.0.tgz";
      name = "node-emoji-0.1.0.tgz";
      sha1 = "3f4424a55ba8ed50c254a13858b24454f4182602";
    };
    deps = {
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
      url = "https://registry.npmjs.org/node-libs-browser/-/node-libs-browser-0.5.3.tgz";
      name = "node-libs-browser-0.5.3.tgz";
      sha1 = "55efa888ec907acdb8cffc4e7a51712780e13b6a";
    };
    deps = {
      "assert-1.4.1" = self.by-version."assert"."1.4.1";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-3.6.0" = self.by-version."buffer"."3.6.0";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-0.0.1" = self.by-version."constants-browserify"."0.0.1";
      "crypto-browserify-3.2.8" = self.by-version."crypto-browserify"."3.2.8";
      "domain-browser-1.1.7" = self.by-version."domain-browser"."1.1.7";
      "events-1.1.1" = self.by-version."events"."1.1.1";
      "http-browserify-1.7.0" = self.by-version."http-browserify"."1.7.0";
      "https-browserify-0.0.0" = self.by-version."https-browserify"."0.0.0";
      "os-browserify-0.1.2" = self.by-version."os-browserify"."0.1.2";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.5" = self.by-version."process"."0.11.5";
      "punycode-1.4.1" = self.by-version."punycode"."1.4.1";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
      "stream-browserify-1.0.0" = self.by-version."stream-browserify"."1.0.0";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "timers-browserify-1.4.2" = self.by-version."timers-browserify"."1.4.2";
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
  by-spec."node-libs-browser"."^1.0.0" =
    self.by-version."node-libs-browser"."1.0.0";
  by-version."node-libs-browser"."1.0.0" = self.buildNodePackage {
    name = "node-libs-browser-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-libs-browser/-/node-libs-browser-1.0.0.tgz";
      name = "node-libs-browser-1.0.0.tgz";
      sha1 = "ff8ad6c2cfa78043bdd0091ec07f0aaa581620fc";
    };
    deps = {
      "assert-1.4.1" = self.by-version."assert"."1.4.1";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-4.7.0" = self.by-version."buffer"."4.7.0";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-1.0.0" = self.by-version."constants-browserify"."1.0.0";
      "crypto-browserify-3.11.0" = self.by-version."crypto-browserify"."3.11.0";
      "domain-browser-1.1.7" = self.by-version."domain-browser"."1.1.7";
      "events-1.1.1" = self.by-version."events"."1.1.1";
      "http-browserify-1.7.0" = self.by-version."http-browserify"."1.7.0";
      "https-browserify-0.0.1" = self.by-version."https-browserify"."0.0.1";
      "os-browserify-0.2.1" = self.by-version."os-browserify"."0.2.1";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.5" = self.by-version."process"."0.11.5";
      "punycode-1.4.1" = self.by-version."punycode"."1.4.1";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
      "stream-browserify-2.0.1" = self.by-version."stream-browserify"."2.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "timers-browserify-1.4.2" = self.by-version."timers-browserify"."1.4.2";
      "tty-browserify-0.0.0" = self.by-version."tty-browserify"."0.0.0";
      "url-0.11.0" = self.by-version."url"."0.11.0";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "vm-browserify-0.0.4" = self.by-version."vm-browserify"."0.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-notifier"."^4.2.3" =
    self.by-version."node-notifier"."4.6.0";
  by-version."node-notifier"."4.6.0" = self.buildNodePackage {
    name = "node-notifier-4.6.0";
    version = "4.6.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-notifier/-/node-notifier-4.6.0.tgz";
      name = "node-notifier-4.6.0.tgz";
      sha1 = "d6125d417729782b22d37e592ad5f71e83c0816b";
    };
    deps = {
      "cli-usage-0.1.2" = self.by-version."cli-usage"."0.1.2";
      "growly-1.3.0" = self.by-version."growly"."1.3.0";
      "lodash.clonedeep-3.0.2" = self.by-version."lodash.clonedeep"."3.0.2";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "semver-5.1.1" = self.by-version."semver"."5.1.1";
      "shellwords-0.1.0" = self.by-version."shellwords"."0.1.0";
      "which-1.2.10" = self.by-version."which"."1.2.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-pre-gyp"."^0.6.25" =
    self.by-version."node-pre-gyp"."0.6.28";
  by-version."node-pre-gyp"."0.6.28" = self.buildNodePackage {
    name = "node-pre-gyp-0.6.28";
    version = "0.6.28";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-pre-gyp/-/node-pre-gyp-0.6.28.tgz";
      name = "node-pre-gyp-0.6.28.tgz";
      sha1 = "e440f5faff5480735b4fd0509ff33f9da93d7c20";
    };
    deps = {
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "npmlog-2.0.4" = self.by-version."npmlog"."2.0.4";
      "rc-1.1.6" = self.by-version."rc"."1.1.6";
      "request-2.72.0" = self.by-version."request"."2.72.0";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
      "semver-5.1.1" = self.by-version."semver"."5.1.1";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "tar-pack-3.1.4" = self.by-version."tar-pack"."3.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-uuid"."~1.4.7" =
    self.by-version."node-uuid"."1.4.7";
  by-version."node-uuid"."1.4.7" = self.buildNodePackage {
    name = "node-uuid-1.4.7";
    version = "1.4.7";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-uuid/-/node-uuid-1.4.7.tgz";
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
  by-spec."nopt"."~3.0.1" =
    self.by-version."nopt"."3.0.6";
  by-version."nopt"."3.0.6" = self.buildNodePackage {
    name = "nopt-3.0.6";
    version = "3.0.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/nopt/-/nopt-3.0.6.tgz";
      name = "nopt-3.0.6.tgz";
      sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
    };
    deps = {
      "abbrev-1.0.9" = self.by-version."abbrev"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize-package-data"."^2.3.2" =
    self.by-version."normalize-package-data"."2.3.5";
  by-version."normalize-package-data"."2.3.5" = self.buildNodePackage {
    name = "normalize-package-data-2.3.5";
    version = "2.3.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.3.5.tgz";
      name = "normalize-package-data-2.3.5.tgz";
      sha1 = "8d924f142960e1777e7ffe170543631cc7cb02df";
    };
    deps = {
      "hosted-git-info-2.1.5" = self.by-version."hosted-git-info"."2.1.5";
      "is-builtin-module-1.0.0" = self.by-version."is-builtin-module"."1.0.0";
      "semver-5.1.1" = self.by-version."semver"."5.1.1";
      "validate-npm-package-license-3.0.1" = self.by-version."validate-npm-package-license"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize-path"."^2.0.1" =
    self.by-version."normalize-path"."2.0.1";
  by-version."normalize-path"."2.0.1" = self.buildNodePackage {
    name = "normalize-path-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/normalize-path/-/normalize-path-2.0.1.tgz";
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
  by-spec."notr"."^1.1.2" =
    self.by-version."notr"."1.1.2";
  by-version."notr"."1.1.2" = self.buildNodePackage {
    name = "notr-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/notr/-/notr-1.1.2.tgz";
      name = "notr-1.1.2.tgz";
      sha1 = "cc993bfa140fcd36ac55909d02516723b0b98275";
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
    self.by-version."npmlog"."2.0.4";
  by-version."npmlog"."2.0.4" = self.buildNodePackage {
    name = "npmlog-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/npmlog/-/npmlog-2.0.4.tgz";
      name = "npmlog-2.0.4.tgz";
      sha1 = "98b52530f2514ca90d09ec5b22c8846722375692";
    };
    deps = {
      "ansi-0.3.1" = self.by-version."ansi"."0.3.1";
      "are-we-there-yet-1.1.2" = self.by-version."are-we-there-yet"."1.1.2";
      "gauge-1.2.7" = self.by-version."gauge"."1.2.7";
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
      url = "https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.0.tgz";
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
  by-spec."oauth-sign"."~0.8.1" =
    self.by-version."oauth-sign"."0.8.2";
  by-version."oauth-sign"."0.8.2" = self.buildNodePackage {
    name = "oauth-sign-0.8.2";
    version = "0.8.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.2.tgz";
      name = "oauth-sign-0.8.2.tgz";
      sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
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
    self.by-version."object-assign"."4.1.0";
  by-version."object-assign"."4.1.0" = self.buildNodePackage {
    name = "object-assign-4.1.0";
    version = "4.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.0.tgz";
      name = "object-assign-4.1.0.tgz";
      sha1 = "7a3b3d0e98063d43f4c03f2e8ae6cd51a86883a0";
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
      url = "https://registry.npmjs.org/object-keys/-/object-keys-1.0.9.tgz";
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
      url = "https://registry.npmjs.org/object.omit/-/object.omit-2.0.0.tgz";
      name = "object.omit-2.0.0.tgz";
      sha1 = "868597333d54e60662940bb458605dd6ae12fe94";
    };
    deps = {
      "for-own-0.1.4" = self.by-version."for-own"."0.1.4";
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
      url = "https://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
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
      url = "https://registry.npmjs.org/on-headers/-/on-headers-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/once/-/once-1.3.3.tgz";
      name = "once-1.3.3.tgz";
      sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
    };
    deps = {
      "wrappy-1.0.2" = self.by-version."wrappy"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."~1.3.3" =
    self.by-version."once"."1.3.3";
  by-spec."optimist"."~0.6.0" =
    self.by-version."optimist"."0.6.1";
  by-version."optimist"."0.6.1" = self.buildNodePackage {
    name = "optimist-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/optimist/-/optimist-0.6.1.tgz";
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
  by-spec."original".">=0.0.5" =
    self.by-version."original"."1.0.0";
  by-version."original"."1.0.0" = self.buildNodePackage {
    name = "original-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/original/-/original-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/os-browserify/-/os-browserify-0.1.2.tgz";
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
  by-spec."os-browserify"."~0.2.0" =
    self.by-version."os-browserify"."0.2.1";
  by-version."os-browserify"."0.2.1" = self.buildNodePackage {
    name = "os-browserify-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/os-browserify/-/os-browserify-0.2.1.tgz";
      name = "os-browserify-0.2.1.tgz";
      sha1 = "63fc4ccee5d2d7763d26bbf8601078e6c2e0044f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-locale"."^1.4.0" =
    self.by-version."os-locale"."1.4.0";
  by-version."os-locale"."1.4.0" = self.buildNodePackage {
    name = "os-locale-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/os-locale/-/os-locale-1.4.0.tgz";
      name = "os-locale-1.4.0.tgz";
      sha1 = "20f9f17ae29ed345e8bde583b13d2009803c14d9";
    };
    deps = {
      "lcid-1.0.0" = self.by-version."lcid"."1.0.0";
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
      url = "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.1.tgz";
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
  by-spec."os-tmpdir"."~1.0.1" =
    self.by-version."os-tmpdir"."1.0.1";
  by-spec."pako"."~0.2.0" =
    self.by-version."pako"."0.2.8";
  by-version."pako"."0.2.8" = self.buildNodePackage {
    name = "pako-0.2.8";
    version = "0.2.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pako/-/pako-0.2.8.tgz";
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
      url = "https://registry.npmjs.org/parents/-/parents-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/parse-asn1/-/parse-asn1-5.0.0.tgz";
      name = "parse-asn1-5.0.0.tgz";
      sha1 = "35060f6d5015d37628c770f4e091a0b5a278bc23";
    };
    deps = {
      "asn1.js-4.6.2" = self.by-version."asn1.js"."4.6.2";
      "browserify-aes-1.0.6" = self.by-version."browserify-aes"."1.0.6";
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
      url = "https://registry.npmjs.org/parse-glob/-/parse-glob-3.0.4.tgz";
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
  by-spec."parse-json"."^2.2.0" =
    self.by-version."parse-json"."2.2.0";
  by-version."parse-json"."2.2.0" = self.buildNodePackage {
    name = "parse-json-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/parse-json/-/parse-json-2.2.0.tgz";
      name = "parse-json-2.2.0.tgz";
      sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
    };
    deps = {
      "error-ex-1.3.0" = self.by-version."error-ex"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseurl"."~1.3.1" =
    self.by-version."parseurl"."1.3.1";
  by-version."parseurl"."1.3.1" = self.buildNodePackage {
    name = "parseurl-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/parseurl/-/parseurl-1.3.1.tgz";
      name = "parseurl-1.3.1.tgz";
      sha1 = "c8ab8c9223ba34888aa64a297b28853bec18da56";
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
      url = "https://registry.npmjs.org/path-browserify/-/path-browserify-0.0.0.tgz";
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
  by-spec."path-exists"."^2.0.0" =
    self.by-version."path-exists"."2.1.0";
  by-version."path-exists"."2.1.0" = self.buildNodePackage {
    name = "path-exists-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz";
      name = "path-exists-2.1.0.tgz";
      sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
    };
    deps = {
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-is-absolute"."^1.0.0" =
    self.by-version."path-is-absolute"."1.0.0";
  by-version."path-is-absolute"."1.0.0" = self.buildNodePackage {
    name = "path-is-absolute-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/path-platform/-/path-platform-0.11.15.tgz";
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
      url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
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
  by-spec."path-type"."^1.0.0" =
    self.by-version."path-type"."1.1.0";
  by-version."path-type"."1.1.0" = self.buildNodePackage {
    name = "path-type-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-type/-/path-type-1.1.0.tgz";
      name = "path-type-1.1.0.tgz";
      sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
    };
    deps = {
      "graceful-fs-4.1.4" = self.by-version."graceful-fs"."4.1.4";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
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
      url = "https://registry.npmjs.org/pbkdf2/-/pbkdf2-3.0.4.tgz";
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
      url = "https://registry.npmjs.org/pbkdf2-compat/-/pbkdf2-compat-2.0.1.tgz";
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
  by-spec."pify"."^2.0.0" =
    self.by-version."pify"."2.3.0";
  by-version."pify"."2.3.0" = self.buildNodePackage {
    name = "pify-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz";
      name = "pify-2.3.0.tgz";
      sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
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
    self.by-version."pinkie"."2.0.4";
  by-version."pinkie"."2.0.4" = self.buildNodePackage {
    name = "pinkie-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pinkie/-/pinkie-2.0.4.tgz";
      name = "pinkie-2.0.4.tgz";
      sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie-promise"."^2.0.0" =
    self.by-version."pinkie-promise"."2.0.1";
  by-version."pinkie-promise"."2.0.1" = self.buildNodePackage {
    name = "pinkie-promise-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
      name = "pinkie-promise-2.0.1.tgz";
      sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
    };
    deps = {
      "pinkie-2.0.4" = self.by-version."pinkie"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pkg-conf"."^1.1.2" =
    self.by-version."pkg-conf"."1.1.3";
  by-version."pkg-conf"."1.1.3" = self.buildNodePackage {
    name = "pkg-conf-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pkg-conf/-/pkg-conf-1.1.3.tgz";
      name = "pkg-conf-1.1.3.tgz";
      sha1 = "378e56d6fd13e88bfb6f4a25df7a83faabddba5b";
    };
    deps = {
      "find-up-1.1.2" = self.by-version."find-up"."1.1.2";
      "load-json-file-1.1.0" = self.by-version."load-json-file"."1.1.0";
      "object-assign-4.1.0" = self.by-version."object-assign"."4.1.0";
      "symbol-0.2.3" = self.by-version."symbol"."0.2.3";
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
      url = "https://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz";
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
    self.by-version."process"."0.11.5";
  by-version."process"."0.11.5" = self.buildNodePackage {
    name = "process-0.11.5";
    version = "0.11.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/process/-/process-0.11.5.tgz";
      name = "process-0.11.5.tgz";
      sha1 = "de49788f60e706f333adeea57a187ea9cc4c8495";
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
    self.by-version."process"."0.11.5";
  by-spec."process"."~0.5.1" =
    self.by-version."process"."0.5.2";
  by-version."process"."0.5.2" = self.buildNodePackage {
    name = "process-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/process/-/process-0.5.2.tgz";
      name = "process-0.5.2.tgz";
      sha1 = "1638d8a8e34c2f440a91db95ab9aeb677fc185cf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."process-nextick-args"."~1.0.6" =
    self.by-version."process-nextick-args"."1.0.7";
  by-version."process-nextick-args"."1.0.7" = self.buildNodePackage {
    name = "process-nextick-args-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
      name = "process-nextick-args-1.0.7.tgz";
      sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."proxy-addr"."~1.1.2" =
    self.by-version."proxy-addr"."1.1.2";
  by-version."proxy-addr"."1.1.2" = self.buildNodePackage {
    name = "proxy-addr-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-1.1.2.tgz";
      name = "proxy-addr-1.1.2.tgz";
      sha1 = "b4cc5f22610d9535824c123aef9d3cf73c40ba37";
    };
    deps = {
      "forwarded-0.1.0" = self.by-version."forwarded"."0.1.0";
      "ipaddr.js-1.1.1" = self.by-version."ipaddr.js"."1.1.1";
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
      url = "https://registry.npmjs.org/prr/-/prr-0.0.0.tgz";
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
      url = "https://registry.npmjs.org/public-encrypt/-/public-encrypt-4.0.0.tgz";
      name = "public-encrypt-4.0.0.tgz";
      sha1 = "39f699f3a46560dd5ebacbca693caf7c65c18cc6";
    };
    deps = {
      "bn.js-4.11.4" = self.by-version."bn.js"."4.11.4";
      "browserify-rsa-4.0.1" = self.by-version."browserify-rsa"."4.0.1";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "parse-asn1-5.0.0" = self.by-version."parse-asn1"."5.0.0";
      "randombytes-2.0.3" = self.by-version."randombytes"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pulp"."*" =
    self.by-version."pulp"."9.0.1";
  by-version."pulp"."9.0.1" = self.buildNodePackage {
    name = "pulp-9.0.1";
    version = "9.0.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/pulp/-/pulp-9.0.1.tgz";
      name = "pulp-9.0.1.tgz";
      sha1 = "0176743747ede49b61e967b055ac77255ffc2c87";
    };
    deps = {
      "browserify-11.2.0" = self.by-version."browserify"."11.2.0";
      "browserify-incremental-3.1.1" = self.by-version."browserify-incremental"."3.1.1";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "purs-loader-0.4.0" = self.by-version."purs-loader"."0.4.0";
      "read-1.0.7" = self.by-version."read"."1.0.7";
      "string-stream-0.0.7" = self.by-version."string-stream"."0.0.7";
      "temp-0.8.3" = self.by-version."temp"."0.8.3";
      "through-2.3.8" = self.by-version."through"."2.3.8";
      "tree-kill-1.1.0" = self.by-version."tree-kill"."1.1.0";
      "watchpack-1.1.0" = self.by-version."watchpack"."1.1.0";
      "webpack-1.13.1" = self.by-version."webpack"."1.13.1";
      "webpack-dev-server-1.14.1" = self.by-version."webpack-dev-server"."1.14.1";
      "which-1.2.10" = self.by-version."which"."1.2.10";
      "wordwrap-0.0.2" = self.by-version."wordwrap"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "pulp" = self.by-version."pulp"."9.0.1";
  by-spec."punycode"."1.3.2" =
    self.by-version."punycode"."1.3.2";
  by-version."punycode"."1.3.2" = self.buildNodePackage {
    name = "punycode-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/punycode/-/punycode-1.3.2.tgz";
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
  by-spec."punycode".">=0.2.0" =
    self.by-version."punycode"."2.0.0";
  by-version."punycode"."2.0.0" = self.buildNodePackage {
    name = "punycode-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/punycode/-/punycode-2.0.0.tgz";
      name = "punycode-2.0.0.tgz";
      sha1 = "9145b207b5228410ca17a10fe1cf4ba2c015f6d7";
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
    self.by-version."punycode"."1.4.1";
  by-version."punycode"."1.4.1" = self.buildNodePackage {
    name = "punycode-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz";
      name = "punycode-1.4.1.tgz";
      sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."punycode"."^1.3.2" =
    self.by-version."punycode"."1.4.1";
  by-spec."purs-loader"."^0.4.0" =
    self.by-version."purs-loader"."0.4.0";
  by-version."purs-loader"."0.4.0" = self.buildNodePackage {
    name = "purs-loader-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/purs-loader/-/purs-loader-0.4.0.tgz";
      name = "purs-loader-0.4.0.tgz";
      sha1 = "b53e34317d4c59cd4c1096bd3d87fe7569b02277";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "loader-utils-0.2.15" = self.by-version."loader-utils"."0.2.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."q"."^1.2.0" =
    self.by-version."q"."1.4.1";
  by-version."q"."1.4.1" = self.buildNodePackage {
    name = "q-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/q/-/q-1.4.1.tgz";
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
  by-spec."q"."^1.4.0" =
    self.by-version."q"."1.4.1";
  by-spec."qs"."6.2.0" =
    self.by-version."qs"."6.2.0";
  by-version."qs"."6.2.0" = self.buildNodePackage {
    name = "qs-6.2.0";
    version = "6.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/qs/-/qs-6.2.0.tgz";
      name = "qs-6.2.0.tgz";
      sha1 = "3b7848c03c2dece69a9522b0fae8c4126d745f3b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~6.1.0" =
    self.by-version."qs"."6.1.0";
  by-version."qs"."6.1.0" = self.buildNodePackage {
    name = "qs-6.1.0";
    version = "6.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/qs/-/qs-6.1.0.tgz";
      name = "qs-6.1.0.tgz";
      sha1 = "ec1d1626b24278d99f0fdf4549e524e24eceeb26";
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
      url = "https://registry.npmjs.org/querystring/-/querystring-0.2.0.tgz";
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
      url = "https://registry.npmjs.org/querystring-es3/-/querystring-es3-0.2.1.tgz";
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
      url = "https://registry.npmjs.org/querystringify/-/querystringify-0.0.3.tgz";
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
    self.by-version."randomatic"."1.1.5";
  by-version."randomatic"."1.1.5" = self.buildNodePackage {
    name = "randomatic-1.1.5";
    version = "1.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/randomatic/-/randomatic-1.1.5.tgz";
      name = "randomatic-1.1.5.tgz";
      sha1 = "5e9ef5f2d573c67bd2b8124ae90b5156e457840b";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "kind-of-3.0.3" = self.by-version."kind-of"."3.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randombytes"."^2.0.0" =
    self.by-version."randombytes"."2.0.3";
  by-version."randombytes"."2.0.3" = self.buildNodePackage {
    name = "randombytes-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/randombytes/-/randombytes-2.0.3.tgz";
      name = "randombytes-2.0.3.tgz";
      sha1 = "674c99760901c3c4112771a31e521dc349cc09ec";
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
    self.by-version."randombytes"."2.0.3";
  by-spec."range-parser"."^1.0.3" =
    self.by-version."range-parser"."1.2.0";
  by-version."range-parser"."1.2.0" = self.buildNodePackage {
    name = "range-parser-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/range-parser/-/range-parser-1.2.0.tgz";
      name = "range-parser-1.2.0.tgz";
      sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."range-parser"."~1.2.0" =
    self.by-version."range-parser"."1.2.0";
  by-spec."rc"."~1.1.0" =
    self.by-version."rc"."1.1.6";
  by-version."rc"."1.1.6" = self.buildNodePackage {
    name = "rc-1.1.6";
    version = "1.1.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rc/-/rc-1.1.6.tgz";
      name = "rc-1.1.6.tgz";
      sha1 = "43651b76b6ae53b5c802f1151fa3fc3b059969c9";
    };
    deps = {
      "deep-extend-0.4.1" = self.by-version."deep-extend"."0.4.1";
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
  by-spec."read"."^1.0.7" =
    self.by-version."read"."1.0.7";
  by-version."read"."1.0.7" = self.buildNodePackage {
    name = "read-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/read/-/read-1.0.7.tgz";
      name = "read-1.0.7.tgz";
      sha1 = "b3da19bd052431a97671d44a42634adf710b40c4";
    };
    deps = {
      "mute-stream-0.0.6" = self.by-version."mute-stream"."0.0.6";
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
      url = "https://registry.npmjs.org/read-only-stream/-/read-only-stream-1.1.1.tgz";
      name = "read-only-stream-1.1.1.tgz";
      sha1 = "5da77c799ed1388d3ef88a18471bb5924f8a0ba1";
    };
    deps = {
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
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
      url = "https://registry.npmjs.org/read-only-stream/-/read-only-stream-2.0.0.tgz";
      name = "read-only-stream-2.0.0.tgz";
      sha1 = "2724fd6a8113d73764ac288d4386270c1dbf17f0";
    };
    deps = {
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-pkg"."^1.0.0" =
    self.by-version."read-pkg"."1.1.0";
  by-version."read-pkg"."1.1.0" = self.buildNodePackage {
    name = "read-pkg-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/read-pkg/-/read-pkg-1.1.0.tgz";
      name = "read-pkg-1.1.0.tgz";
      sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
    };
    deps = {
      "load-json-file-1.1.0" = self.by-version."load-json-file"."1.1.0";
      "normalize-package-data-2.3.5" = self.by-version."normalize-package-data"."2.3.5";
      "path-type-1.1.0" = self.by-version."path-type"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-pkg-up"."^1.0.1" =
    self.by-version."read-pkg-up"."1.0.1";
  by-version."read-pkg-up"."1.0.1" = self.buildNodePackage {
    name = "read-pkg-up-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
      name = "read-pkg-up-1.0.1.tgz";
      sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
    };
    deps = {
      "find-up-1.1.2" = self.by-version."find-up"."1.1.2";
      "read-pkg-1.1.0" = self.by-version."read-pkg"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream".">=1.1.13-1 <1.2.0-0" =
    self.by-version."readable-stream"."1.1.14";
  by-version."readable-stream"."1.1.14" = self.buildNodePackage {
    name = "readable-stream-1.1.14";
    version = "1.1.14";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-1.1.14.tgz";
      name = "readable-stream-1.1.14.tgz";
      sha1 = "7cf4c54ef648e3813084c636dd2079e166c081d9";
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
    self.by-version."readable-stream"."1.1.14";
  by-spec."readable-stream"."^1.0.31" =
    self.by-version."readable-stream"."1.1.14";
  by-spec."readable-stream"."^1.1.13" =
    self.by-version."readable-stream"."1.1.14";
  by-spec."readable-stream"."^1.1.13-1" =
    self.by-version."readable-stream"."1.1.14";
  by-spec."readable-stream"."^2.0.0 || ^1.1.13" =
    self.by-version."readable-stream"."2.1.4";
  by-version."readable-stream"."2.1.4" = self.buildNodePackage {
    name = "readable-stream-2.1.4";
    version = "2.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.1.4.tgz";
      name = "readable-stream-2.1.4.tgz";
      sha1 = "70b9791c6fcb8480db44bd155a0f6bb58f172468";
    };
    deps = {
      "buffer-shims-1.0.0" = self.by-version."buffer-shims"."1.0.0";
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
      "process-nextick-args-1.0.7" = self.by-version."process-nextick-args"."1.0.7";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^2.0.1" =
    self.by-version."readable-stream"."2.1.4";
  by-spec."readable-stream"."^2.0.2" =
    self.by-version."readable-stream"."2.1.4";
  by-spec."readable-stream"."^2.0.5" =
    self.by-version."readable-stream"."2.1.4";
  by-spec."readable-stream"."^2.1.0" =
    self.by-version."readable-stream"."2.1.4";
  by-spec."readable-stream"."~1.0.17" =
    self.by-version."readable-stream"."1.0.34";
  by-version."readable-stream"."1.0.34" = self.buildNodePackage {
    name = "readable-stream-1.0.34";
    version = "1.0.34";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-1.0.34.tgz";
      name = "readable-stream-1.0.34.tgz";
      sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
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
  by-spec."readable-stream"."~1.1.9" =
    self.by-version."readable-stream"."1.1.14";
  by-spec."readable-stream"."~2.0.0" =
    self.by-version."readable-stream"."2.0.6";
  by-version."readable-stream"."2.0.6" = self.buildNodePackage {
    name = "readable-stream-2.0.6";
    version = "2.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.0.6.tgz";
      name = "readable-stream-2.0.6.tgz";
      sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
      "process-nextick-args-1.0.7" = self.by-version."process-nextick-args"."1.0.7";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."~2.0.5" =
    self.by-version."readable-stream"."2.0.6";
  by-spec."readable-stream"."~2.1.4" =
    self.by-version."readable-stream"."2.1.4";
  by-spec."readable-wrap"."^1.0.0" =
    self.by-version."readable-wrap"."1.0.0";
  by-version."readable-wrap"."1.0.0" = self.buildNodePackage {
    name = "readable-wrap-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-wrap/-/readable-wrap-1.0.0.tgz";
      name = "readable-wrap-1.0.0.tgz";
      sha1 = "3b5a211c631e12303a54991c806c17e7ae206bff";
    };
    deps = {
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readdirp"."^2.0.0" =
    self.by-version."readdirp"."2.1.0";
  by-version."readdirp"."2.1.0" = self.buildNodePackage {
    name = "readdirp-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readdirp/-/readdirp-2.1.0.tgz";
      name = "readdirp-2.1.0.tgz";
      sha1 = "4ed0ad060df3073300c48440373f72d1cc642d78";
    };
    deps = {
      "graceful-fs-4.1.4" = self.by-version."graceful-fs"."4.1.4";
      "minimatch-3.0.2" = self.by-version."minimatch"."3.0.2";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
      "set-immediate-shim-1.0.1" = self.by-version."set-immediate-shim"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redeyed"."~0.5.0" =
    self.by-version."redeyed"."0.5.0";
  by-version."redeyed"."0.5.0" = self.buildNodePackage {
    name = "redeyed-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/redeyed/-/redeyed-0.5.0.tgz";
      name = "redeyed-0.5.0.tgz";
      sha1 = "7ab000e60ee3875ac115d29edb32c1403c6c25d1";
    };
    deps = {
      "esprima-fb-12001.1.0-dev-harmony-fb" = self.by-version."esprima-fb"."12001.1.0-dev-harmony-fb";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regex-cache"."^0.4.2" =
    self.by-version."regex-cache"."0.4.3";
  by-version."regex-cache"."0.4.3" = self.buildNodePackage {
    name = "regex-cache-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regex-cache/-/regex-cache-0.4.3.tgz";
      name = "regex-cache-0.4.3.tgz";
      sha1 = "9b1a6c35d4d0dfcef5711ae651e8e9d3d7114145";
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
  by-spec."repeat-element"."^1.1.2" =
    self.by-version."repeat-element"."1.1.2";
  by-version."repeat-element"."1.1.2" = self.buildNodePackage {
    name = "repeat-element-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeat-element/-/repeat-element-1.1.2.tgz";
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
    self.by-version."repeat-string"."1.5.4";
  by-version."repeat-string"."1.5.4" = self.buildNodePackage {
    name = "repeat-string-1.5.4";
    version = "1.5.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeat-string/-/repeat-string-1.5.4.tgz";
      name = "repeat-string-1.5.4.tgz";
      sha1 = "64ec0c91e0f4b475f90d5b643651e3e6e5b6c2d5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.x" =
    self.by-version."request"."2.72.0";
  by-version."request"."2.72.0" = self.buildNodePackage {
    name = "request-2.72.0";
    version = "2.72.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/request/-/request-2.72.0.tgz";
      name = "request-2.72.0.tgz";
      sha1 = "0ce3a179512620b10441f14c82e21c12c0ddb4e1";
    };
    deps = {
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "aws4-1.4.1" = self.by-version."aws4"."1.4.1";
      "bl-1.1.2" = self.by-version."bl"."1.1.2";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-1.0.0-rc4" = self.by-version."form-data"."1.0.0-rc4";
      "har-validator-2.0.6" = self.by-version."har-validator"."2.0.6";
      "hawk-3.1.3" = self.by-version."hawk"."3.1.3";
      "http-signature-1.1.1" = self.by-version."http-signature"."1.1.1";
      "is-typedarray-1.0.0" = self.by-version."is-typedarray"."1.0.0";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.11" = self.by-version."mime-types"."2.1.11";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "oauth-sign-0.8.2" = self.by-version."oauth-sign"."0.8.2";
      "qs-6.1.0" = self.by-version."qs"."6.1.0";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "tough-cookie-2.2.2" = self.by-version."tough-cookie"."2.2.2";
      "tunnel-agent-0.4.3" = self.by-version."tunnel-agent"."0.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."^2.58.0" =
    self.by-version."request"."2.72.0";
  by-spec."request"."^2.67.0" =
    self.by-version."request"."2.72.0";
  by-spec."require-main-filename"."^1.0.1" =
    self.by-version."require-main-filename"."1.0.1";
  by-version."require-main-filename"."1.0.1" = self.buildNodePackage {
    name = "require-main-filename-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/require-main-filename/-/require-main-filename-1.0.1.tgz";
      name = "require-main-filename-1.0.1.tgz";
      sha1 = "97f717b69d48784f5f526a6c5aa8ffdda055a4d1";
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
      url = "https://registry.npmjs.org/requires-port/-/requires-port-1.0.0.tgz";
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
  by-spec."requires-port"."1.x.x" =
    self.by-version."requires-port"."1.0.0";
  by-spec."resolve"."1.1.7" =
    self.by-version."resolve"."1.1.7";
  by-version."resolve"."1.1.7" = self.buildNodePackage {
    name = "resolve-1.1.7";
    version = "1.1.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/resolve/-/resolve-1.1.7.tgz";
      name = "resolve-1.1.7.tgz";
      sha1 = "203114d82ad2c5ed9e8e0411b3932875e889e97b";
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
    self.by-version."resolve"."1.1.7";
  by-spec."resolve"."^1.1.4" =
    self.by-version."resolve"."1.1.7";
  by-spec."right-align"."^0.1.1" =
    self.by-version."right-align"."0.1.3";
  by-version."right-align"."0.1.3" = self.buildNodePackage {
    name = "right-align-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/right-align/-/right-align-0.1.3.tgz";
      name = "right-align-0.1.3.tgz";
      sha1 = "61339b722fe6a3515689210d24e14c96148613ef";
    };
    deps = {
      "align-text-0.1.4" = self.by-version."align-text"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."2" =
    self.by-version."rimraf"."2.5.2";
  by-version."rimraf"."2.5.2" = self.buildNodePackage {
    name = "rimraf-2.5.2";
    version = "2.5.2";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rimraf/-/rimraf-2.5.2.tgz";
      name = "rimraf-2.5.2.tgz";
      sha1 = "62ba947fa4c0b4363839aefecd4f0fbad6059726";
    };
    deps = {
      "glob-7.0.5" = self.by-version."glob"."7.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."~2.2.6" =
    self.by-version."rimraf"."2.2.8";
  by-version."rimraf"."2.2.8" = self.buildNodePackage {
    name = "rimraf-2.2.8";
    version = "2.2.8";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
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
  by-spec."rimraf"."~2.5.0" =
    self.by-version."rimraf"."2.5.2";
  by-spec."rimraf"."~2.5.1" =
    self.by-version."rimraf"."2.5.2";
  by-spec."ripemd160"."0.2.0" =
    self.by-version."ripemd160"."0.2.0";
  by-version."ripemd160"."0.2.0" = self.buildNodePackage {
    name = "ripemd160-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ripemd160/-/ripemd160-0.2.0.tgz";
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
      url = "https://registry.npmjs.org/ripemd160/-/ripemd160-1.0.1.tgz";
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
  by-spec."semver"."2 || 3 || 4 || 5" =
    self.by-version."semver"."5.1.1";
  by-version."semver"."5.1.1" = self.buildNodePackage {
    name = "semver-5.1.1";
    version = "5.1.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/semver/-/semver-5.1.1.tgz";
      name = "semver-5.1.1.tgz";
      sha1 = "a3292a373e6f3e0798da0b20641b9a9c5bc47e19";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."^5.1.0" =
    self.by-version."semver"."5.1.1";
  by-spec."semver"."~5.1.0" =
    self.by-version."semver"."5.1.1";
  by-spec."send"."0.14.1" =
    self.by-version."send"."0.14.1";
  by-version."send"."0.14.1" = self.buildNodePackage {
    name = "send-0.14.1";
    version = "0.14.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/send/-/send-0.14.1.tgz";
      name = "send-0.14.1.tgz";
      sha1 = "a954984325392f51532a7760760e459598c89f7a";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "destroy-1.0.4" = self.by-version."destroy"."1.0.4";
      "encodeurl-1.0.1" = self.by-version."encodeurl"."1.0.1";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "http-errors-1.5.0" = self.by-version."http-errors"."1.5.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "range-parser-1.2.0" = self.by-version."range-parser"."1.2.0";
      "statuses-1.3.0" = self.by-version."statuses"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-index"."^1.7.2" =
    self.by-version."serve-index"."1.8.0";
  by-version."serve-index"."1.8.0" = self.buildNodePackage {
    name = "serve-index-1.8.0";
    version = "1.8.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/serve-index/-/serve-index-1.8.0.tgz";
      name = "serve-index-1.8.0.tgz";
      sha1 = "7c5d96c13fb131101f93c1c5774f8516a1e78d3b";
    };
    deps = {
      "accepts-1.3.3" = self.by-version."accepts"."1.3.3";
      "batch-0.5.3" = self.by-version."batch"."0.5.3";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "http-errors-1.5.0" = self.by-version."http-errors"."1.5.0";
      "mime-types-2.1.11" = self.by-version."mime-types"."2.1.11";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-static"."~1.11.1" =
    self.by-version."serve-static"."1.11.1";
  by-version."serve-static"."1.11.1" = self.buildNodePackage {
    name = "serve-static-1.11.1";
    version = "1.11.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/serve-static/-/serve-static-1.11.1.tgz";
      name = "serve-static-1.11.1.tgz";
      sha1 = "d6cce7693505f733c759de57befc1af76c0f0805";
    };
    deps = {
      "encodeurl-1.0.1" = self.by-version."encodeurl"."1.0.1";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
      "send-0.14.1" = self.by-version."send"."0.14.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."set-blocking"."^1.0.0" =
    self.by-version."set-blocking"."1.0.0";
  by-version."set-blocking"."1.0.0" = self.buildNodePackage {
    name = "set-blocking-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/set-blocking/-/set-blocking-1.0.0.tgz";
      name = "set-blocking-1.0.0.tgz";
      sha1 = "cd5e5d938048df1ac92dfe92e1f16add656f5ec5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."set-immediate-shim"."^1.0.1" =
    self.by-version."set-immediate-shim"."1.0.1";
  by-version."set-immediate-shim"."1.0.1" = self.buildNodePackage {
    name = "set-immediate-shim-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/set-immediate-shim/-/set-immediate-shim-1.0.1.tgz";
      name = "set-immediate-shim-1.0.1.tgz";
      sha1 = "4b2b1b27eb808a9f8dcc481a58e5e56f599f3f61";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."setprototypeof"."1.0.1" =
    self.by-version."setprototypeof"."1.0.1";
  by-version."setprototypeof"."1.0.1" = self.buildNodePackage {
    name = "setprototypeof-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.0.1.tgz";
      name = "setprototypeof-1.0.1.tgz";
      sha1 = "52009b27888c4dc48f591949c0a8275834c1ca7e";
    };
    deps = {
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
      url = "https://registry.npmjs.org/sha.js/-/sha.js-2.2.6.tgz";
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
    self.by-version."sha.js"."2.4.5";
  by-version."sha.js"."2.4.5" = self.buildNodePackage {
    name = "sha.js-2.4.5";
    version = "2.4.5";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/sha.js/-/sha.js-2.4.5.tgz";
      name = "sha.js-2.4.5.tgz";
      sha1 = "27d171efcc82a118b99639ff581660242b506e7c";
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
    self.by-version."sha.js"."2.4.5";
  by-spec."shasum"."^1.0.0" =
    self.by-version."shasum"."1.0.2";
  by-version."shasum"."1.0.2" = self.buildNodePackage {
    name = "shasum-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/shasum/-/shasum-1.0.2.tgz";
      name = "shasum-1.0.2.tgz";
      sha1 = "e7012310d8f417f4deb5712150e5678b87ae565f";
    };
    deps = {
      "json-stable-stringify-0.0.1" = self.by-version."json-stable-stringify"."0.0.1";
      "sha.js-2.4.5" = self.by-version."sha.js"."2.4.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."shell-quote"."^1.4.3" =
    self.by-version."shell-quote"."1.6.1";
  by-version."shell-quote"."1.6.1" = self.buildNodePackage {
    name = "shell-quote-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/shell-quote/-/shell-quote-1.6.1.tgz";
      name = "shell-quote-1.6.1.tgz";
      sha1 = "f4781949cce402697127430ea3b3c5476f481767";
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
  by-spec."shell-quote"."~0.0.1" =
    self.by-version."shell-quote"."0.0.1";
  by-version."shell-quote"."0.0.1" = self.buildNodePackage {
    name = "shell-quote-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/shell-quote/-/shell-quote-0.0.1.tgz";
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
  by-spec."shellwords"."^0.1.0" =
    self.by-version."shellwords"."0.1.0";
  by-version."shellwords"."0.1.0" = self.buildNodePackage {
    name = "shellwords-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/shellwords/-/shellwords-0.1.0.tgz";
      name = "shellwords-0.1.0.tgz";
      sha1 = "66afd47b6a12932d9071cbfd98a52e785cd0ba14";
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
      url = "https://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
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
  by-spec."sntp"."1.x.x" =
    self.by-version."sntp"."1.0.9";
  by-version."sntp"."1.0.9" = self.buildNodePackage {
    name = "sntp-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
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
    self.by-version."sockjs"."0.3.17";
  by-version."sockjs"."0.3.17" = self.buildNodePackage {
    name = "sockjs-0.3.17";
    version = "0.3.17";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sockjs/-/sockjs-0.3.17.tgz";
      name = "sockjs-0.3.17.tgz";
      sha1 = "ef1b88f5d73e6278fad8e9476ac91064382f3b44";
    };
    deps = {
      "faye-websocket-0.10.0" = self.by-version."faye-websocket"."0.10.0";
      "uuid-2.0.2" = self.by-version."uuid"."2.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sockjs-client"."^1.0.3" =
    self.by-version."sockjs-client"."1.1.1";
  by-version."sockjs-client"."1.1.1" = self.buildNodePackage {
    name = "sockjs-client-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sockjs-client/-/sockjs-client-1.1.1.tgz";
      name = "sockjs-client-1.1.1.tgz";
      sha1 = "284843e9a9784d7c474b1571b3240fca9dda4bb0";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "eventsource-0.1.6" = self.by-version."eventsource"."0.1.6";
      "faye-websocket-0.11.0" = self.by-version."faye-websocket"."0.11.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "json3-3.3.2" = self.by-version."json3"."3.3.2";
      "url-parse-1.1.1" = self.by-version."url-parse"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-list-map"."~0.1.0" =
    self.by-version."source-list-map"."0.1.6";
  by-version."source-list-map"."0.1.6" = self.buildNodePackage {
    name = "source-list-map-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-list-map/-/source-list-map-0.1.6.tgz";
      name = "source-list-map-0.1.6.tgz";
      sha1 = "e1e6f94f0b40c4d28dcf8f5b8766e0e45636877f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."^0.5.3" =
    self.by-version."source-map"."0.5.6";
  by-version."source-map"."0.5.6" = self.buildNodePackage {
    name = "source-map-0.5.6";
    version = "0.5.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map/-/source-map-0.5.6.tgz";
      name = "source-map-0.5.6.tgz";
      sha1 = "75ce38f52bf0733c5a7f0c118d81334a2bb5f412";
    };
    deps = {
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
      url = "https://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz";
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
    self.by-version."source-map"."0.5.6";
  by-spec."source-map"."~0.5.3" =
    self.by-version."source-map"."0.5.6";
  by-spec."spdx-correct"."~1.0.0" =
    self.by-version."spdx-correct"."1.0.2";
  by-version."spdx-correct"."1.0.2" = self.buildNodePackage {
    name = "spdx-correct-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/spdx-correct/-/spdx-correct-1.0.2.tgz";
      name = "spdx-correct-1.0.2.tgz";
      sha1 = "4b3073d933ff51f3912f03ac5519498a4150db40";
    };
    deps = {
      "spdx-license-ids-1.2.1" = self.by-version."spdx-license-ids"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-exceptions"."^1.0.4" =
    self.by-version."spdx-exceptions"."1.0.4";
  by-version."spdx-exceptions"."1.0.4" = self.buildNodePackage {
    name = "spdx-exceptions-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-1.0.4.tgz";
      name = "spdx-exceptions-1.0.4.tgz";
      sha1 = "220b84239119ae9045a892db81a83f4ce16f80fd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-expression-parse"."~1.0.0" =
    self.by-version."spdx-expression-parse"."1.0.2";
  by-version."spdx-expression-parse"."1.0.2" = self.buildNodePackage {
    name = "spdx-expression-parse-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-1.0.2.tgz";
      name = "spdx-expression-parse-1.0.2.tgz";
      sha1 = "d52b14b5e9670771440af225bcb563122ac452f6";
    };
    deps = {
      "spdx-exceptions-1.0.4" = self.by-version."spdx-exceptions"."1.0.4";
      "spdx-license-ids-1.2.1" = self.by-version."spdx-license-ids"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-license-ids"."^1.0.0" =
    self.by-version."spdx-license-ids"."1.2.1";
  by-version."spdx-license-ids"."1.2.1" = self.buildNodePackage {
    name = "spdx-license-ids-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-1.2.1.tgz";
      name = "spdx-license-ids-1.2.1.tgz";
      sha1 = "d07ea17a4d2fd9351f9d94e2ff9cec74180fe8f3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-license-ids"."^1.0.2" =
    self.by-version."spdx-license-ids"."1.2.1";
  by-spec."sshpk"."^1.7.0" =
    self.by-version."sshpk"."1.8.3";
  by-version."sshpk"."1.8.3" = self.buildNodePackage {
    name = "sshpk-1.8.3";
    version = "1.8.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/sshpk/-/sshpk-1.8.3.tgz";
      name = "sshpk-1.8.3.tgz";
      sha1 = "890cc9d614dc5292e5cb1a543b03c9abaa5c374e";
    };
    deps = {
      "asn1-0.2.3" = self.by-version."asn1"."0.2.3";
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
      "dashdash-1.14.0" = self.by-version."dashdash"."1.14.0";
      "getpass-0.1.6" = self.by-version."getpass"."0.1.6";
    };
    optionalDependencies = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
      "tweetnacl-0.13.3" = self.by-version."tweetnacl"."0.13.3";
      "jodid25519-1.0.2" = self.by-version."jodid25519"."1.0.2";
      "ecc-jsbn-0.1.1" = self.by-version."ecc-jsbn"."0.1.1";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses".">= 1.3.0 < 2" =
    self.by-version."statuses"."1.3.0";
  by-version."statuses"."1.3.0" = self.buildNodePackage {
    name = "statuses-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/statuses/-/statuses-1.3.0.tgz";
      name = "statuses-1.3.0.tgz";
      sha1 = "8e55758cb20e7682c1f4fce8dcab30bf01d1e07a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."~1.3.0" =
    self.by-version."statuses"."1.3.0";
  by-spec."stream-browserify"."^1.0.0" =
    self.by-version."stream-browserify"."1.0.0";
  by-version."stream-browserify"."1.0.0" = self.buildNodePackage {
    name = "stream-browserify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stream-browserify/-/stream-browserify-1.0.0.tgz";
      name = "stream-browserify-1.0.0.tgz";
      sha1 = "bf9b4abfb42b274d751479e44e0ff2656b6f1193";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
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
      url = "https://registry.npmjs.org/stream-browserify/-/stream-browserify-2.0.1.tgz";
      name = "stream-browserify-2.0.1.tgz";
      sha1 = "66266ee5f9bdb9940a4e4514cafb43bb71e5c9db";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-browserify"."^2.0.1" =
    self.by-version."stream-browserify"."2.0.1";
  by-spec."stream-cache"."~0.0.1" =
    self.by-version."stream-cache"."0.0.2";
  by-version."stream-cache"."0.0.2" = self.buildNodePackage {
    name = "stream-cache-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stream-cache/-/stream-cache-0.0.2.tgz";
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
      url = "https://registry.npmjs.org/stream-combiner2/-/stream-combiner2-1.1.1.tgz";
      name = "stream-combiner2-1.1.1.tgz";
      sha1 = "fb4d8a1420ea362764e21ad4780397bebcb41cbe";
    };
    deps = {
      "duplexer2-0.1.4" = self.by-version."duplexer2"."0.1.4";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
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
      url = "https://registry.npmjs.org/stream-combiner2/-/stream-combiner2-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/stream-http/-/stream-http-1.7.1.tgz";
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
    self.by-version."stream-http"."2.3.0";
  by-version."stream-http"."2.3.0" = self.buildNodePackage {
    name = "stream-http-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stream-http/-/stream-http-2.3.0.tgz";
      name = "stream-http-2.3.0.tgz";
      sha1 = "d77de76f6211072119f8d2a49a118717b8feeaa3";
    };
    deps = {
      "builtin-status-codes-2.0.0" = self.by-version."builtin-status-codes"."2.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
      "to-arraybuffer-1.0.1" = self.by-version."to-arraybuffer"."1.0.1";
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
      url = "https://registry.npmjs.org/stream-splicer/-/stream-splicer-1.3.2.tgz";
      name = "stream-splicer-1.3.2.tgz";
      sha1 = "3c0441be15b9bf4e226275e6dc83964745546661";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
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
      url = "https://registry.npmjs.org/stream-splicer/-/stream-splicer-2.0.0.tgz";
      name = "stream-splicer-2.0.0.tgz";
      sha1 = "1b63be438a133e4b671cc1935197600175910d83";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
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
      url = "https://registry.npmjs.org/string-stream/-/string-stream-0.0.7.tgz";
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
  by-spec."string-template"."~0.2.0" =
    self.by-version."string-template"."0.2.1";
  by-version."string-template"."0.2.1" = self.buildNodePackage {
    name = "string-template-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/string-template/-/string-template-0.2.1.tgz";
      name = "string-template-0.2.1.tgz";
      sha1 = "42932e598a352d01fc22ec3367d9d84eec6c9add";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string-width"."^1.0.1" =
    self.by-version."string-width"."1.0.1";
  by-version."string-width"."1.0.1" = self.buildNodePackage {
    name = "string-width-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/string-width/-/string-width-1.0.1.tgz";
      name = "string-width-1.0.1.tgz";
      sha1 = "c92129b6f1d7f52acf9af424a26e3864a05ceb0a";
    };
    deps = {
      "code-point-at-1.0.0" = self.by-version."code-point-at"."1.0.0";
      "is-fullwidth-code-point-1.0.0" = self.by-version."is-fullwidth-code-point"."1.0.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
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
      url = "https://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
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
  by-spec."stringstream"."~0.0.4" =
    self.by-version."stringstream"."0.0.5";
  by-version."stringstream"."0.0.5" = self.buildNodePackage {
    name = "stringstream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stringstream/-/stringstream-0.0.5.tgz";
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
    self.by-version."strip-ansi"."3.0.1";
  by-version."strip-ansi"."3.0.1" = self.buildNodePackage {
    name = "strip-ansi-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz";
      name = "strip-ansi-3.0.1.tgz";
      sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
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
  by-spec."strip-ansi"."^3.0.1" =
    self.by-version."strip-ansi"."3.0.1";
  by-spec."strip-bom"."^2.0.0" =
    self.by-version."strip-bom"."2.0.0";
  by-version."strip-bom"."2.0.0" = self.buildNodePackage {
    name = "strip-bom-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-bom/-/strip-bom-2.0.0.tgz";
      name = "strip-bom-2.0.0.tgz";
      sha1 = "6219a85616520491f35788bdbf1447a99c7e6b0e";
    };
    deps = {
      "is-utf8-0.2.1" = self.by-version."is-utf8"."0.2.1";
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
      url = "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
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
      url = "https://registry.npmjs.org/subarg/-/subarg-1.0.0.tgz";
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
  by-spec."supports-color"."^2.0.0" =
    self.by-version."supports-color"."2.0.0";
  by-version."supports-color"."2.0.0" = self.buildNodePackage {
    name = "supports-color-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/supports-color/-/supports-color-3.1.2.tgz";
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
  by-spec."symbol"."^0.2.1" =
    self.by-version."symbol"."0.2.3";
  by-version."symbol"."0.2.3" = self.buildNodePackage {
    name = "symbol-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/symbol/-/symbol-0.2.3.tgz";
      name = "symbol-0.2.3.tgz";
      sha1 = "3b9873b8a901e47c6efe21526a3ac372ef28bbc7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."syntax-error"."^1.1.1" =
    self.by-version."syntax-error"."1.1.6";
  by-version."syntax-error"."1.1.6" = self.buildNodePackage {
    name = "syntax-error-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/syntax-error/-/syntax-error-1.1.6.tgz";
      name = "syntax-error-1.1.6.tgz";
      sha1 = "b4549706d386cc1c1dc7c2423f18579b6cade710";
    };
    deps = {
      "acorn-2.7.0" = self.by-version."acorn"."2.7.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tagg"."1.0.1" =
    self.by-version."tagg"."1.0.1";
  by-version."tagg"."1.0.1" = self.buildNodePackage {
    name = "tagg-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tagg/-/tagg-1.0.1.tgz";
      name = "tagg-1.0.1.tgz";
      sha1 = "4a3c6410bbce304eb909c7cfb3e096af3420e4e7";
    };
    deps = {
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
      url = "https://registry.npmjs.org/tapable/-/tapable-0.1.10.tgz";
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
  by-spec."tapable"."^0.2.3" =
    self.by-version."tapable"."0.2.4";
  by-version."tapable"."0.2.4" = self.buildNodePackage {
    name = "tapable-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tapable/-/tapable-0.2.4.tgz";
      name = "tapable-0.2.4.tgz";
      sha1 = "a7814605089d4ba896c33c7e3566e13dcd194aa5";
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
  by-spec."tapable"."~0.2.3" =
    self.by-version."tapable"."0.2.4";
  by-spec."tar"."~2.2.0" =
    self.by-version."tar"."2.2.1";
  by-version."tar"."2.2.1" = self.buildNodePackage {
    name = "tar-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tar/-/tar-2.2.1.tgz";
      name = "tar-2.2.1.tgz";
      sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
    };
    deps = {
      "block-stream-0.0.9" = self.by-version."block-stream"."0.0.9";
      "fstream-1.0.10" = self.by-version."fstream"."1.0.10";
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
  by-spec."tar-pack"."~3.1.0" =
    self.by-version."tar-pack"."3.1.4";
  by-version."tar-pack"."3.1.4" = self.buildNodePackage {
    name = "tar-pack-3.1.4";
    version = "3.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tar-pack/-/tar-pack-3.1.4.tgz";
      name = "tar-pack-3.1.4.tgz";
      sha1 = "bc8cf9a22f5832739f12f3910dac1eb97b49708c";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "fstream-1.0.10" = self.by-version."fstream"."1.0.10";
      "fstream-ignore-1.0.5" = self.by-version."fstream-ignore"."1.0.5";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "readable-stream-2.1.4" = self.by-version."readable-stream"."2.1.4";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "uid-number-0.0.6" = self.by-version."uid-number"."0.0.6";
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
      url = "https://registry.npmjs.org/temp/-/temp-0.8.3.tgz";
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
  by-spec."through".">=2.2.7 <3" =
    self.by-version."through"."2.3.8";
  by-version."through"."2.3.8" = self.buildNodePackage {
    name = "through-2.3.8";
    version = "2.3.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/through/-/through-2.3.8.tgz";
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
  by-spec."through"."^2.3.8" =
    self.by-version."through"."2.3.8";
  by-spec."through2"."^1.0.0" =
    self.by-version."through2"."1.1.1";
  by-version."through2"."1.1.1" = self.buildNodePackage {
    name = "through2-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/through2/-/through2-1.1.1.tgz";
      name = "through2-1.1.1.tgz";
      sha1 = "0847cbc4449f3405574dbdccd9bb841b83ac3545";
    };
    deps = {
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through2"."^2.0.0" =
    self.by-version."through2"."2.0.1";
  by-version."through2"."2.0.1" = self.buildNodePackage {
    name = "through2-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/through2/-/through2-2.0.1.tgz";
      name = "through2-2.0.1.tgz";
      sha1 = "384e75314d49f32de12eebb8136b8eb6b5d59da9";
    };
    deps = {
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
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
      url = "https://registry.npmjs.org/through2/-/through2-0.5.1.tgz";
      name = "through2-0.5.1.tgz";
      sha1 = "dfdd012eb9c700e2323fd334f38ac622ab372da7";
    };
    deps = {
      "readable-stream-1.0.34" = self.by-version."readable-stream"."1.0.34";
      "xtend-3.0.0" = self.by-version."xtend"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."timers-browserify"."^1.0.1" =
    self.by-version."timers-browserify"."1.4.2";
  by-version."timers-browserify"."1.4.2" = self.buildNodePackage {
    name = "timers-browserify-1.4.2";
    version = "1.4.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/timers-browserify/-/timers-browserify-1.4.2.tgz";
      name = "timers-browserify-1.4.2.tgz";
      sha1 = "c9c58b575be8407375cb5e2462dacee74359f41d";
    };
    deps = {
      "process-0.11.5" = self.by-version."process"."0.11.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tmp"."0.0.28" =
    self.by-version."tmp"."0.0.28";
  by-version."tmp"."0.0.28" = self.buildNodePackage {
    name = "tmp-0.0.28";
    version = "0.0.28";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tmp/-/tmp-0.0.28.tgz";
      name = "tmp-0.0.28.tgz";
      sha1 = "172735b7f614ea7af39664fa84cf0de4e515d120";
    };
    deps = {
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."to-arraybuffer"."^1.0.0" =
    self.by-version."to-arraybuffer"."1.0.1";
  by-version."to-arraybuffer"."1.0.1" = self.buildNodePackage {
    name = "to-arraybuffer-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/to-arraybuffer/-/to-arraybuffer-1.0.1.tgz";
      name = "to-arraybuffer-1.0.1.tgz";
      sha1 = "7d229b1fcc637e466ca081180836a7aabff83f43";
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
    self.by-version."tough-cookie"."2.2.2";
  by-version."tough-cookie"."2.2.2" = self.buildNodePackage {
    name = "tough-cookie-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.2.2.tgz";
      name = "tough-cookie-2.2.2.tgz";
      sha1 = "c83a1830f4e5ef0b93ef2a3488e724f8de016ac7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie"."~0.12.1" =
    self.by-version."tough-cookie"."0.12.1";
  by-version."tough-cookie"."0.12.1" = self.buildNodePackage {
    name = "tough-cookie-0.12.1";
    version = "0.12.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-0.12.1.tgz";
      name = "tough-cookie-0.12.1.tgz";
      sha1 = "8220c7e21abd5b13d96804254bd5a81ebf2c7d62";
    };
    deps = {
      "punycode-2.0.0" = self.by-version."punycode"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie"."~2.2.0" =
    self.by-version."tough-cookie"."2.2.2";
  by-spec."tough-cookie-filestore"."0.0.1" =
    self.by-version."tough-cookie-filestore"."0.0.1";
  by-version."tough-cookie-filestore"."0.0.1" = self.buildNodePackage {
    name = "tough-cookie-filestore-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tough-cookie-filestore/-/tough-cookie-filestore-0.0.1.tgz";
      name = "tough-cookie-filestore-0.0.1.tgz";
      sha1 = "0bf2308ed293a50ba0733ed7d6289601485570b6";
    };
    deps = {
      "tough-cookie-0.12.1" = self.by-version."tough-cookie"."0.12.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tree-kill"."^1.0.0" =
    self.by-version."tree-kill"."1.1.0";
  by-version."tree-kill"."1.1.0" = self.buildNodePackage {
    name = "tree-kill-1.1.0";
    version = "1.1.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/tree-kill/-/tree-kill-1.1.0.tgz";
      name = "tree-kill-1.1.0.tgz";
      sha1 = "c963dcf03722892ec59cba569e940b71954d1729";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."trifl"."0.0.10" =
    self.by-version."trifl"."0.0.10";
  by-version."trifl"."0.0.10" = self.buildNodePackage {
    name = "trifl-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/trifl/-/trifl-0.0.10.tgz";
      name = "trifl-0.0.10.tgz";
      sha1 = "21464ae9e699c6dd2b7253764794dcfe20380c23";
    };
    deps = {
      "tagg-1.0.1" = self.by-version."tagg"."1.0.1";
      "virtual-dom-2.1.1" = self.by-version."virtual-dom"."2.1.1";
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
      url = "https://registry.npmjs.org/tty-browserify/-/tty-browserify-0.0.0.tgz";
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
  by-spec."tunnel-agent"."~0.4.1" =
    self.by-version."tunnel-agent"."0.4.3";
  by-version."tunnel-agent"."0.4.3" = self.buildNodePackage {
    name = "tunnel-agent-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.3.tgz";
      name = "tunnel-agent-0.4.3.tgz";
      sha1 = "6373db76909fe570e08d73583365ed828a74eeeb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tweetnacl"."~0.13.0" =
    self.by-version."tweetnacl"."0.13.3";
  by-version."tweetnacl"."0.13.3" = self.buildNodePackage {
    name = "tweetnacl-0.13.3";
    version = "0.13.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.13.3.tgz";
      name = "tweetnacl-0.13.3.tgz";
      sha1 = "d628b56f3bcc3d5ae74ba9d4c1a704def5ab4b56";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-is"."~1.6.13" =
    self.by-version."type-is"."1.6.13";
  by-version."type-is"."1.6.13" = self.buildNodePackage {
    name = "type-is-1.6.13";
    version = "1.6.13";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/type-is/-/type-is-1.6.13.tgz";
      name = "type-is-1.6.13.tgz";
      sha1 = "6e83ba7bc30cd33a7bb0b7fb00737a2085bf9d08";
    };
    deps = {
      "media-typer-0.3.0" = self.by-version."media-typer"."0.3.0";
      "mime-types-2.1.11" = self.by-version."mime-types"."2.1.11";
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
      url = "https://registry.npmjs.org/typedarray/-/typedarray-0.0.6.tgz";
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
  by-spec."uglify-js"."~2.6.0" =
    self.by-version."uglify-js"."2.6.4";
  by-version."uglify-js"."2.6.4" = self.buildNodePackage {
    name = "uglify-js-2.6.4";
    version = "2.6.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/uglify-js/-/uglify-js-2.6.4.tgz";
      name = "uglify-js-2.6.4.tgz";
      sha1 = "65ea2fb3059c9394692f15fed87c2b36c16b9adf";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
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
      url = "https://registry.npmjs.org/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
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
  by-spec."uid-number"."~0.0.6" =
    self.by-version."uid-number"."0.0.6";
  by-version."uid-number"."0.0.6" = self.buildNodePackage {
    name = "uid-number-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uid-number/-/uid-number-0.0.6.tgz";
      name = "uid-number-0.0.6.tgz";
      sha1 = "0ea10e8035e8eb5b8e4449f06da1c730663baa81";
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
      url = "https://registry.npmjs.org/umd/-/umd-3.0.1.tgz";
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
      url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
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
  by-spec."url"."~0.10.1" =
    self.by-version."url"."0.10.3";
  by-version."url"."0.10.3" = self.buildNodePackage {
    name = "url-0.10.3";
    version = "0.10.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/url/-/url-0.10.3.tgz";
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
      url = "https://registry.npmjs.org/url/-/url-0.11.0.tgz";
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
      url = "https://registry.npmjs.org/url-parse/-/url-parse-1.0.5.tgz";
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
  by-spec."url-parse"."^1.1.1" =
    self.by-version."url-parse"."1.1.1";
  by-version."url-parse"."1.1.1" = self.buildNodePackage {
    name = "url-parse-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/url-parse/-/url-parse-1.1.1.tgz";
      name = "url-parse-1.1.1.tgz";
      sha1 = "d1507970728c9a5f80f471530c57325c3fb0e868";
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
  by-spec."url-regexp"."^1.0.2" =
    self.by-version."url-regexp"."1.0.2";
  by-version."url-regexp"."1.0.2" = self.buildNodePackage {
    name = "url-regexp-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/url-regexp/-/url-regexp-1.0.2.tgz";
      name = "url-regexp-1.0.2.tgz";
      sha1 = "3c0f433095b4c98b93aab8aabf2186a9c59e108e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."util"."0.10.3" =
    self.by-version."util"."0.10.3";
  by-version."util"."0.10.3" = self.buildNodePackage {
    name = "util-0.10.3";
    version = "0.10.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/util/-/util-0.10.3.tgz";
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
      url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/utils-merge/-/utils-merge-1.0.0.tgz";
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
  by-spec."uuid"."^2.0.2" =
    self.by-version."uuid"."2.0.2";
  by-version."uuid"."2.0.2" = self.buildNodePackage {
    name = "uuid-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uuid/-/uuid-2.0.2.tgz";
      name = "uuid-2.0.2.tgz";
      sha1 = "48bd5698f0677e3c7901a1c46ef15b1643794726";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."validate-npm-package-license"."^3.0.1" =
    self.by-version."validate-npm-package-license"."3.0.1";
  by-version."validate-npm-package-license"."3.0.1" = self.buildNodePackage {
    name = "validate-npm-package-license-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.1.tgz";
      name = "validate-npm-package-license-3.0.1.tgz";
      sha1 = "2804babe712ad3379459acfbe24746ab2c303fbc";
    };
    deps = {
      "spdx-correct-1.0.2" = self.by-version."spdx-correct"."1.0.2";
      "spdx-expression-parse-1.0.2" = self.by-version."spdx-expression-parse"."1.0.2";
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
      url = "https://registry.npmjs.org/vary/-/vary-1.1.0.tgz";
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
  by-spec."verror"."1.3.6" =
    self.by-version."verror"."1.3.6";
  by-version."verror"."1.3.6" = self.buildNodePackage {
    name = "verror-1.3.6";
    version = "1.3.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/verror/-/verror-1.3.6.tgz";
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
  by-spec."virtual-dom"."^2.0.1" =
    self.by-version."virtual-dom"."2.1.1";
  by-version."virtual-dom"."2.1.1" = self.buildNodePackage {
    name = "virtual-dom-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/virtual-dom/-/virtual-dom-2.1.1.tgz";
      name = "virtual-dom-2.1.1.tgz";
      sha1 = "80eda2d481b9ede0c049118cefcb4a05f21d1375";
    };
    deps = {
      "browser-split-0.0.1" = self.by-version."browser-split"."0.0.1";
      "error-4.4.0" = self.by-version."error"."4.4.0";
      "ev-store-7.0.0" = self.by-version."ev-store"."7.0.0";
      "global-4.3.0" = self.by-version."global"."4.3.0";
      "is-object-1.0.1" = self.by-version."is-object"."1.0.1";
      "next-tick-0.2.2" = self.by-version."next-tick"."0.2.2";
      "x-is-array-0.1.0" = self.by-version."x-is-array"."0.1.0";
      "x-is-string-0.1.0" = self.by-version."x-is-string"."0.1.0";
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
      url = "https://registry.npmjs.org/vm-browserify/-/vm-browserify-0.0.4.tgz";
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
      url = "https://registry.npmjs.org/watchpack/-/watchpack-0.2.9.tgz";
      name = "watchpack-0.2.9.tgz";
      sha1 = "62eaa4ab5e5ba35fdfc018275626e3c0f5e3fb0b";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "chokidar-1.6.0" = self.by-version."chokidar"."1.6.0";
      "graceful-fs-4.1.4" = self.by-version."graceful-fs"."4.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."watchpack"."^1.0.0" =
    self.by-version."watchpack"."1.1.0";
  by-version."watchpack"."1.1.0" = self.buildNodePackage {
    name = "watchpack-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/watchpack/-/watchpack-1.1.0.tgz";
      name = "watchpack-1.1.0.tgz";
      sha1 = "42d44627464a2fadffc9308c0f7562cfde795f24";
    };
    deps = {
      "async-2.0.0-rc.4" = self.by-version."async"."2.0.0-rc.4";
      "chokidar-1.6.0" = self.by-version."chokidar"."1.6.0";
      "graceful-fs-4.1.4" = self.by-version."graceful-fs"."4.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."watchpack"."^1.0.1" =
    self.by-version."watchpack"."1.1.0";
  by-spec."webpack"."1 || ^2.1.0-beta" =
    self.by-version."webpack"."2.1.0-beta.14";
  by-version."webpack"."2.1.0-beta.14" = self.buildNodePackage {
    name = "webpack-2.1.0-beta.14";
    version = "2.1.0-beta.14";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack/-/webpack-2.1.0-beta.14.tgz";
      name = "webpack-2.1.0-beta.14.tgz";
      sha1 = "45dc3a0d083f9c43de833ba259a8a7e26f1478de";
    };
    deps = {
      "acorn-3.2.0" = self.by-version."acorn"."3.2.0";
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "enhanced-resolve-2.2.2" = self.by-version."enhanced-resolve"."2.2.2";
      "interpret-1.0.1" = self.by-version."interpret"."1.0.1";
      "loader-runner-2.1.1" = self.by-version."loader-runner"."2.1.1";
      "loader-utils-0.2.15" = self.by-version."loader-utils"."0.2.15";
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "node-libs-browser-1.0.0" = self.by-version."node-libs-browser"."1.0.0";
      "object-assign-4.1.0" = self.by-version."object-assign"."4.1.0";
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "tapable-0.2.4" = self.by-version."tapable"."0.2.4";
      "uglify-js-2.6.4" = self.by-version."uglify-js"."2.6.4";
      "watchpack-1.1.0" = self.by-version."watchpack"."1.1.0";
      "webpack-sources-0.1.2" = self.by-version."webpack-sources"."0.1.2";
      "yargs-4.7.1" = self.by-version."yargs"."4.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack".">=1.3.0 <3" =
    self.by-version."webpack"."1.13.1";
  by-version."webpack"."1.13.1" = self.buildNodePackage {
    name = "webpack-1.13.1";
    version = "1.13.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack/-/webpack-1.13.1.tgz";
      name = "webpack-1.13.1.tgz";
      sha1 = "0a69e88e5bdc593939352d5d77de0f9ac9d0871e";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "enhanced-resolve-0.9.1" = self.by-version."enhanced-resolve"."0.9.1";
      "acorn-3.2.0" = self.by-version."acorn"."3.2.0";
      "interpret-0.6.6" = self.by-version."interpret"."0.6.6";
      "loader-utils-0.2.15" = self.by-version."loader-utils"."0.2.15";
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "node-libs-browser-0.5.3" = self.by-version."node-libs-browser"."0.5.3";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "tapable-0.1.10" = self.by-version."tapable"."0.1.10";
      "uglify-js-2.6.4" = self.by-version."uglify-js"."2.6.4";
      "watchpack-0.2.9" = self.by-version."watchpack"."0.2.9";
      "webpack-core-0.6.8" = self.by-version."webpack-core"."0.6.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack".">=1.3.0 >=1.12.9 <2.0.0" =
    self.by-version."webpack"."1.13.1";
  by-spec."webpack"."^1.12.9" =
    self.by-version."webpack"."1.13.1";
  by-spec."webpack-core"."~0.6.0" =
    self.by-version."webpack-core"."0.6.8";
  by-version."webpack-core"."0.6.8" = self.buildNodePackage {
    name = "webpack-core-0.6.8";
    version = "0.6.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-core/-/webpack-core-0.6.8.tgz";
      name = "webpack-core-0.6.8.tgz";
      sha1 = "edf9135de00a6a3c26dd0f14b208af0aa4af8d0a";
    };
    deps = {
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "source-list-map-0.1.6" = self.by-version."source-list-map"."0.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-middleware"."^1.4.0" =
    self.by-version."webpack-dev-middleware"."1.6.1";
  by-version."webpack-dev-middleware"."1.6.1" = self.buildNodePackage {
    name = "webpack-dev-middleware-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-dev-middleware/-/webpack-dev-middleware-1.6.1.tgz";
      name = "webpack-dev-middleware-1.6.1.tgz";
      sha1 = "c25ef832abc7d360c38bb40eb918692720ced611";
    };
    deps = {
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "range-parser-1.2.0" = self.by-version."range-parser"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."webpack"."2.1.0-beta.14"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-server"."^1.14.0" =
    self.by-version."webpack-dev-server"."1.14.1";
  by-version."webpack-dev-server"."1.14.1" = self.buildNodePackage {
    name = "webpack-dev-server-1.14.1";
    version = "1.14.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-dev-server/-/webpack-dev-server-1.14.1.tgz";
      name = "webpack-dev-server-1.14.1.tgz";
      sha1 = "e51de228071258b0db6d55e0f5fee55eec6755de";
    };
    deps = {
      "compression-1.6.2" = self.by-version."compression"."1.6.2";
      "connect-history-api-fallback-1.1.0" = self.by-version."connect-history-api-fallback"."1.1.0";
      "express-4.14.0" = self.by-version."express"."4.14.0";
      "http-proxy-1.14.0" = self.by-version."http-proxy"."1.14.0";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "serve-index-1.8.0" = self.by-version."serve-index"."1.8.0";
      "sockjs-0.3.17" = self.by-version."sockjs"."0.3.17";
      "sockjs-client-1.1.1" = self.by-version."sockjs-client"."1.1.1";
      "stream-cache-0.0.2" = self.by-version."stream-cache"."0.0.2";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "webpack-dev-middleware-1.6.1" = self.by-version."webpack-dev-middleware"."1.6.1";
      "webpack-2.1.0-beta.14" = self.by-version."webpack"."2.1.0-beta.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-sources"."^0.1.0" =
    self.by-version."webpack-sources"."0.1.2";
  by-version."webpack-sources"."0.1.2" = self.buildNodePackage {
    name = "webpack-sources-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-sources/-/webpack-sources-0.1.2.tgz";
      name = "webpack-sources-0.1.2.tgz";
      sha1 = "057a3f3255f8ba561b901d9150589aa103a57e65";
    };
    deps = {
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
      "source-list-map-0.1.6" = self.by-version."source-list-map"."0.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."websocket-driver".">=0.5.1" =
    self.by-version."websocket-driver"."0.6.5";
  by-version."websocket-driver"."0.6.5" = self.buildNodePackage {
    name = "websocket-driver-0.6.5";
    version = "0.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/websocket-driver/-/websocket-driver-0.6.5.tgz";
      name = "websocket-driver-0.6.5.tgz";
      sha1 = "5cb2556ceb85f4373c6d8238aa691c8454e13a36";
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
  by-spec."websocket-extensions".">=0.1.1" =
    self.by-version."websocket-extensions"."0.1.1";
  by-version."websocket-extensions"."0.1.1" = self.buildNodePackage {
    name = "websocket-extensions-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/websocket-extensions/-/websocket-extensions-0.1.1.tgz";
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
  by-spec."which"."^1.0.5" =
    self.by-version."which"."1.2.10";
  by-version."which"."1.2.10" = self.buildNodePackage {
    name = "which-1.2.10";
    version = "1.2.10";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/which/-/which-1.2.10.tgz";
      name = "which-1.2.10.tgz";
      sha1 = "91cd9bd0751322411b659b40f054b21de957ab2d";
    };
    deps = {
      "isexe-1.1.2" = self.by-version."isexe"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."which"."^1.2.1" =
    self.by-version."which"."1.2.10";
  by-spec."window-size"."0.1.0" =
    self.by-version."window-size"."0.1.0";
  by-version."window-size"."0.1.0" = self.buildNodePackage {
    name = "window-size-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/window-size/-/window-size-0.1.0.tgz";
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
  by-spec."window-size"."^0.2.0" =
    self.by-version."window-size"."0.2.0";
  by-version."window-size"."0.2.0" = self.buildNodePackage {
    name = "window-size-0.2.0";
    version = "0.2.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/window-size/-/window-size-0.2.0.tgz";
      name = "window-size-0.2.0.tgz";
      sha1 = "b4315bb4214a3d7058ebeee892e13fa24d98b075";
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
      url = "https://registry.npmjs.org/wordwrap/-/wordwrap-0.0.2.tgz";
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
      url = "https://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
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
  by-spec."wrap-ansi"."^2.0.0" =
    self.by-version."wrap-ansi"."2.0.0";
  by-version."wrap-ansi"."2.0.0" = self.buildNodePackage {
    name = "wrap-ansi-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-2.0.0.tgz";
      name = "wrap-ansi-2.0.0.tgz";
      sha1 = "7d30f8f873f9a5bbc3a64dabc8d177e071ae426f";
    };
    deps = {
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wrappy"."1" =
    self.by-version."wrappy"."1.0.2";
  by-version."wrappy"."1.0.2" = self.buildNodePackage {
    name = "wrappy-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
      name = "wrappy-1.0.2.tgz";
      sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."x-is-array"."0.1.0" =
    self.by-version."x-is-array"."0.1.0";
  by-version."x-is-array"."0.1.0" = self.buildNodePackage {
    name = "x-is-array-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/x-is-array/-/x-is-array-0.1.0.tgz";
      name = "x-is-array-0.1.0.tgz";
      sha1 = "de520171d47b3f416f5587d629b89d26b12dc29d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."x-is-string"."0.1.0" =
    self.by-version."x-is-string"."0.1.0";
  by-version."x-is-string"."0.1.0" = self.buildNodePackage {
    name = "x-is-string-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/x-is-string/-/x-is-string-0.1.0.tgz";
      name = "x-is-string-0.1.0.tgz";
      sha1 = "474b50865af3a49a9c4657f05acd145458f77d82";
    };
    deps = {
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
      url = "https://registry.npmjs.org/xtend/-/xtend-4.0.1.tgz";
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
      url = "https://registry.npmjs.org/xtend/-/xtend-3.0.0.tgz";
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
  by-spec."y18n"."^3.2.1" =
    self.by-version."y18n"."3.2.1";
  by-version."y18n"."3.2.1" = self.buildNodePackage {
    name = "y18n-3.2.1";
    version = "3.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/y18n/-/y18n-3.2.1.tgz";
      name = "y18n-3.2.1.tgz";
      sha1 = "6d15fba884c08679c0d77e88e7759e811e07fa41";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yakyak"."https://github.com/yakyak/yakyak/tarball/3891b41c3aa91340920fa13eed37cf587610be5b" =
    self.by-version."yakyak"."1.3.0";
  by-version."yakyak"."1.3.0" = self.buildNodePackage {
    name = "yakyak-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://github.com/yakyak/yakyak/tarball/3891b41c3aa91340920fa13eed37cf587610be5b";
      name = "yakyak-1.3.0.tgz";
      sha256 = "b9b89f34f1cb4fc42cf7b382732387897056f893be1c98bd63cefbbd66190d53";
    };
    deps = {
      "autosize-3.0.15" = self.by-version."autosize"."3.0.15";
      "hangupsjs-1.3.1" = self.by-version."hangupsjs"."1.3.1";
      "moment-2.13.0" = self.by-version."moment"."2.13.0";
      "node-notifier-4.6.0" = self.by-version."node-notifier"."4.6.0";
      "notr-1.1.2" = self.by-version."notr"."1.1.2";
      "q-1.4.1" = self.by-version."q"."1.4.1";
      "request-2.72.0" = self.by-version."request"."2.72.0";
      "tmp-0.0.28" = self.by-version."tmp"."0.0.28";
      "trifl-0.0.10" = self.by-version."trifl"."0.0.10";
      "url-regexp-1.0.2" = self.by-version."url-regexp"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "yakyak" = self.by-version."yakyak"."1.3.0";
  by-spec."yargs"."^4.7.1" =
    self.by-version."yargs"."4.7.1";
  by-version."yargs"."4.7.1" = self.buildNodePackage {
    name = "yargs-4.7.1";
    version = "4.7.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/yargs/-/yargs-4.7.1.tgz";
      name = "yargs-4.7.1.tgz";
      sha1 = "e60432658a3387ff269c028eacde4a512e438dff";
    };
    deps = {
      "camelcase-3.0.0" = self.by-version."camelcase"."3.0.0";
      "cliui-3.2.0" = self.by-version."cliui"."3.2.0";
      "decamelize-1.2.0" = self.by-version."decamelize"."1.2.0";
      "lodash.assign-4.0.9" = self.by-version."lodash.assign"."4.0.9";
      "os-locale-1.4.0" = self.by-version."os-locale"."1.4.0";
      "pkg-conf-1.1.3" = self.by-version."pkg-conf"."1.1.3";
      "read-pkg-up-1.0.1" = self.by-version."read-pkg-up"."1.0.1";
      "require-main-filename-1.0.1" = self.by-version."require-main-filename"."1.0.1";
      "set-blocking-1.0.0" = self.by-version."set-blocking"."1.0.0";
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
      "window-size-0.2.0" = self.by-version."window-size"."0.2.0";
      "y18n-3.2.1" = self.by-version."y18n"."3.2.1";
      "yargs-parser-2.4.0" = self.by-version."yargs-parser"."2.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yargs"."~3.10.0" =
    self.by-version."yargs"."3.10.0";
  by-version."yargs"."3.10.0" = self.buildNodePackage {
    name = "yargs-3.10.0";
    version = "3.10.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/yargs/-/yargs-3.10.0.tgz";
      name = "yargs-3.10.0.tgz";
      sha1 = "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1";
    };
    deps = {
      "camelcase-1.2.1" = self.by-version."camelcase"."1.2.1";
      "cliui-2.1.0" = self.by-version."cliui"."2.1.0";
      "decamelize-1.2.0" = self.by-version."decamelize"."1.2.0";
      "window-size-0.1.0" = self.by-version."window-size"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yargs-parser"."^2.4.0" =
    self.by-version."yargs-parser"."2.4.0";
  by-version."yargs-parser"."2.4.0" = self.buildNodePackage {
    name = "yargs-parser-2.4.0";
    version = "2.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/yargs-parser/-/yargs-parser-2.4.0.tgz";
      name = "yargs-parser-2.4.0.tgz";
      sha1 = "1f367dc9c6cfa5660b6971230f3b277fc5e3adca";
    };
    deps = {
      "camelcase-2.1.1" = self.by-version."camelcase"."2.1.1";
      "lodash.assign-4.0.9" = self.by-version."lodash.assign"."4.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}
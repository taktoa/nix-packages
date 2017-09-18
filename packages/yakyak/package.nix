{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."accord"."^0.23.0" =
    self.by-version."accord"."0.23.0";
  by-version."accord"."0.23.0" = self.buildNodePackage {
    name = "accord-0.23.0";
    version = "0.23.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/accord/-/accord-0.23.0.tgz";
      name = "accord-0.23.0.tgz";
      sha1 = "2468c78e56412dba9311d383fb873450d2867caf";
    };
    deps = {
      "convert-source-map-1.3.0" = self.by-version."convert-source-map"."1.3.0";
      "fobject-0.0.4" = self.by-version."fobject"."0.0.4";
      "glob-7.0.3" = self.by-version."glob"."7.0.3";
      "indx-0.2.3" = self.by-version."indx"."0.2.3";
      "lodash-4.11.2" = self.by-version."lodash"."4.11.2";
      "resolve-1.1.7" = self.by-version."resolve"."1.1.7";
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
      "uglify-js-2.7.4" = self.by-version."uglify-js"."2.7.4";
      "when-3.7.7" = self.by-version."when"."3.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."acorn"."4.X" =
    self.by-version."acorn"."4.0.3";
  by-version."acorn"."4.0.3" = self.buildNodePackage {
    name = "acorn-4.0.3";
    version = "4.0.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/acorn/-/acorn-4.0.3.tgz";
      name = "acorn-4.0.3.tgz";
      sha1 = "1a3e850b428e73ba6b09d1cc527f5aaad4d03ef1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
      "kind-of-3.0.4" = self.by-version."kind-of"."3.0.4";
      "longest-1.0.1" = self.by-version."longest"."1.0.1";
      "repeat-string-1.6.1" = self.by-version."repeat-string"."1.6.1";
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
  by-spec."archy"."^1.0.0" =
    self.by-version."archy"."1.0.0";
  by-version."archy"."1.0.0" = self.buildNodePackage {
    name = "archy-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/archy/-/archy-1.0.0.tgz";
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
  by-spec."array-differ"."^1.0.0" =
    self.by-version."array-differ"."1.0.0";
  by-version."array-differ"."1.0.0" = self.buildNodePackage {
    name = "array-differ-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/array-differ/-/array-differ-1.0.0.tgz";
      name = "array-differ-1.0.0.tgz";
      sha1 = "eff52e3758249d33be402b8bb8e564bb2b5d4031";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-find-index"."^1.0.1" =
    self.by-version."array-find-index"."1.0.2";
  by-version."array-find-index"."1.0.2" = self.buildNodePackage {
    name = "array-find-index-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/array-find-index/-/array-find-index-1.0.2.tgz";
      name = "array-find-index-1.0.2.tgz";
      sha1 = "df010aa1287e164bbda6f9723b0a96a1ec4187a1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-uniq"."^1.0.2" =
    self.by-version."array-uniq"."1.0.3";
  by-version."array-uniq"."1.0.3" = self.buildNodePackage {
    name = "array-uniq-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/array-uniq/-/array-uniq-1.0.3.tgz";
      name = "array-uniq-1.0.3.tgz";
      sha1 = "af6ac877a25cc7f74e058894753858dfdb24fdb6";
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
  by-spec."asap"."~2.0.3" =
    self.by-version."asap"."2.0.5";
  by-version."asap"."2.0.5" = self.buildNodePackage {
    name = "asap-2.0.5";
    version = "2.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asap/-/asap-2.0.5.tgz";
      name = "asap-2.0.5.tgz";
      sha1 = "522765b50c3510490e52d7dcfe085ef9ba96958f";
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
  by-spec."assertion-error"."^1.0.1" =
    self.by-version."assertion-error"."1.0.2";
  by-version."assertion-error"."1.0.2" = self.buildNodePackage {
    name = "assertion-error-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assertion-error/-/assertion-error-1.0.2.tgz";
      name = "assertion-error-1.0.2.tgz";
      sha1 = "13ca515d86206da0bac66e834dd397d87581094c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."asynckit"."^0.4.0" =
    self.by-version."asynckit"."0.4.0";
  by-version."asynckit"."0.4.0" = self.buildNodePackage {
    name = "asynckit-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asynckit/-/asynckit-0.4.0.tgz";
      name = "asynckit-0.4.0.tgz";
      sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."atob"."~1.1.0" =
    self.by-version."atob"."1.1.3";
  by-version."atob"."1.1.3" = self.buildNodePackage {
    name = "atob-1.1.3";
    version = "1.1.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/atob/-/atob-1.1.3.tgz";
      name = "atob-1.1.3.tgz";
      sha1 = "95f13629b12c3a51a5d215abdce2aa9f32f80773";
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
    self.by-version."autosize"."3.0.18";
  by-version."autosize"."3.0.18" = self.buildNodePackage {
    name = "autosize-3.0.18";
    version = "3.0.18";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/autosize/-/autosize-3.0.18.tgz";
      name = "autosize-3.0.18.tgz";
      sha1 = "75ecffa2debb2c6398001a8847a570ad6bf94fd4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "autosize" = self.by-version."autosize"."3.0.18";
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
    self.by-version."aws4"."1.5.0";
  by-version."aws4"."1.5.0" = self.buildNodePackage {
    name = "aws4-1.5.0";
    version = "1.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/aws4/-/aws4-1.5.0.tgz";
      name = "aws4-1.5.0.tgz";
      sha1 = "0a29ffb79c31c9e712eeb087e8e7a64b4a56d755";
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
    self.by-version."balanced-match"."0.4.2";
  by-version."balanced-match"."0.4.2" = self.buildNodePackage {
    name = "balanced-match-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/balanced-match/-/balanced-match-0.4.2.tgz";
      name = "balanced-match-0.4.2.tgz";
      sha1 = "cb3f3e3c732dc0f01ee70b403f302e61d7709838";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bcrypt-pbkdf"."^1.0.0" =
    self.by-version."bcrypt-pbkdf"."1.0.0";
  by-version."bcrypt-pbkdf"."1.0.0" = self.buildNodePackage {
    name = "bcrypt-pbkdf-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.0.tgz";
      name = "bcrypt-pbkdf-1.0.0.tgz";
      sha1 = "3ca76b85241c7170bf7d9703e7b9aa74630040d4";
    };
    deps = {
      "tweetnacl-0.14.3" = self.by-version."tweetnacl"."0.14.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."beeper"."^1.0.0" =
    self.by-version."beeper"."1.1.0";
  by-version."beeper"."1.1.0" = self.buildNodePackage {
    name = "beeper-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/beeper/-/beeper-1.1.0.tgz";
      name = "beeper-1.1.0.tgz";
      sha1 = "9ee6fc1ce7f54feaace7ce73588b056037866a2c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
    self.by-version."brace-expansion"."1.1.6";
  by-version."brace-expansion"."1.1.6" = self.buildNodePackage {
    name = "brace-expansion-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.6.tgz";
      name = "brace-expansion-1.1.6.tgz";
      sha1 = "7197d7eaa9b87e648390ea61fc66c84427420df9";
    };
    deps = {
      "balanced-match-0.4.2" = self.by-version."balanced-match"."0.4.2";
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
  by-spec."camelcase"."^2.0.0" =
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
  by-spec."camelcase-keys"."^2.0.0" =
    self.by-version."camelcase-keys"."2.1.0";
  by-version."camelcase-keys"."2.1.0" = self.buildNodePackage {
    name = "camelcase-keys-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/camelcase-keys/-/camelcase-keys-2.1.0.tgz";
      name = "camelcase-keys-2.1.0.tgz";
      sha1 = "308beeaffdf28119051efa1d932213c91b8f92e7";
    };
    deps = {
      "camelcase-2.1.1" = self.by-version."camelcase"."2.1.1";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
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
  by-spec."cardinal"."^1.0.0" =
    self.by-version."cardinal"."1.0.0";
  by-version."cardinal"."1.0.0" = self.buildNodePackage {
    name = "cardinal-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/cardinal/-/cardinal-1.0.0.tgz";
      name = "cardinal-1.0.0.tgz";
      sha1 = "50e21c1b0aa37729f9377def196b5a9cec932ee9";
    };
    deps = {
      "ansicolors-0.2.1" = self.by-version."ansicolors"."0.2.1";
      "redeyed-1.0.1" = self.by-version."redeyed"."1.0.1";
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
  by-spec."chai".">=1.9.2 <4" =
    self.by-version."chai"."3.5.0";
  by-version."chai"."3.5.0" = self.buildNodePackage {
    name = "chai-3.5.0";
    version = "3.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chai/-/chai-3.5.0.tgz";
      name = "chai-3.5.0.tgz";
      sha1 = "4d02637b067fe958bdbfdd3a40ec56fef7373247";
    };
    deps = {
      "assertion-error-1.0.2" = self.by-version."assertion-error"."1.0.2";
      "deep-eql-0.1.3" = self.by-version."deep-eql"."0.1.3";
      "type-detect-1.0.0" = self.by-version."type-detect"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chai"."^3.2.0" =
    self.by-version."chai"."3.5.0";
  "chai" = self.by-version."chai"."3.5.0";
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
  by-spec."chalk"."^1.1.1" =
    self.by-version."chalk"."1.1.3";
  by-spec."chalk"."^1.1.3" =
    self.by-version."chalk"."1.1.3";
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
    self.by-version."cli-usage"."0.1.4";
  by-version."cli-usage"."0.1.4" = self.buildNodePackage {
    name = "cli-usage-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cli-usage/-/cli-usage-0.1.4.tgz";
      name = "cli-usage-0.1.4.tgz";
      sha1 = "7c01e0dc706c234b39c933838c8e20b2175776e2";
    };
    deps = {
      "marked-0.3.6" = self.by-version."marked"."0.3.6";
      "marked-terminal-1.7.0" = self.by-version."marked-terminal"."1.7.0";
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
  by-spec."clone"."^0.2.0" =
    self.by-version."clone"."0.2.0";
  by-version."clone"."0.2.0" = self.buildNodePackage {
    name = "clone-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/clone/-/clone-0.2.0.tgz";
      name = "clone-0.2.0.tgz";
      sha1 = "c6126a90ad4f72dbf5acdb243cc37724fe93fc1f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."clone"."^1.0.0" =
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
  by-spec."clone"."^1.0.2" =
    self.by-version."clone"."1.0.2";
  by-spec."clone-stats"."^0.0.1" =
    self.by-version."clone-stats"."0.0.1";
  by-version."clone-stats"."0.0.1" = self.buildNodePackage {
    name = "clone-stats-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/clone-stats/-/clone-stats-0.0.1.tgz";
      name = "clone-stats-0.0.1.tgz";
      sha1 = "b88f94a82cf38b8791d58046ea4029ad88ca99d1";
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
    self.by-version."code-point-at"."1.0.1";
  by-version."code-point-at"."1.0.1" = self.buildNodePackage {
    name = "code-point-at-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/code-point-at/-/code-point-at-1.0.1.tgz";
      name = "code-point-at-1.0.1.tgz";
      sha1 = "1104cd34f9b5b45d3eba88f1babc1924e1ce35fb";
    };
    deps = {
      "number-is-nan-1.0.1" = self.by-version."number-is-nan"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."coffee-script"."^1.10.0" =
    self.by-version."coffee-script"."1.11.1";
  by-version."coffee-script"."1.11.1" = self.buildNodePackage {
    name = "coffee-script-1.11.1";
    version = "1.11.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/coffee-script/-/coffee-script-1.11.1.tgz";
      name = "coffee-script-1.11.1.tgz";
      sha1 = "bf1c47ad64443a0d95d12df2b147cc0a4daad6e9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."coffee-script"."^1.9.2" =
    self.by-version."coffee-script"."1.11.1";
  "coffee-script" = self.by-version."coffee-script"."1.11.1";
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
  by-spec."combined-stream"."~1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-spec."commander"."0.6.1" =
    self.by-version."commander"."0.6.1";
  by-version."commander"."0.6.1" = self.buildNodePackage {
    name = "commander-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/commander/-/commander-0.6.1.tgz";
      name = "commander-0.6.1.tgz";
      sha1 = "fa68a14f6a945d54dbbe50d8cdb3320e9e3b1a06";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."2.3.0" =
    self.by-version."commander"."2.3.0";
  by-version."commander"."2.3.0" = self.buildNodePackage {
    name = "commander-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/commander/-/commander-2.3.0.tgz";
      name = "commander-2.3.0.tgz";
      sha1 = "fd430e889832ec353b9acd1de217c11cb3eef873";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."concat-stream"."1.5.0" =
    self.by-version."concat-stream"."1.5.0";
  by-version."concat-stream"."1.5.0" = self.buildNodePackage {
    name = "concat-stream-1.5.0";
    version = "1.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/concat-stream/-/concat-stream-1.5.0.tgz";
      name = "concat-stream-1.5.0.tgz";
      sha1 = "53f7d43c51c5e43f81c8fdd03321c631be68d611";
    };
    deps = {
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-with-sourcemaps"."^1.0.0" =
    self.by-version."concat-with-sourcemaps"."1.0.4";
  by-version."concat-with-sourcemaps"."1.0.4" = self.buildNodePackage {
    name = "concat-with-sourcemaps-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/concat-with-sourcemaps/-/concat-with-sourcemaps-1.0.4.tgz";
      name = "concat-with-sourcemaps-1.0.4.tgz";
      sha1 = "f55b3be2aeb47601b10a2d5259ccfb70fd2f1dd6";
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
  by-spec."convert-source-map"."1.X" =
    self.by-version."convert-source-map"."1.3.0";
  by-version."convert-source-map"."1.3.0" = self.buildNodePackage {
    name = "convert-source-map-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/convert-source-map/-/convert-source-map-1.3.0.tgz";
      name = "convert-source-map-1.3.0.tgz";
      sha1 = "e9f3e9c6e2728efc2676696a70eb382f73106a67";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."convert-source-map"."1.x" =
    self.by-version."convert-source-map"."1.3.0";
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
  by-spec."css"."2.X" =
    self.by-version."css"."2.2.1";
  by-version."css"."2.2.1" = self.buildNodePackage {
    name = "css-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/css/-/css-2.2.1.tgz";
      name = "css-2.2.1.tgz";
      sha1 = "73a4c81de85db664d4ee674f7d47085e3b2d55dc";
    };
    deps = {
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
      "source-map-resolve-0.3.1" = self.by-version."source-map-resolve"."0.3.1";
      "urix-0.1.0" = self.by-version."urix"."0.1.0";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."currently-unhandled"."^0.4.1" =
    self.by-version."currently-unhandled"."0.4.1";
  by-version."currently-unhandled"."0.4.1" = self.buildNodePackage {
    name = "currently-unhandled-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/currently-unhandled/-/currently-unhandled-0.4.1.tgz";
      name = "currently-unhandled-0.4.1.tgz";
      sha1 = "988df33feab191ef799a61369dd76c17adf957ea";
    };
    deps = {
      "array-find-index-1.0.2" = self.by-version."array-find-index"."1.0.2";
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
  by-spec."dateformat"."^1.0.11" =
    self.by-version."dateformat"."1.0.12";
  by-version."dateformat"."1.0.12" = self.buildNodePackage {
    name = "dateformat-1.0.12";
    version = "1.0.12";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/dateformat/-/dateformat-1.0.12.tgz";
      name = "dateformat-1.0.12.tgz";
      sha1 = "9f124b67594c937ff706932e4a642cca8dbbfee9";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "meow-3.7.0" = self.by-version."meow"."3.7.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."*" =
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
  by-spec."debug"."0.7.4" =
    self.by-version."debug"."0.7.4";
  by-version."debug"."0.7.4" = self.buildNodePackage {
    name = "debug-0.7.4";
    version = "0.7.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/debug/-/debug-0.7.4.tgz";
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
  by-spec."debug"."2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."2.X" =
    self.by-version."debug"."2.2.0";
  by-spec."debug".">=2.0.0 <3.0.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."^2.1.3" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."^2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug-fabulous"."0.0.X" =
    self.by-version."debug-fabulous"."0.0.4";
  by-version."debug-fabulous"."0.0.4" = self.buildNodePackage {
    name = "debug-fabulous-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/debug-fabulous/-/debug-fabulous-0.0.4.tgz";
      name = "debug-fabulous-0.0.4.tgz";
      sha1 = "fa071c5d87484685424807421ca4b16b0b1a0763";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "lazy-debug-legacy-0.0.1" = self.by-version."lazy-debug-legacy"."0.0.1";
      "object-assign-4.1.0" = self.by-version."object-assign"."4.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."decamelize"."^1.1.2" =
    self.by-version."decamelize"."1.2.0";
  by-spec."deep-eql"."^0.1.3" =
    self.by-version."deep-eql"."0.1.3";
  by-version."deep-eql"."0.1.3" = self.buildNodePackage {
    name = "deep-eql-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/deep-eql/-/deep-eql-0.1.3.tgz";
      name = "deep-eql-0.1.3.tgz";
      sha1 = "ef558acab8de25206cd713906d74e56930eb69f2";
    };
    deps = {
      "type-detect-0.1.1" = self.by-version."type-detect"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."defaults"."^1.0.0" =
    self.by-version."defaults"."1.0.3";
  by-version."defaults"."1.0.3" = self.buildNodePackage {
    name = "defaults-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/defaults/-/defaults-1.0.3.tgz";
      name = "defaults-1.0.3.tgz";
      sha1 = "c656051e9817d9ff08ed881477f3fe4019f3ef7d";
    };
    deps = {
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
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
  by-spec."deprecated"."^0.0.1" =
    self.by-version."deprecated"."0.0.1";
  by-version."deprecated"."0.0.1" = self.buildNodePackage {
    name = "deprecated-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/deprecated/-/deprecated-0.0.1.tgz";
      name = "deprecated-0.0.1.tgz";
      sha1 = "f9c9af5464afa1e7a971458a8bdef2aa94d5bb19";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."detect-file"."^0.1.0" =
    self.by-version."detect-file"."0.1.0";
  by-version."detect-file"."0.1.0" = self.buildNodePackage {
    name = "detect-file-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/detect-file/-/detect-file-0.1.0.tgz";
      name = "detect-file-0.1.0.tgz";
      sha1 = "4935dedfd9488648e006b0129566e9386711ea63";
    };
    deps = {
      "fs-exists-sync-0.1.0" = self.by-version."fs-exists-sync"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."detect-newline"."2.X" =
    self.by-version."detect-newline"."2.1.0";
  by-version."detect-newline"."2.1.0" = self.buildNodePackage {
    name = "detect-newline-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/detect-newline/-/detect-newline-2.1.0.tgz";
      name = "detect-newline-2.1.0.tgz";
      sha1 = "f41f1c10be4b00e87b5f13da680759f2c5bfd3e2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."diff"."1.4.0" =
    self.by-version."diff"."1.4.0";
  by-version."diff"."1.4.0" = self.buildNodePackage {
    name = "diff-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/diff/-/diff-1.4.0.tgz";
      name = "diff-1.4.0.tgz";
      sha1 = "7f28d2eb9ee7b15a97efd89ce63dcfdaa3ccbabf";
    };
    deps = {
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
  by-spec."ecc-jsbn"."~0.1.1" =
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
  by-spec."electron-download"."^3.0.1" =
    self.by-version."electron-download"."3.0.1";
  by-version."electron-download"."3.0.1" = self.buildNodePackage {
    name = "electron-download-3.0.1";
    version = "3.0.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/electron-download/-/electron-download-3.0.1.tgz";
      name = "electron-download-3.0.1.tgz";
      sha1 = "27045028ee78b3b3dca9fdb35d4bb1262afa4d29";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "fs-extra-0.30.0" = self.by-version."fs-extra"."0.30.0";
      "home-path-1.0.3" = self.by-version."home-path"."1.0.3";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "nugget-2.0.1" = self.by-version."nugget"."2.0.1";
      "path-exists-2.1.0" = self.by-version."path-exists"."2.1.0";
      "rc-1.1.6" = self.by-version."rc"."1.1.6";
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
      "sumchecker-1.2.0" = self.by-version."sumchecker"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."electron-prebuilt"."^1.2.1" =
    self.by-version."electron-prebuilt"."1.4.4";
  by-version."electron-prebuilt"."1.4.4" = self.buildNodePackage {
    name = "electron-prebuilt-1.4.4";
    version = "1.4.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/electron-prebuilt/-/electron-prebuilt-1.4.4.tgz";
      name = "electron-prebuilt-1.4.4.tgz";
      sha1 = "3897ac282954e1652585f6915c32be07a05aa474";
    };
    deps = {
      "extract-zip-1.5.0" = self.by-version."extract-zip"."1.5.0";
      "electron-download-3.0.1" = self.by-version."electron-download"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "electron-prebuilt" = self.by-version."electron-prebuilt"."1.4.4";
  by-spec."end-of-stream"."~0.1.5" =
    self.by-version."end-of-stream"."0.1.5";
  by-version."end-of-stream"."0.1.5" = self.buildNodePackage {
    name = "end-of-stream-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/end-of-stream/-/end-of-stream-0.1.5.tgz";
      name = "end-of-stream-0.1.5.tgz";
      sha1 = "8e177206c3c80837d85632e8b9359dfe8b2f6eaf";
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
  by-spec."errno"."^0.1.1" =
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
  by-spec."es6-promise"."^3.2.1" =
    self.by-version."es6-promise"."3.3.1";
  by-version."es6-promise"."3.3.1" = self.buildNodePackage {
    name = "es6-promise-3.3.1";
    version = "3.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/es6-promise/-/es6-promise-3.3.1.tgz";
      name = "es6-promise-3.3.1.tgz";
      sha1 = "a08cdde84ccdbf34d027a1451bc91d4bcd28a613";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."1.0.2" =
    self.by-version."escape-string-regexp"."1.0.2";
  by-version."escape-string-regexp"."1.0.2" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.2.tgz";
      name = "escape-string-regexp-1.0.2.tgz";
      sha1 = "4dbc2fe674e71949caf3fb2695ce7f2dc1d9a8d1";
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
  by-spec."esprima"."~3.0.0" =
    self.by-version."esprima"."3.0.0";
  by-version."esprima"."3.0.0" = self.buildNodePackage {
    name = "esprima-3.0.0";
    version = "3.0.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/esprima/-/esprima-3.0.0.tgz";
      name = "esprima-3.0.0.tgz";
      sha1 = "53cf247acda77313e551c3aa2e73342d3fb4f7d9";
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
  by-spec."expand-tilde"."^1.2.1" =
    self.by-version."expand-tilde"."1.2.2";
  by-version."expand-tilde"."1.2.2" = self.buildNodePackage {
    name = "expand-tilde-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/expand-tilde/-/expand-tilde-1.2.2.tgz";
      name = "expand-tilde-1.2.2.tgz";
      sha1 = "0b81eba897e5a3d31d1c3d102f8f01441e559449";
    };
    deps = {
      "os-homedir-1.0.2" = self.by-version."os-homedir"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-tilde"."^1.2.2" =
    self.by-version."expand-tilde"."1.2.2";
  by-spec."extend"."^3.0.0" =
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
  by-spec."extend"."~3.0.0" =
    self.by-version."extend"."3.0.0";
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
  by-spec."extract-zip"."^1.0.3" =
    self.by-version."extract-zip"."1.5.0";
  by-version."extract-zip"."1.5.0" = self.buildNodePackage {
    name = "extract-zip-1.5.0";
    version = "1.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/extract-zip/-/extract-zip-1.5.0.tgz";
      name = "extract-zip-1.5.0.tgz";
      sha1 = "92ccf6d81ef70a9fa4c1747114ccef6d8688a6c4";
    };
    deps = {
      "concat-stream-1.5.0" = self.by-version."concat-stream"."1.5.0";
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "mkdirp-0.5.0" = self.by-version."mkdirp"."0.5.0";
      "yauzl-2.4.1" = self.by-version."yauzl"."2.4.1";
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
  by-spec."fancy-log"."^1.1.0" =
    self.by-version."fancy-log"."1.2.0";
  by-version."fancy-log"."1.2.0" = self.buildNodePackage {
    name = "fancy-log-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fancy-log/-/fancy-log-1.2.0.tgz";
      name = "fancy-log-1.2.0.tgz";
      sha1 = "d5a51b53e9ab22ca07d558f2b67ae55fdb5fcbd8";
    };
    deps = {
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "time-stamp-1.0.1" = self.by-version."time-stamp"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fd-slicer"."~1.0.1" =
    self.by-version."fd-slicer"."1.0.1";
  by-version."fd-slicer"."1.0.1" = self.buildNodePackage {
    name = "fd-slicer-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fd-slicer/-/fd-slicer-1.0.1.tgz";
      name = "fd-slicer-1.0.1.tgz";
      sha1 = "8b5bcbd9ec327c5041bf9ab023fd6750f1177e65";
    };
    deps = {
      "pend-1.2.0" = self.by-version."pend"."1.2.0";
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
      url = "https://registry.npmjs.org/fill-range/-/fill-range-2.2.3.tgz";
      name = "fill-range-2.2.3.tgz";
      sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "isobject-2.1.0" = self.by-version."isobject"."2.1.0";
      "randomatic-1.1.5" = self.by-version."randomatic"."1.1.5";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.6.1" = self.by-version."repeat-string"."1.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."find-index"."^0.1.1" =
    self.by-version."find-index"."0.1.1";
  by-version."find-index"."0.1.1" = self.buildNodePackage {
    name = "find-index-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/find-index/-/find-index-0.1.1.tgz";
      name = "find-index-0.1.1.tgz";
      sha1 = "675d358b2ca3892d795a1ab47232f8b6e2e0dde4";
    };
    deps = {
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
  by-spec."findup-sync"."^0.4.2" =
    self.by-version."findup-sync"."0.4.3";
  by-version."findup-sync"."0.4.3" = self.buildNodePackage {
    name = "findup-sync-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/findup-sync/-/findup-sync-0.4.3.tgz";
      name = "findup-sync-0.4.3.tgz";
      sha1 = "40043929e7bc60adf0b7f4827c4c6e75a0deca12";
    };
    deps = {
      "detect-file-0.1.0" = self.by-version."detect-file"."0.1.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "micromatch-2.3.11" = self.by-version."micromatch"."2.3.11";
      "resolve-dir-0.1.1" = self.by-version."resolve-dir"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fined"."^1.0.1" =
    self.by-version."fined"."1.0.2";
  by-version."fined"."1.0.2" = self.buildNodePackage {
    name = "fined-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fined/-/fined-1.0.2.tgz";
      name = "fined-1.0.2.tgz";
      sha1 = "5b28424b760d7598960b7ef8480dff8ad3660e97";
    };
    deps = {
      "expand-tilde-1.2.2" = self.by-version."expand-tilde"."1.2.2";
      "lodash.assignwith-4.2.0" = self.by-version."lodash.assignwith"."4.2.0";
      "lodash.isempty-4.4.0" = self.by-version."lodash.isempty"."4.4.0";
      "lodash.isplainobject-4.0.6" = self.by-version."lodash.isplainobject"."4.0.6";
      "lodash.isstring-4.0.1" = self.by-version."lodash.isstring"."4.0.1";
      "lodash.pick-4.4.0" = self.by-version."lodash.pick"."4.4.0";
      "parse-filepath-1.0.1" = self.by-version."parse-filepath"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."first-chunk-stream"."^1.0.0" =
    self.by-version."first-chunk-stream"."1.0.0";
  by-version."first-chunk-stream"."1.0.0" = self.buildNodePackage {
    name = "first-chunk-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/first-chunk-stream/-/first-chunk-stream-1.0.0.tgz";
      name = "first-chunk-stream-1.0.0.tgz";
      sha1 = "59bfb50cd905f60d7c394cd3d9acaab4e6ad934e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."flagged-respawn"."^0.3.2" =
    self.by-version."flagged-respawn"."0.3.2";
  by-version."flagged-respawn"."0.3.2" = self.buildNodePackage {
    name = "flagged-respawn-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/flagged-respawn/-/flagged-respawn-0.3.2.tgz";
      name = "flagged-respawn-0.3.2.tgz";
      sha1 = "ff191eddcd7088a675b2610fffc976be9b8074b5";
    };
    deps = {
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
  by-spec."fobject"."0.0.4" =
    self.by-version."fobject"."0.0.4";
  by-version."fobject"."0.0.4" = self.buildNodePackage {
    name = "fobject-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fobject/-/fobject-0.0.4.tgz";
      name = "fobject-0.0.4.tgz";
      sha1 = "8399e6b9105d2eb8e6df9dcc41123a171688adfe";
    };
    deps = {
      "graceful-fs-4.1.9" = self.by-version."graceful-fs"."4.1.9";
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
      "when-3.7.7" = self.by-version."when"."3.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-in"."^0.1.5" =
    self.by-version."for-in"."0.1.6";
  by-version."for-in"."0.1.6" = self.buildNodePackage {
    name = "for-in-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/for-in/-/for-in-0.1.6.tgz";
      name = "for-in-0.1.6.tgz";
      sha1 = "c9f96e89bfad18a545af5ec3ed352a1d9e5b4dc8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-own"."^0.1.4" =
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
      "for-in-0.1.6" = self.by-version."for-in"."0.1.6";
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
  by-spec."form-data"."~2.1.1" =
    self.by-version."form-data"."2.1.1";
  by-version."form-data"."2.1.1" = self.buildNodePackage {
    name = "form-data-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/form-data/-/form-data-2.1.1.tgz";
      name = "form-data-2.1.1.tgz";
      sha1 = "4adf0342e1a79afa1e84c8c320a9ffc82392a1f3";
    };
    deps = {
      "asynckit-0.4.0" = self.by-version."asynckit"."0.4.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.12" = self.by-version."mime-types"."2.1.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."formatio"."1.1.1" =
    self.by-version."formatio"."1.1.1";
  by-version."formatio"."1.1.1" = self.buildNodePackage {
    name = "formatio-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/formatio/-/formatio-1.1.1.tgz";
      name = "formatio-1.1.1.tgz";
      sha1 = "5ed3ccd636551097383465d996199100e86161e9";
    };
    deps = {
      "samsam-1.1.3" = self.by-version."samsam"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fs-exists-sync"."^0.1.0" =
    self.by-version."fs-exists-sync"."0.1.0";
  by-version."fs-exists-sync"."0.1.0" = self.buildNodePackage {
    name = "fs-exists-sync-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fs-exists-sync/-/fs-exists-sync-0.1.0.tgz";
      name = "fs-exists-sync-0.1.0.tgz";
      sha1 = "982d6893af918e72d08dec9e8673ff2b5a8d6add";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fs-extra"."^0.30.0" =
    self.by-version."fs-extra"."0.30.0";
  by-version."fs-extra"."0.30.0" = self.buildNodePackage {
    name = "fs-extra-0.30.0";
    version = "0.30.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fs-extra/-/fs-extra-0.30.0.tgz";
      name = "fs-extra-0.30.0.tgz";
      sha1 = "f233ffcc08d4da7d432daa449776989db1df93f0";
    };
    deps = {
      "graceful-fs-4.1.9" = self.by-version."graceful-fs"."4.1.9";
      "jsonfile-2.4.0" = self.by-version."jsonfile"."2.4.0";
      "klaw-1.3.1" = self.by-version."klaw"."1.3.1";
      "path-is-absolute-1.0.1" = self.by-version."path-is-absolute"."1.0.1";
      "rimraf-2.5.4" = self.by-version."rimraf"."2.5.4";
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
  by-spec."gaze"."^0.5.1" =
    self.by-version."gaze"."0.5.2";
  by-version."gaze"."0.5.2" = self.buildNodePackage {
    name = "gaze-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gaze/-/gaze-0.5.2.tgz";
      name = "gaze-0.5.2.tgz";
      sha1 = "40b709537d24d1d45767db5a908689dfe69ac44f";
    };
    deps = {
      "globule-0.1.0" = self.by-version."globule"."0.1.0";
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
  by-spec."get-stdin"."^4.0.1" =
    self.by-version."get-stdin"."4.0.1";
  by-version."get-stdin"."4.0.1" = self.buildNodePackage {
    name = "get-stdin-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz";
      name = "get-stdin-4.0.1.tgz";
      sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
    };
    deps = {
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
  by-spec."glob"."3.2.11" =
    self.by-version."glob"."3.2.11";
  by-version."glob"."3.2.11" = self.buildNodePackage {
    name = "glob-3.2.11";
    version = "3.2.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-3.2.11.tgz";
      name = "glob-3.2.11.tgz";
      sha1 = "4a973f635b9190f715d10987d5c00fd2815ebe3d";
    };
    deps = {
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "minimatch-0.3.0" = self.by-version."minimatch"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."7.0.3" =
    self.by-version."glob"."7.0.3";
  by-version."glob"."7.0.3" = self.buildNodePackage {
    name = "glob-7.0.3";
    version = "7.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-7.0.3.tgz";
      name = "glob-7.0.3.tgz";
      sha1 = "0aa235931a4a96ac13d60ffac2fb877bd6ed4f58";
    };
    deps = {
      "inflight-1.0.6" = self.by-version."inflight"."1.0.6";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "minimatch-3.0.3" = self.by-version."minimatch"."3.0.3";
      "once-1.4.0" = self.by-version."once"."1.4.0";
      "path-is-absolute-1.0.1" = self.by-version."path-is-absolute"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^4.3.1" =
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
      "inflight-1.0.6" = self.by-version."inflight"."1.0.6";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "once-1.4.0" = self.by-version."once"."1.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^7.0.5" =
    self.by-version."glob"."7.1.1";
  by-version."glob"."7.1.1" = self.buildNodePackage {
    name = "glob-7.1.1";
    version = "7.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-7.1.1.tgz";
      name = "glob-7.1.1.tgz";
      sha1 = "805211df04faaf1c63a3600306cdf5ade50b2ec8";
    };
    deps = {
      "fs.realpath-1.0.0" = self.by-version."fs.realpath"."1.0.0";
      "inflight-1.0.6" = self.by-version."inflight"."1.0.6";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "minimatch-3.0.3" = self.by-version."minimatch"."3.0.3";
      "once-1.4.0" = self.by-version."once"."1.4.0";
      "path-is-absolute-1.0.1" = self.by-version."path-is-absolute"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."~3.1.21" =
    self.by-version."glob"."3.1.21";
  by-version."glob"."3.1.21" = self.buildNodePackage {
    name = "glob-3.1.21";
    version = "3.1.21";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-3.1.21.tgz";
      name = "glob-3.1.21.tgz";
      sha1 = "d29e0a055dea5138f4d07ed40e8982e83c2066cd";
    };
    deps = {
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "graceful-fs-1.2.3" = self.by-version."graceful-fs"."1.2.3";
      "inherits-1.0.2" = self.by-version."inherits"."1.0.2";
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
  by-spec."glob-stream"."^3.1.5" =
    self.by-version."glob-stream"."3.1.18";
  by-version."glob-stream"."3.1.18" = self.buildNodePackage {
    name = "glob-stream-3.1.18";
    version = "3.1.18";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob-stream/-/glob-stream-3.1.18.tgz";
      name = "glob-stream-3.1.18.tgz";
      sha1 = "9170a5f12b790306fdfe598f313f8f7954fd143b";
    };
    deps = {
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "ordered-read-streams-0.1.0" = self.by-version."ordered-read-streams"."0.1.0";
      "glob2base-0.0.12" = self.by-version."glob2base"."0.0.12";
      "unique-stream-1.0.0" = self.by-version."unique-stream"."1.0.0";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-watcher"."^0.0.6" =
    self.by-version."glob-watcher"."0.0.6";
  by-version."glob-watcher"."0.0.6" = self.buildNodePackage {
    name = "glob-watcher-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob-watcher/-/glob-watcher-0.0.6.tgz";
      name = "glob-watcher-0.0.6.tgz";
      sha1 = "b95b4a8df74b39c83298b0c05c978b4d9a3b710b";
    };
    deps = {
      "gaze-0.5.2" = self.by-version."gaze"."0.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob2base"."^0.0.12" =
    self.by-version."glob2base"."0.0.12";
  by-version."glob2base"."0.0.12" = self.buildNodePackage {
    name = "glob2base-0.0.12";
    version = "0.0.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob2base/-/glob2base-0.0.12.tgz";
      name = "glob2base-0.0.12.tgz";
      sha1 = "9d419b3e28f12e83a362164a277055922c9c0d56";
    };
    deps = {
      "find-index-0.1.1" = self.by-version."find-index"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."global"."^4.3.0" =
    self.by-version."global"."4.3.1";
  by-version."global"."4.3.1" = self.buildNodePackage {
    name = "global-4.3.1";
    version = "4.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/global/-/global-4.3.1.tgz";
      name = "global-4.3.1.tgz";
      sha1 = "5f757908c7cbabce54f386ae440e11e26b7916df";
    };
    deps = {
      "min-document-2.19.0" = self.by-version."min-document"."2.19.0";
      "process-0.5.2" = self.by-version."process"."0.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."global-modules"."^0.2.3" =
    self.by-version."global-modules"."0.2.3";
  by-version."global-modules"."0.2.3" = self.buildNodePackage {
    name = "global-modules-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/global-modules/-/global-modules-0.2.3.tgz";
      name = "global-modules-0.2.3.tgz";
      sha1 = "ea5a3bed42c6d6ce995a4f8a1269b5dae223828d";
    };
    deps = {
      "global-prefix-0.1.4" = self.by-version."global-prefix"."0.1.4";
      "is-windows-0.2.0" = self.by-version."is-windows"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."global-prefix"."^0.1.4" =
    self.by-version."global-prefix"."0.1.4";
  by-version."global-prefix"."0.1.4" = self.buildNodePackage {
    name = "global-prefix-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/global-prefix/-/global-prefix-0.1.4.tgz";
      name = "global-prefix-0.1.4.tgz";
      sha1 = "05158db1cde2dd491b455e290eb3ab8bfc45c6e1";
    };
    deps = {
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "is-windows-0.2.0" = self.by-version."is-windows"."0.2.0";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "which-1.2.11" = self.by-version."which"."1.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."globule"."~0.1.0" =
    self.by-version."globule"."0.1.0";
  by-version."globule"."0.1.0" = self.buildNodePackage {
    name = "globule-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/globule/-/globule-0.1.0.tgz";
      name = "globule-0.1.0.tgz";
      sha1 = "d9c8edde1da79d125a151b79533b978676346ae5";
    };
    deps = {
      "lodash-1.0.2" = self.by-version."lodash"."1.0.2";
      "glob-3.1.21" = self.by-version."glob"."3.1.21";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glogg"."^1.0.0" =
    self.by-version."glogg"."1.0.0";
  by-version."glogg"."1.0.0" = self.buildNodePackage {
    name = "glogg-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glogg/-/glogg-1.0.0.tgz";
      name = "glogg-1.0.0.tgz";
      sha1 = "7fe0f199f57ac906cf512feead8f90ee4a284fc5";
    };
    deps = {
      "sparkles-1.0.0" = self.by-version."sparkles"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."4.X" =
    self.by-version."graceful-fs"."4.1.9";
  by-version."graceful-fs"."4.1.9" = self.buildNodePackage {
    name = "graceful-fs-4.1.9";
    version = "4.1.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.9.tgz";
      name = "graceful-fs-4.1.9.tgz";
      sha1 = "baacba37d19d11f9d146d3578bc99958c3787e29";
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
    self.by-version."graceful-fs"."3.0.11";
  by-version."graceful-fs"."3.0.11" = self.buildNodePackage {
    name = "graceful-fs-3.0.11";
    version = "3.0.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-3.0.11.tgz";
      name = "graceful-fs-3.0.11.tgz";
      sha1 = "7613c778a1afea62f25c630a086d7f3acbbdd818";
    };
    deps = {
      "natives-1.1.0" = self.by-version."natives"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^4.1.2" =
    self.by-version."graceful-fs"."4.1.9";
  by-spec."graceful-fs"."^4.1.3" =
    self.by-version."graceful-fs"."4.1.9";
  by-spec."graceful-fs"."^4.1.6" =
    self.by-version."graceful-fs"."4.1.9";
  by-spec."graceful-fs"."^4.1.9" =
    self.by-version."graceful-fs"."4.1.9";
  by-spec."graceful-fs"."~1.2.0" =
    self.by-version."graceful-fs"."1.2.3";
  by-version."graceful-fs"."1.2.3" = self.buildNodePackage {
    name = "graceful-fs-1.2.3";
    version = "1.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-1.2.3.tgz";
      name = "graceful-fs-1.2.3.tgz";
      sha1 = "15a4806a57547cb2d2dbf27f42e89a8c3451b364";
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
  by-spec."growl"."1.9.2" =
    self.by-version."growl"."1.9.2";
  by-version."growl"."1.9.2" = self.buildNodePackage {
    name = "growl-1.9.2";
    version = "1.9.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/growl/-/growl-1.9.2.tgz";
      name = "growl-1.9.2.tgz";
      sha1 = "0ea7743715db8d8de2c5ede1775e1b45ac85c02f";
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
  by-spec."gulp"."^3.8.11" =
    self.by-version."gulp"."3.9.1";
  by-version."gulp"."3.9.1" = self.buildNodePackage {
    name = "gulp-3.9.1";
    version = "3.9.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp/-/gulp-3.9.1.tgz";
      name = "gulp-3.9.1.tgz";
      sha1 = "571ce45928dd40af6514fc4011866016c13845b4";
    };
    deps = {
      "archy-1.0.0" = self.by-version."archy"."1.0.0";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "deprecated-0.0.1" = self.by-version."deprecated"."0.0.1";
      "gulp-util-3.0.7" = self.by-version."gulp-util"."3.0.7";
      "interpret-1.0.1" = self.by-version."interpret"."1.0.1";
      "liftoff-2.3.0" = self.by-version."liftoff"."2.3.0";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "orchestrator-0.3.7" = self.by-version."orchestrator"."0.3.7";
      "pretty-hrtime-1.0.2" = self.by-version."pretty-hrtime"."1.0.2";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "tildify-1.2.0" = self.by-version."tildify"."1.2.0";
      "v8flags-2.0.11" = self.by-version."v8flags"."2.0.11";
      "vinyl-fs-0.3.14" = self.by-version."vinyl-fs"."0.3.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "gulp" = self.by-version."gulp"."3.9.1";
  by-spec."gulp-changed"."^1.2.1" =
    self.by-version."gulp-changed"."1.3.2";
  by-version."gulp-changed"."1.3.2" = self.buildNodePackage {
    name = "gulp-changed-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp-changed/-/gulp-changed-1.3.2.tgz";
      name = "gulp-changed-1.3.2.tgz";
      sha1 = "9efc8d325f9805cc7668fdf4e7d60d4b1410f2cf";
    };
    deps = {
      "gulp-util-3.0.7" = self.by-version."gulp-util"."3.0.7";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "gulp-changed" = self.by-version."gulp-changed"."1.3.2";
  by-spec."gulp-coffee"."^2.3.1" =
    self.by-version."gulp-coffee"."2.3.2";
  by-version."gulp-coffee"."2.3.2" = self.buildNodePackage {
    name = "gulp-coffee-2.3.2";
    version = "2.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp-coffee/-/gulp-coffee-2.3.2.tgz";
      name = "gulp-coffee-2.3.2.tgz";
      sha1 = "e85413c95a6f7695ea160fb590cc578f3dbda5b1";
    };
    deps = {
      "coffee-script-1.11.1" = self.by-version."coffee-script"."1.11.1";
      "gulp-util-3.0.7" = self.by-version."gulp-util"."3.0.7";
      "merge-1.2.0" = self.by-version."merge"."1.2.0";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
      "vinyl-sourcemaps-apply-0.1.4" = self.by-version."vinyl-sourcemaps-apply"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "gulp-coffee" = self.by-version."gulp-coffee"."2.3.2";
  by-spec."gulp-concat"."^2.6.0" =
    self.by-version."gulp-concat"."2.6.0";
  by-version."gulp-concat"."2.6.0" = self.buildNodePackage {
    name = "gulp-concat-2.6.0";
    version = "2.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp-concat/-/gulp-concat-2.6.0.tgz";
      name = "gulp-concat-2.6.0.tgz";
      sha1 = "585cfb115411f348773131140566b6a81c69cb91";
    };
    deps = {
      "concat-with-sourcemaps-1.0.4" = self.by-version."concat-with-sourcemaps"."1.0.4";
      "gulp-util-3.0.7" = self.by-version."gulp-util"."3.0.7";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "gulp-concat" = self.by-version."gulp-concat"."2.6.0";
  by-spec."gulp-install"."^0.6.0" =
    self.by-version."gulp-install"."0.6.0";
  by-version."gulp-install"."0.6.0" = self.buildNodePackage {
    name = "gulp-install-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp-install/-/gulp-install-0.6.0.tgz";
      name = "gulp-install-0.6.0.tgz";
      sha1 = "11541f11fc5f7a19e18cb3ef8eadb9e64b8e54aa";
    };
    deps = {
      "gulp-util-3.0.7" = self.by-version."gulp-util"."3.0.7";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "which-1.2.11" = self.by-version."which"."1.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "gulp-install" = self.by-version."gulp-install"."0.6.0";
  by-spec."gulp-less"."^3.0.5" =
    self.by-version."gulp-less"."3.1.0";
  by-version."gulp-less"."3.1.0" = self.buildNodePackage {
    name = "gulp-less-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp-less/-/gulp-less-3.1.0.tgz";
      name = "gulp-less-3.1.0.tgz";
      sha1 = "c54c2ee014ebe6e135bfcb0169db4ddb93506de6";
    };
    deps = {
      "accord-0.23.0" = self.by-version."accord"."0.23.0";
      "gulp-util-3.0.7" = self.by-version."gulp-util"."3.0.7";
      "less-2.7.1" = self.by-version."less"."2.7.1";
      "object-assign-4.1.0" = self.by-version."object-assign"."4.1.0";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "vinyl-sourcemaps-apply-0.2.1" = self.by-version."vinyl-sourcemaps-apply"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "gulp-less" = self.by-version."gulp-less"."3.1.0";
  by-spec."gulp-rename"."^1.2.2" =
    self.by-version."gulp-rename"."1.2.2";
  by-version."gulp-rename"."1.2.2" = self.buildNodePackage {
    name = "gulp-rename-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp-rename/-/gulp-rename-1.2.2.tgz";
      name = "gulp-rename-1.2.2.tgz";
      sha1 = "3ad4428763f05e2764dec1c67d868db275687817";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "gulp-rename" = self.by-version."gulp-rename"."1.2.2";
  by-spec."gulp-sourcemaps"."^1.5.2" =
    self.by-version."gulp-sourcemaps"."1.9.0";
  by-version."gulp-sourcemaps"."1.9.0" = self.buildNodePackage {
    name = "gulp-sourcemaps-1.9.0";
    version = "1.9.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp-sourcemaps/-/gulp-sourcemaps-1.9.0.tgz";
      name = "gulp-sourcemaps-1.9.0.tgz";
      sha1 = "d85c060aa775ec30e9b9fb8c2f38c4f2d5135385";
    };
    deps = {
      "acorn-4.0.3" = self.by-version."acorn"."4.0.3";
      "convert-source-map-1.3.0" = self.by-version."convert-source-map"."1.3.0";
      "css-2.2.1" = self.by-version."css"."2.2.1";
      "debug-fabulous-0.0.4" = self.by-version."debug-fabulous"."0.0.4";
      "detect-newline-2.1.0" = self.by-version."detect-newline"."2.1.0";
      "graceful-fs-4.1.9" = self.by-version."graceful-fs"."4.1.9";
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
      "strip-bom-2.0.0" = self.by-version."strip-bom"."2.0.0";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "vinyl-1.2.0" = self.by-version."vinyl"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "gulp-sourcemaps" = self.by-version."gulp-sourcemaps"."1.9.0";
  by-spec."gulp-util"."^3.0.0" =
    self.by-version."gulp-util"."3.0.7";
  by-version."gulp-util"."3.0.7" = self.buildNodePackage {
    name = "gulp-util-3.0.7";
    version = "3.0.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulp-util/-/gulp-util-3.0.7.tgz";
      name = "gulp-util-3.0.7.tgz";
      sha1 = "78925c4b8f8b49005ac01a011c557e6218941cbb";
    };
    deps = {
      "array-differ-1.0.0" = self.by-version."array-differ"."1.0.0";
      "array-uniq-1.0.3" = self.by-version."array-uniq"."1.0.3";
      "beeper-1.1.0" = self.by-version."beeper"."1.1.0";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "dateformat-1.0.12" = self.by-version."dateformat"."1.0.12";
      "fancy-log-1.2.0" = self.by-version."fancy-log"."1.2.0";
      "gulplog-1.0.0" = self.by-version."gulplog"."1.0.0";
      "has-gulplog-0.1.0" = self.by-version."has-gulplog"."0.1.0";
      "lodash._reescape-3.0.0" = self.by-version."lodash._reescape"."3.0.0";
      "lodash._reevaluate-3.0.0" = self.by-version."lodash._reevaluate"."3.0.0";
      "lodash._reinterpolate-3.0.0" = self.by-version."lodash._reinterpolate"."3.0.0";
      "lodash.template-3.6.2" = self.by-version."lodash.template"."3.6.2";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "multipipe-0.1.2" = self.by-version."multipipe"."0.1.2";
      "object-assign-3.0.0" = self.by-version."object-assign"."3.0.0";
      "replace-ext-0.0.1" = self.by-version."replace-ext"."0.0.1";
      "through2-2.0.1" = self.by-version."through2"."2.0.1";
      "vinyl-0.5.3" = self.by-version."vinyl"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gulp-util"."^3.0.1" =
    self.by-version."gulp-util"."3.0.7";
  by-spec."gulp-util"."^3.0.2" =
    self.by-version."gulp-util"."3.0.7";
  by-spec."gulp-util"."^3.0.4" =
    self.by-version."gulp-util"."3.0.7";
  by-spec."gulp-util"."^3.0.6" =
    self.by-version."gulp-util"."3.0.7";
  "gulp-util" = self.by-version."gulp-util"."3.0.7";
  by-spec."gulp-util"."^3.0.7" =
    self.by-version."gulp-util"."3.0.7";
  by-spec."gulplog"."^1.0.0" =
    self.by-version."gulplog"."1.0.0";
  by-version."gulplog"."1.0.0" = self.buildNodePackage {
    name = "gulplog-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gulplog/-/gulplog-1.0.0.tgz";
      name = "gulplog-1.0.0.tgz";
      sha1 = "e28c4d45d05ecbbed818363ce8f9c5926229ffe5";
    };
    deps = {
      "glogg-1.0.0" = self.by-version."glogg"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hangupsjs"."^1.3.2" =
    self.by-version."hangupsjs"."1.3.2";
  by-version."hangupsjs"."1.3.2" = self.buildNodePackage {
    name = "hangupsjs-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hangupsjs/-/hangupsjs-1.3.2.tgz";
      name = "hangupsjs-1.3.2.tgz";
      sha1 = "0b3c74784cbd6c3cb7f9b87a2e9052cc805b1d6b";
    };
    deps = {
      "bog-1.0.2" = self.by-version."bog"."1.0.2";
      "fnuc-0.0.15" = self.by-version."fnuc"."0.0.15";
      "q-1.4.1" = self.by-version."q"."1.4.1";
      "request-2.76.0" = self.by-version."request"."2.76.0";
      "tough-cookie-2.3.2" = self.by-version."tough-cookie"."2.3.2";
      "tough-cookie-filestore-0.0.1" = self.by-version."tough-cookie-filestore"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "hangupsjs" = self.by-version."hangupsjs"."1.3.2";
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
      "is-my-json-valid-2.15.0" = self.by-version."is-my-json-valid"."2.15.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
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
  by-spec."has-gulplog"."^0.1.0" =
    self.by-version."has-gulplog"."0.1.0";
  by-version."has-gulplog"."0.1.0" = self.buildNodePackage {
    name = "has-gulplog-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/has-gulplog/-/has-gulplog-0.1.0.tgz";
      name = "has-gulplog-0.1.0.tgz";
      sha1 = "6414c82913697da51590397dafb12f22967811ce";
    };
    deps = {
      "sparkles-1.0.0" = self.by-version."sparkles"."1.0.0";
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
  by-spec."home-path"."^1.0.1" =
    self.by-version."home-path"."1.0.3";
  by-version."home-path"."1.0.3" = self.buildNodePackage {
    name = "home-path-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/home-path/-/home-path-1.0.3.tgz";
      name = "home-path-1.0.3.tgz";
      sha1 = "9ece59fec3f032e6d10b5434fee264df4c2de32f";
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
      "jsprim-1.3.1" = self.by-version."jsprim"."1.3.1";
      "sshpk-1.10.1" = self.by-version."sshpk"."1.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."image-size"."~0.5.0" =
    self.by-version."image-size"."0.5.0";
  by-version."image-size"."0.5.0" = self.buildNodePackage {
    name = "image-size-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/image-size/-/image-size-0.5.0.tgz";
      name = "image-size-0.5.0.tgz";
      sha1 = "be7aed1c37b5ac3d9ba1d66a24b4c47ff8397651";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."indent-string"."^2.1.0" =
    self.by-version."indent-string"."2.1.0";
  by-version."indent-string"."2.1.0" = self.buildNodePackage {
    name = "indent-string-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/indent-string/-/indent-string-2.1.0.tgz";
      name = "indent-string-2.1.0.tgz";
      sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
    };
    deps = {
      "repeating-2.0.1" = self.by-version."repeating"."2.0.1";
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
  by-spec."indx"."0.2.x" =
    self.by-version."indx"."0.2.3";
  by-version."indx"."0.2.3" = self.buildNodePackage {
    name = "indx-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/indx/-/indx-0.2.3.tgz";
      name = "indx-0.2.3.tgz";
      sha1 = "15dcf56ee9cf65c0234c513c27fbd580e70fbc50";
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
    self.by-version."inflight"."1.0.6";
  by-version."inflight"."1.0.6" = self.buildNodePackage {
    name = "inflight-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
      name = "inflight-1.0.6.tgz";
      sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
    };
    deps = {
      "once-1.4.0" = self.by-version."once"."1.4.0";
      "wrappy-1.0.2" = self.by-version."wrappy"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."1" =
    self.by-version."inherits"."1.0.2";
  by-version."inherits"."1.0.2" = self.buildNodePackage {
    name = "inherits-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/inherits/-/inherits-1.0.2.tgz";
      name = "inherits-1.0.2.tgz";
      sha1 = "ca4309dadee6b54cc0b8d247e8d7c7a0975bdc9b";
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
    self.by-version."inherits"."2.0.3";
  by-version."inherits"."2.0.3" = self.buildNodePackage {
    name = "inherits-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz";
      name = "inherits-2.0.3.tgz";
      sha1 = "633c2c83e3da42a502f52466022480f4208261de";
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
  by-spec."inherits"."^2.0.1" =
    self.by-version."inherits"."2.0.3";
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.3";
  by-spec."ini"."^1.3.4" =
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
  by-spec."ini"."~1.3.0" =
    self.by-version."ini"."1.3.4";
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
  by-spec."is-absolute"."^0.2.3" =
    self.by-version."is-absolute"."0.2.6";
  by-version."is-absolute"."0.2.6" = self.buildNodePackage {
    name = "is-absolute-0.2.6";
    version = "0.2.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-absolute/-/is-absolute-0.2.6.tgz";
      name = "is-absolute-0.2.6.tgz";
      sha1 = "20de69f3db942ef2d87b9c2da36f172235b1b5eb";
    };
    deps = {
      "is-relative-0.2.1" = self.by-version."is-relative"."0.2.1";
      "is-windows-0.2.0" = self.by-version."is-windows"."0.2.0";
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
  by-spec."is-buffer"."^1.0.2" =
    self.by-version."is-buffer"."1.1.4";
  by-version."is-buffer"."1.1.4" = self.buildNodePackage {
    name = "is-buffer-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-buffer/-/is-buffer-1.1.4.tgz";
      name = "is-buffer-1.1.4.tgz";
      sha1 = "cfc86ccd5dc5a52fa80489111c6920c457e2d98b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."is-finite"."^1.0.0" =
    self.by-version."is-finite"."1.0.2";
  by-version."is-finite"."1.0.2" = self.buildNodePackage {
    name = "is-finite-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-finite/-/is-finite-1.0.2.tgz";
      name = "is-finite-1.0.2.tgz";
      sha1 = "cc6677695602be550ef11e8b4aa6305342b6d0aa";
    };
    deps = {
      "number-is-nan-1.0.1" = self.by-version."number-is-nan"."1.0.1";
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
      "number-is-nan-1.0.1" = self.by-version."number-is-nan"."1.0.1";
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
    self.by-version."is-my-json-valid"."2.15.0";
  by-version."is-my-json-valid"."2.15.0" = self.buildNodePackage {
    name = "is-my-json-valid-2.15.0";
    version = "2.15.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.15.0.tgz";
      name = "is-my-json-valid-2.15.0.tgz";
      sha1 = "936edda3ca3c211fd98f3b2d3e08da43f7b2915b";
    };
    deps = {
      "generate-function-2.0.0" = self.by-version."generate-function"."2.0.0";
      "generate-object-property-1.2.0" = self.by-version."generate-object-property"."1.2.0";
      "jsonpointer-4.0.0" = self.by-version."jsonpointer"."4.0.0";
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
      "kind-of-3.0.4" = self.by-version."kind-of"."3.0.4";
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
  by-spec."is-relative"."^0.2.1" =
    self.by-version."is-relative"."0.2.1";
  by-version."is-relative"."0.2.1" = self.buildNodePackage {
    name = "is-relative-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-relative/-/is-relative-0.2.1.tgz";
      name = "is-relative-0.2.1.tgz";
      sha1 = "d27f4c7d516d175fb610db84bbeef23c3bc97aa5";
    };
    deps = {
      "is-unc-path-0.1.1" = self.by-version."is-unc-path"."0.1.1";
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
  by-spec."is-unc-path"."^0.1.1" =
    self.by-version."is-unc-path"."0.1.1";
  by-version."is-unc-path"."0.1.1" = self.buildNodePackage {
    name = "is-unc-path-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-unc-path/-/is-unc-path-0.1.1.tgz";
      name = "is-unc-path-0.1.1.tgz";
      sha1 = "ab2533d77ad733561124c3dc0f5cd8b90054c86b";
    };
    deps = {
      "unc-path-regex-0.1.2" = self.by-version."unc-path-regex"."0.1.2";
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
  by-spec."is-windows"."^0.2.0" =
    self.by-version."is-windows"."0.2.0";
  by-version."is-windows"."0.2.0" = self.buildNodePackage {
    name = "is-windows-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-windows/-/is-windows-0.2.0.tgz";
      name = "is-windows-0.2.0.tgz";
      sha1 = "de1aa6d63ea29dd248737b69f1ff8b8002d2108c";
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
  by-spec."jade"."0.26.3" =
    self.by-version."jade"."0.26.3";
  by-version."jade"."0.26.3" = self.buildNodePackage {
    name = "jade-0.26.3";
    version = "0.26.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/jade/-/jade-0.26.3.tgz";
      name = "jade-0.26.3.tgz";
      sha1 = "8f10d7977d8d79f2f6ff862a81b0513ccb25686c";
    };
    deps = {
      "commander-0.6.1" = self.by-version."commander"."0.6.1";
      "mkdirp-0.3.0" = self.by-version."mkdirp"."0.3.0";
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
  by-spec."json-schema"."0.2.3" =
    self.by-version."json-schema"."0.2.3";
  by-version."json-schema"."0.2.3" = self.buildNodePackage {
    name = "json-schema-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-schema/-/json-schema-0.2.3.tgz";
      name = "json-schema-0.2.3.tgz";
      sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
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
  by-spec."jsonfile"."^2.1.0" =
    self.by-version."jsonfile"."2.4.0";
  by-version."jsonfile"."2.4.0" = self.buildNodePackage {
    name = "jsonfile-2.4.0";
    version = "2.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsonfile/-/jsonfile-2.4.0.tgz";
      name = "jsonfile-2.4.0.tgz";
      sha1 = "3736a2b428b87bbda0cc83b53fa3d633a35c2ae8";
    };
    deps = {
    };
    optionalDependencies = {
      "graceful-fs-4.1.9" = self.by-version."graceful-fs"."4.1.9";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonpointer"."^4.0.0" =
    self.by-version."jsonpointer"."4.0.0";
  by-version."jsonpointer"."4.0.0" = self.buildNodePackage {
    name = "jsonpointer-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsonpointer/-/jsonpointer-4.0.0.tgz";
      name = "jsonpointer-4.0.0.tgz";
      sha1 = "6661e161d2fc445f19f98430231343722e1fcbd5";
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
    self.by-version."jsprim"."1.3.1";
  by-version."jsprim"."1.3.1" = self.buildNodePackage {
    name = "jsprim-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsprim/-/jsprim-1.3.1.tgz";
      name = "jsprim-1.3.1.tgz";
      sha1 = "2a7256f70412a29ee3670aaca625994c4dcff252";
    };
    deps = {
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
      "json-schema-0.2.3" = self.by-version."json-schema"."0.2.3";
      "verror-1.3.6" = self.by-version."verror"."1.3.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."kind-of"."^3.0.2" =
    self.by-version."kind-of"."3.0.4";
  by-version."kind-of"."3.0.4" = self.buildNodePackage {
    name = "kind-of-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/kind-of/-/kind-of-3.0.4.tgz";
      name = "kind-of-3.0.4.tgz";
      sha1 = "7b8ecf18a4e17f8269d73b501c9f232c96887a74";
    };
    deps = {
      "is-buffer-1.1.4" = self.by-version."is-buffer"."1.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."klaw"."^1.0.0" =
    self.by-version."klaw"."1.3.1";
  by-version."klaw"."1.3.1" = self.buildNodePackage {
    name = "klaw-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/klaw/-/klaw-1.3.1.tgz";
      name = "klaw-1.3.1.tgz";
      sha1 = "4088433b46b3b1ba259d78785d8e96f73ba02439";
    };
    deps = {
    };
    optionalDependencies = {
      "graceful-fs-4.1.9" = self.by-version."graceful-fs"."4.1.9";
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
  by-spec."lazy-debug-legacy"."0.0.X" =
    self.by-version."lazy-debug-legacy"."0.0.1";
  by-version."lazy-debug-legacy"."0.0.1" = self.buildNodePackage {
    name = "lazy-debug-legacy-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lazy-debug-legacy/-/lazy-debug-legacy-0.0.1.tgz";
      name = "lazy-debug-legacy-0.0.1.tgz";
      sha1 = "537716c0776e4cf79e3ed1b621f7658c2911b1b1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."debug"."2.2.0"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."less"."^2.6.0" =
    self.by-version."less"."2.7.1";
  by-version."less"."2.7.1" = self.buildNodePackage {
    name = "less-2.7.1";
    version = "2.7.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/less/-/less-2.7.1.tgz";
      name = "less-2.7.1.tgz";
      sha1 = "6cbfea22b3b830304e9a5fb371d54fa480c9d7cf";
    };
    deps = {
    };
    optionalDependencies = {
      "errno-0.1.4" = self.by-version."errno"."0.1.4";
      "graceful-fs-4.1.9" = self.by-version."graceful-fs"."4.1.9";
      "image-size-0.5.0" = self.by-version."image-size"."0.5.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "promise-7.1.1" = self.by-version."promise"."7.1.1";
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."less"."^2.7.1" =
    self.by-version."less"."2.7.1";
  "less" = self.by-version."less"."2.7.1";
  by-spec."liftoff"."^2.1.0" =
    self.by-version."liftoff"."2.3.0";
  by-version."liftoff"."2.3.0" = self.buildNodePackage {
    name = "liftoff-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/liftoff/-/liftoff-2.3.0.tgz";
      name = "liftoff-2.3.0.tgz";
      sha1 = "a98f2ff67183d8ba7cfaca10548bd7ff0550b385";
    };
    deps = {
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "findup-sync-0.4.3" = self.by-version."findup-sync"."0.4.3";
      "fined-1.0.2" = self.by-version."fined"."1.0.2";
      "flagged-respawn-0.3.2" = self.by-version."flagged-respawn"."0.3.2";
      "lodash.isplainobject-4.0.6" = self.by-version."lodash.isplainobject"."4.0.6";
      "lodash.isstring-4.0.1" = self.by-version."lodash.isstring"."4.0.1";
      "lodash.mapvalues-4.6.0" = self.by-version."lodash.mapvalues"."4.6.0";
      "rechoir-0.6.2" = self.by-version."rechoir"."0.6.2";
      "resolve-1.1.7" = self.by-version."resolve"."1.1.7";
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
      "graceful-fs-4.1.9" = self.by-version."graceful-fs"."4.1.9";
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
  by-spec."lodash"."4.11.2" =
    self.by-version."lodash"."4.11.2";
  by-version."lodash"."4.11.2" = self.buildNodePackage {
    name = "lodash-4.11.2";
    version = "4.11.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash/-/lodash-4.11.2.tgz";
      name = "lodash-4.11.2.tgz";
      sha1 = "d6b4338b110a58e21dae5cebcfdbbfd2bc4cdb3b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."~1.0.1" =
    self.by-version."lodash"."1.0.2";
  by-version."lodash"."1.0.2" = self.buildNodePackage {
    name = "lodash-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash/-/lodash-1.0.2.tgz";
      name = "lodash-1.0.2.tgz";
      sha1 = "8f57560c83b59fc270bd3d561b690043430e2551";
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
  by-spec."lodash._basetostring"."^3.0.0" =
    self.by-version."lodash._basetostring"."3.0.1";
  by-version."lodash._basetostring"."3.0.1" = self.buildNodePackage {
    name = "lodash._basetostring-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._basetostring/-/lodash._basetostring-3.0.1.tgz";
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
  by-spec."lodash._basevalues"."^3.0.0" =
    self.by-version."lodash._basevalues"."3.0.0";
  by-version."lodash._basevalues"."3.0.0" = self.buildNodePackage {
    name = "lodash._basevalues-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._basevalues/-/lodash._basevalues-3.0.0.tgz";
      name = "lodash._basevalues-3.0.0.tgz";
      sha1 = "5b775762802bde3d3297503e26300820fdf661b7";
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
  by-spec."lodash._reescape"."^3.0.0" =
    self.by-version."lodash._reescape"."3.0.0";
  by-version."lodash._reescape"."3.0.0" = self.buildNodePackage {
    name = "lodash._reescape-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._reescape/-/lodash._reescape-3.0.0.tgz";
      name = "lodash._reescape-3.0.0.tgz";
      sha1 = "2b1d6f5dfe07c8a355753e5f27fac7f1cde1616a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._reevaluate"."^3.0.0" =
    self.by-version."lodash._reevaluate"."3.0.0";
  by-version."lodash._reevaluate"."3.0.0" = self.buildNodePackage {
    name = "lodash._reevaluate-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._reevaluate/-/lodash._reevaluate-3.0.0.tgz";
      name = "lodash._reevaluate-3.0.0.tgz";
      sha1 = "58bc74c40664953ae0b124d806996daca431e2ed";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._reinterpolate"."^3.0.0" =
    self.by-version."lodash._reinterpolate"."3.0.0";
  by-version."lodash._reinterpolate"."3.0.0" = self.buildNodePackage {
    name = "lodash._reinterpolate-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._reinterpolate/-/lodash._reinterpolate-3.0.0.tgz";
      name = "lodash._reinterpolate-3.0.0.tgz";
      sha1 = "0ccf2d89166af03b3663c796538b75ac6e114d9d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._root"."^3.0.0" =
    self.by-version."lodash._root"."3.0.1";
  by-version."lodash._root"."3.0.1" = self.buildNodePackage {
    name = "lodash._root-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._root/-/lodash._root-3.0.1.tgz";
      name = "lodash._root-3.0.1.tgz";
      sha1 = "fba1c4524c19ee9a5f8136b4609f017cf4ded692";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.assign"."^4.2.0" =
    self.by-version."lodash.assign"."4.2.0";
  by-version."lodash.assign"."4.2.0" = self.buildNodePackage {
    name = "lodash.assign-4.2.0";
    version = "4.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.assign/-/lodash.assign-4.2.0.tgz";
      name = "lodash.assign-4.2.0.tgz";
      sha1 = "0d99f3ccd7a6d261d19bdaeb9245005d285808e7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.assignwith"."^4.0.7" =
    self.by-version."lodash.assignwith"."4.2.0";
  by-version."lodash.assignwith"."4.2.0" = self.buildNodePackage {
    name = "lodash.assignwith-4.2.0";
    version = "4.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.assignwith/-/lodash.assignwith-4.2.0.tgz";
      name = "lodash.assignwith-4.2.0.tgz";
      sha1 = "127a97f02adc41751a954d24b0de17e100e038eb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."lodash.escape"."^3.0.0" =
    self.by-version."lodash.escape"."3.2.0";
  by-version."lodash.escape"."3.2.0" = self.buildNodePackage {
    name = "lodash.escape-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.escape/-/lodash.escape-3.2.0.tgz";
      name = "lodash.escape-3.2.0.tgz";
      sha1 = "995ee0dc18c1b48cc92effae71a10aab5b487698";
    };
    deps = {
      "lodash._root-3.0.1" = self.by-version."lodash._root"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarguments"."^3.0.0" =
    self.by-version."lodash.isarguments"."3.1.0";
  by-version."lodash.isarguments"."3.1.0" = self.buildNodePackage {
    name = "lodash.isarguments-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.isarguments/-/lodash.isarguments-3.1.0.tgz";
      name = "lodash.isarguments-3.1.0.tgz";
      sha1 = "2f573d85c6a24289ff00663b491c1d338ff3458a";
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
  by-spec."lodash.isempty"."^4.2.1" =
    self.by-version."lodash.isempty"."4.4.0";
  by-version."lodash.isempty"."4.4.0" = self.buildNodePackage {
    name = "lodash.isempty-4.4.0";
    version = "4.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.isempty/-/lodash.isempty-4.4.0.tgz";
      name = "lodash.isempty-4.4.0.tgz";
      sha1 = "6f86cbedd8be4ec987be9aaf33c9684db1b31e7e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isplainobject"."^4.0.4" =
    self.by-version."lodash.isplainobject"."4.0.6";
  by-version."lodash.isplainobject"."4.0.6" = self.buildNodePackage {
    name = "lodash.isplainobject-4.0.6";
    version = "4.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.isplainobject/-/lodash.isplainobject-4.0.6.tgz";
      name = "lodash.isplainobject-4.0.6.tgz";
      sha1 = "7c526a52d89b45c45cc690b88163be0497f550cb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isstring"."^4.0.1" =
    self.by-version."lodash.isstring"."4.0.1";
  by-version."lodash.isstring"."4.0.1" = self.buildNodePackage {
    name = "lodash.isstring-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.isstring/-/lodash.isstring-4.0.1.tgz";
      name = "lodash.isstring-4.0.1.tgz";
      sha1 = "d527dfb5456eca7cc9bb95d5daeaf88ba54a5451";
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
      "lodash.isarguments-3.1.0" = self.by-version."lodash.isarguments"."3.1.0";
      "lodash.isarray-3.0.4" = self.by-version."lodash.isarray"."3.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.mapvalues"."^4.4.0" =
    self.by-version."lodash.mapvalues"."4.6.0";
  by-version."lodash.mapvalues"."4.6.0" = self.buildNodePackage {
    name = "lodash.mapvalues-4.6.0";
    version = "4.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.mapvalues/-/lodash.mapvalues-4.6.0.tgz";
      name = "lodash.mapvalues-4.6.0.tgz";
      sha1 = "1bafa5005de9dd6f4f26668c30ca37230cc9689c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.pick"."^4.2.1" =
    self.by-version."lodash.pick"."4.4.0";
  by-version."lodash.pick"."4.4.0" = self.buildNodePackage {
    name = "lodash.pick-4.4.0";
    version = "4.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.pick/-/lodash.pick-4.4.0.tgz";
      name = "lodash.pick-4.4.0.tgz";
      sha1 = "52f05610fff9ded422611441ed1fc123a03001b3";
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
  by-spec."lodash.template"."^3.0.0" =
    self.by-version."lodash.template"."3.6.2";
  by-version."lodash.template"."3.6.2" = self.buildNodePackage {
    name = "lodash.template-3.6.2";
    version = "3.6.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.template/-/lodash.template-3.6.2.tgz";
      name = "lodash.template-3.6.2.tgz";
      sha1 = "f8cdecc6169a255be9098ae8b0c53d378931d14f";
    };
    deps = {
      "lodash._basecopy-3.0.1" = self.by-version."lodash._basecopy"."3.0.1";
      "lodash._basetostring-3.0.1" = self.by-version."lodash._basetostring"."3.0.1";
      "lodash._basevalues-3.0.0" = self.by-version."lodash._basevalues"."3.0.0";
      "lodash._isiterateecall-3.0.9" = self.by-version."lodash._isiterateecall"."3.0.9";
      "lodash._reinterpolate-3.0.0" = self.by-version."lodash._reinterpolate"."3.0.0";
      "lodash.escape-3.2.0" = self.by-version."lodash.escape"."3.2.0";
      "lodash.keys-3.1.2" = self.by-version."lodash.keys"."3.1.2";
      "lodash.restparam-3.6.1" = self.by-version."lodash.restparam"."3.6.1";
      "lodash.templatesettings-3.1.1" = self.by-version."lodash.templatesettings"."3.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.templatesettings"."^3.0.0" =
    self.by-version."lodash.templatesettings"."3.1.1";
  by-version."lodash.templatesettings"."3.1.1" = self.buildNodePackage {
    name = "lodash.templatesettings-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.templatesettings/-/lodash.templatesettings-3.1.1.tgz";
      name = "lodash.templatesettings-3.1.1.tgz";
      sha1 = "fb307844753b66b9f1afa54e262c745307dba8e5";
    };
    deps = {
      "lodash._reinterpolate-3.0.0" = self.by-version."lodash._reinterpolate"."3.0.0";
      "lodash.escape-3.2.0" = self.by-version."lodash.escape"."3.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lolex"."1.3.2" =
    self.by-version."lolex"."1.3.2";
  by-version."lolex"."1.3.2" = self.buildNodePackage {
    name = "lolex-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lolex/-/lolex-1.3.2.tgz";
      name = "lolex-1.3.2.tgz";
      sha1 = "7c3da62ffcb30f0f5a80a2566ca24e45d8a01f31";
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
  by-spec."loud-rejection"."^1.0.0" =
    self.by-version."loud-rejection"."1.6.0";
  by-version."loud-rejection"."1.6.0" = self.buildNodePackage {
    name = "loud-rejection-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/loud-rejection/-/loud-rejection-1.6.0.tgz";
      name = "loud-rejection-1.6.0.tgz";
      sha1 = "5b46f80147edee578870f086d04821cf998e551f";
    };
    deps = {
      "currently-unhandled-0.4.1" = self.by-version."currently-unhandled"."0.4.1";
      "signal-exit-3.0.1" = self.by-version."signal-exit"."3.0.1";
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
  by-spec."map-cache"."^0.2.0" =
    self.by-version."map-cache"."0.2.2";
  by-version."map-cache"."0.2.2" = self.buildNodePackage {
    name = "map-cache-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/map-cache/-/map-cache-0.2.2.tgz";
      name = "map-cache-0.2.2.tgz";
      sha1 = "c32abd0bd6525d9b051645bb4f26ac5dc98a0dbf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."map-obj"."^1.0.0" =
    self.by-version."map-obj"."1.0.1";
  by-version."map-obj"."1.0.1" = self.buildNodePackage {
    name = "map-obj-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/map-obj/-/map-obj-1.0.1.tgz";
      name = "map-obj-1.0.1.tgz";
      sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."map-obj"."^1.0.1" =
    self.by-version."map-obj"."1.0.1";
  by-spec."marked".">=0.3.3 >=0.3.6 <0.4.0" =
    self.by-version."marked"."0.3.6";
  by-version."marked"."0.3.6" = self.buildNodePackage {
    name = "marked-0.3.6";
    version = "0.3.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/marked/-/marked-0.3.6.tgz";
      name = "marked-0.3.6.tgz";
      sha1 = "b2c6c618fccece4ef86c4fc6cb8a7cbf5aeda8d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."marked"."^0.3.3" =
    self.by-version."marked"."0.3.6";
  by-spec."marked"."^0.3.6" =
    self.by-version."marked"."0.3.6";
  by-spec."marked-terminal"."^1.6.2" =
    self.by-version."marked-terminal"."1.7.0";
  by-version."marked-terminal"."1.7.0" = self.buildNodePackage {
    name = "marked-terminal-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/marked-terminal/-/marked-terminal-1.7.0.tgz";
      name = "marked-terminal-1.7.0.tgz";
      sha1 = "c8c460881c772c7604b64367007ee5f77f125904";
    };
    deps = {
      "cardinal-1.0.0" = self.by-version."cardinal"."1.0.0";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "cli-table-0.3.1" = self.by-version."cli-table"."0.3.1";
      "lodash.assign-4.2.0" = self.by-version."lodash.assign"."4.2.0";
      "node-emoji-1.4.1" = self.by-version."node-emoji"."1.4.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."marked"."0.3.6"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."meow"."^3.1.0" =
    self.by-version."meow"."3.7.0";
  by-version."meow"."3.7.0" = self.buildNodePackage {
    name = "meow-3.7.0";
    version = "3.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/meow/-/meow-3.7.0.tgz";
      name = "meow-3.7.0.tgz";
      sha1 = "72cb668b425228290abbfa856892587308a801fb";
    };
    deps = {
      "camelcase-keys-2.1.0" = self.by-version."camelcase-keys"."2.1.0";
      "decamelize-1.2.0" = self.by-version."decamelize"."1.2.0";
      "loud-rejection-1.6.0" = self.by-version."loud-rejection"."1.6.0";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "normalize-package-data-2.3.5" = self.by-version."normalize-package-data"."2.3.5";
      "object-assign-4.1.0" = self.by-version."object-assign"."4.1.0";
      "read-pkg-up-1.0.1" = self.by-version."read-pkg-up"."1.0.1";
      "redent-1.0.0" = self.by-version."redent"."1.0.0";
      "trim-newlines-1.0.0" = self.by-version."trim-newlines"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."meow"."^3.3.0" =
    self.by-version."meow"."3.7.0";
  by-spec."merge"."^1.2.0" =
    self.by-version."merge"."1.2.0";
  by-version."merge"."1.2.0" = self.buildNodePackage {
    name = "merge-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/merge/-/merge-1.2.0.tgz";
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
  by-spec."micromatch"."^2.3.7" =
    self.by-version."micromatch"."2.3.11";
  by-version."micromatch"."2.3.11" = self.buildNodePackage {
    name = "micromatch-2.3.11";
    version = "2.3.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/micromatch/-/micromatch-2.3.11.tgz";
      name = "micromatch-2.3.11.tgz";
      sha1 = "86677c97d1720b363431d04d0d15293bd38c1565";
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
      "kind-of-3.0.4" = self.by-version."kind-of"."3.0.4";
      "normalize-path-2.0.1" = self.by-version."normalize-path"."2.0.1";
      "object.omit-2.0.1" = self.by-version."object.omit"."2.0.1";
      "parse-glob-3.0.4" = self.by-version."parse-glob"."3.0.4";
      "regex-cache-0.4.3" = self.by-version."regex-cache"."0.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."^1.2.11" =
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
  by-spec."mime-db"."~1.24.0" =
    self.by-version."mime-db"."1.24.0";
  by-version."mime-db"."1.24.0" = self.buildNodePackage {
    name = "mime-db-1.24.0";
    version = "1.24.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-db/-/mime-db-1.24.0.tgz";
      name = "mime-db-1.24.0.tgz";
      sha1 = "e2d13f939f0016c6e4e9ad25a8652f126c467f0c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."^2.1.12" =
    self.by-version."mime-types"."2.1.12";
  by-version."mime-types"."2.1.12" = self.buildNodePackage {
    name = "mime-types-2.1.12";
    version = "2.1.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.12.tgz";
      name = "mime-types-2.1.12.tgz";
      sha1 = "152ba256777020dd4663f54c2e7bc26381e71729";
    };
    deps = {
      "mime-db-1.24.0" = self.by-version."mime-db"."1.24.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.12";
  by-spec."min-document"."^2.19.0" =
    self.by-version."min-document"."2.19.0";
  by-version."min-document"."2.19.0" = self.buildNodePackage {
    name = "min-document-2.19.0";
    version = "2.19.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/min-document/-/min-document-2.19.0.tgz";
      name = "min-document-2.19.0.tgz";
      sha1 = "7bd282e3f5842ed295bb748cdd9f1ffa2c824685";
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
  by-spec."minimatch"."0.3" =
    self.by-version."minimatch"."0.3.0";
  by-version."minimatch"."0.3.0" = self.buildNodePackage {
    name = "minimatch-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimatch/-/minimatch-0.3.0.tgz";
      name = "minimatch-0.3.0.tgz";
      sha1 = "275d8edaac4f1bb3326472089e7949c8394699dd";
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
  by-spec."minimatch"."2 || 3" =
    self.by-version."minimatch"."3.0.3";
  by-version."minimatch"."3.0.3" = self.buildNodePackage {
    name = "minimatch-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.3.tgz";
      name = "minimatch-3.0.3.tgz";
      sha1 = "2a4e4090b96b2db06a9d7df01055a62a77c9b774";
    };
    deps = {
      "brace-expansion-1.1.6" = self.by-version."brace-expansion"."1.1.6";
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
      "brace-expansion-1.1.6" = self.by-version."brace-expansion"."1.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^3.0.2" =
    self.by-version."minimatch"."3.0.3";
  by-spec."minimatch"."~0.2.11" =
    self.by-version."minimatch"."0.2.14";
  by-version."minimatch"."0.2.14" = self.buildNodePackage {
    name = "minimatch-0.2.14";
    version = "0.2.14";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimatch/-/minimatch-0.2.14.tgz";
      name = "minimatch-0.2.14.tgz";
      sha1 = "c74e780574f63c6f9a090e90efbe6ef53a6a756a";
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
  by-spec."minimist"."^1.1.3" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."^1.2.0" =
    self.by-version."minimist"."1.2.0";
  by-spec."mkdirp"."0.3.0" =
    self.by-version."mkdirp"."0.3.0";
  by-version."mkdirp"."0.3.0" = self.buildNodePackage {
    name = "mkdirp-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.3.0.tgz";
      name = "mkdirp-0.3.0.tgz";
      sha1 = "1bbf5ab1ba827af23575143490426455f481fe1e";
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
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.0.tgz";
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
  by-spec."mkdirp"."0.5.1" =
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
  by-spec."mkdirp"."^0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mocha"."^2.2.5" =
    self.by-version."mocha"."2.5.3";
  by-version."mocha"."2.5.3" = self.buildNodePackage {
    name = "mocha-2.5.3";
    version = "2.5.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/mocha/-/mocha-2.5.3.tgz";
      name = "mocha-2.5.3.tgz";
      sha1 = "161be5bdeb496771eb9b35745050b622b5aefc58";
    };
    deps = {
      "commander-2.3.0" = self.by-version."commander"."2.3.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "diff-1.4.0" = self.by-version."diff"."1.4.0";
      "escape-string-regexp-1.0.2" = self.by-version."escape-string-regexp"."1.0.2";
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "growl-1.9.2" = self.by-version."growl"."1.9.2";
      "jade-0.26.3" = self.by-version."jade"."0.26.3";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "supports-color-1.2.0" = self.by-version."supports-color"."1.2.0";
      "to-iso-string-0.0.2" = self.by-version."to-iso-string"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "mocha" = self.by-version."mocha"."2.5.3";
  by-spec."moment"."^2.10.3" =
    self.by-version."moment"."2.15.2";
  by-version."moment"."2.15.2" = self.buildNodePackage {
    name = "moment-2.15.2";
    version = "2.15.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/moment/-/moment-2.15.2.tgz";
      name = "moment-2.15.2.tgz";
      sha1 = "1bfdedf6a6e345f322fe956d5df5bd08a8ce84dc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "moment" = self.by-version."moment"."2.15.2";
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
  by-spec."multipipe"."^0.1.2" =
    self.by-version."multipipe"."0.1.2";
  by-version."multipipe"."0.1.2" = self.buildNodePackage {
    name = "multipipe-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/multipipe/-/multipipe-0.1.2.tgz";
      name = "multipipe-0.1.2.tgz";
      sha1 = "2a8f2ddf70eed564dff2d57f1e1a137d9f05078b";
    };
    deps = {
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."natives"."^1.1.0" =
    self.by-version."natives"."1.1.0";
  by-version."natives"."1.1.0" = self.buildNodePackage {
    name = "natives-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/natives/-/natives-1.1.0.tgz";
      name = "natives-1.1.0.tgz";
      sha1 = "e9ff841418a6b2ec7a495e939984f78f163e6e31";
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
  by-spec."node-emoji"."^1.4.1" =
    self.by-version."node-emoji"."1.4.1";
  by-version."node-emoji"."1.4.1" = self.buildNodePackage {
    name = "node-emoji-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-emoji/-/node-emoji-1.4.1.tgz";
      name = "node-emoji-1.4.1.tgz";
      sha1 = "c9fa0cf91094335bcb967a6f42b2305c15af2ebc";
    };
    deps = {
      "string.prototype.codepointat-0.2.0" = self.by-version."string.prototype.codepointat"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-notifier"."^4.2.3" =
    self.by-version."node-notifier"."4.6.1";
  by-version."node-notifier"."4.6.1" = self.buildNodePackage {
    name = "node-notifier-4.6.1";
    version = "4.6.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-notifier/-/node-notifier-4.6.1.tgz";
      name = "node-notifier-4.6.1.tgz";
      sha1 = "056d14244f3dcc1ceadfe68af9cff0c5473a33f3";
    };
    deps = {
      "cli-usage-0.1.4" = self.by-version."cli-usage"."0.1.4";
      "growly-1.3.0" = self.by-version."growly"."1.3.0";
      "lodash.clonedeep-3.0.2" = self.by-version."lodash.clonedeep"."3.0.2";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
      "shellwords-0.1.0" = self.by-version."shellwords"."0.1.0";
      "which-1.2.11" = self.by-version."which"."1.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "node-notifier" = self.by-version."node-notifier"."4.6.1";
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
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
      "validate-npm-package-license-3.0.1" = self.by-version."validate-npm-package-license"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize-package-data"."^2.3.4" =
    self.by-version."normalize-package-data"."2.3.5";
  by-spec."normalize-path"."^2.0.1" =
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
  "notr" = self.by-version."notr"."1.1.2";
  by-spec."nugget"."^2.0.0" =
    self.by-version."nugget"."2.0.1";
  by-version."nugget"."2.0.1" = self.buildNodePackage {
    name = "nugget-2.0.1";
    version = "2.0.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/nugget/-/nugget-2.0.1.tgz";
      name = "nugget-2.0.1.tgz";
      sha1 = "201095a487e1ad36081b3432fa3cada4f8d071b0";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "pretty-bytes-1.0.4" = self.by-version."pretty-bytes"."1.0.4";
      "progress-stream-1.2.0" = self.by-version."progress-stream"."1.2.0";
      "request-2.76.0" = self.by-version."request"."2.76.0";
      "single-line-log-1.1.2" = self.by-version."single-line-log"."1.1.2";
      "throttleit-0.0.2" = self.by-version."throttleit"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."number-is-nan"."^1.0.0" =
    self.by-version."number-is-nan"."1.0.1";
  by-version."number-is-nan"."1.0.1" = self.buildNodePackage {
    name = "number-is-nan-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.1.tgz";
      name = "number-is-nan-1.0.1.tgz";
      sha1 = "097b602b53422a522c1afb8790318336941a011d";
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
  by-spec."object-assign"."4.1.0" =
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
  by-spec."object-assign"."^3.0.0" =
    self.by-version."object-assign"."3.0.0";
  by-version."object-assign"."3.0.0" = self.buildNodePackage {
    name = "object-assign-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object-assign/-/object-assign-3.0.0.tgz";
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
    self.by-version."object-assign"."4.1.0";
  by-spec."object-keys"."~0.4.0" =
    self.by-version."object-keys"."0.4.0";
  by-version."object-keys"."0.4.0" = self.buildNodePackage {
    name = "object-keys-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object-keys/-/object-keys-0.4.0.tgz";
      name = "object-keys-0.4.0.tgz";
      sha1 = "28a6aae7428dd2c3a92f3d95f21335dd204e0336";
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
    self.by-version."object.omit"."2.0.1";
  by-version."object.omit"."2.0.1" = self.buildNodePackage {
    name = "object.omit-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object.omit/-/object.omit-2.0.1.tgz";
      name = "object.omit-2.0.1.tgz";
      sha1 = "1a9c744829f39dbb858c76ca3579ae2a54ebd1fa";
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
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.4.0";
  by-version."once"."1.4.0" = self.buildNodePackage {
    name = "once-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
      name = "once-1.4.0.tgz";
      sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
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
  by-spec."once"."~1.3.0" =
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
  by-spec."orchestrator"."^0.3.0" =
    self.by-version."orchestrator"."0.3.7";
  by-version."orchestrator"."0.3.7" = self.buildNodePackage {
    name = "orchestrator-0.3.7";
    version = "0.3.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/orchestrator/-/orchestrator-0.3.7.tgz";
      name = "orchestrator-0.3.7.tgz";
      sha1 = "c45064e22c5a2a7b99734f409a95ffedc7d3c3df";
    };
    deps = {
      "end-of-stream-0.1.5" = self.by-version."end-of-stream"."0.1.5";
      "sequencify-0.0.7" = self.by-version."sequencify"."0.0.7";
      "stream-consume-0.1.0" = self.by-version."stream-consume"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ordered-read-streams"."^0.1.0" =
    self.by-version."ordered-read-streams"."0.1.0";
  by-version."ordered-read-streams"."0.1.0" = self.buildNodePackage {
    name = "ordered-read-streams-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ordered-read-streams/-/ordered-read-streams-0.1.0.tgz";
      name = "ordered-read-streams-0.1.0.tgz";
      sha1 = "fd565a9af8eb4473ba69b6ed8a34352cb552f126";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-homedir"."^1.0.0" =
    self.by-version."os-homedir"."1.0.2";
  by-version."os-homedir"."1.0.2" = self.buildNodePackage {
    name = "os-homedir-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/os-homedir/-/os-homedir-1.0.2.tgz";
      name = "os-homedir-1.0.2.tgz";
      sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-homedir"."^1.0.1" =
    self.by-version."os-homedir"."1.0.2";
  by-spec."os-tmpdir"."^1.0.0" =
    self.by-version."os-tmpdir"."1.0.2";
  by-version."os-tmpdir"."1.0.2" = self.buildNodePackage {
    name = "os-tmpdir-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
      name = "os-tmpdir-1.0.2.tgz";
      sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
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
    self.by-version."os-tmpdir"."1.0.2";
  by-spec."osenv"."^0.1.3" =
    self.by-version."osenv"."0.1.3";
  by-version."osenv"."0.1.3" = self.buildNodePackage {
    name = "osenv-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/osenv/-/osenv-0.1.3.tgz";
      name = "osenv-0.1.3.tgz";
      sha1 = "83cf05c6d6458fc4d5ac6362ea325d92f2754217";
    };
    deps = {
      "os-homedir-1.0.2" = self.by-version."os-homedir"."1.0.2";
      "os-tmpdir-1.0.2" = self.by-version."os-tmpdir"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-filepath"."^1.0.1" =
    self.by-version."parse-filepath"."1.0.1";
  by-version."parse-filepath"."1.0.1" = self.buildNodePackage {
    name = "parse-filepath-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/parse-filepath/-/parse-filepath-1.0.1.tgz";
      name = "parse-filepath-1.0.1.tgz";
      sha1 = "159d6155d43904d16c10ef698911da1e91969b73";
    };
    deps = {
      "is-absolute-0.2.6" = self.by-version."is-absolute"."0.2.6";
      "map-cache-0.2.2" = self.by-version."map-cache"."0.2.2";
      "path-root-0.1.1" = self.by-version."path-root"."0.1.1";
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
  by-spec."path-exists"."^2.1.0" =
    self.by-version."path-exists"."2.1.0";
  by-spec."path-is-absolute"."^1.0.0" =
    self.by-version."path-is-absolute"."1.0.1";
  by-version."path-is-absolute"."1.0.1" = self.buildNodePackage {
    name = "path-is-absolute-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
      name = "path-is-absolute-1.0.1.tgz";
      sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-root"."^0.1.1" =
    self.by-version."path-root"."0.1.1";
  by-version."path-root"."0.1.1" = self.buildNodePackage {
    name = "path-root-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-root/-/path-root-0.1.1.tgz";
      name = "path-root-0.1.1.tgz";
      sha1 = "9a4a6814cac1c0cd73360a95f32083c8ea4745b7";
    };
    deps = {
      "path-root-regex-0.1.2" = self.by-version."path-root-regex"."0.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-root-regex"."^0.1.0" =
    self.by-version."path-root-regex"."0.1.2";
  by-version."path-root-regex"."0.1.2" = self.buildNodePackage {
    name = "path-root-regex-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-root-regex/-/path-root-regex-0.1.2.tgz";
      name = "path-root-regex-0.1.2.tgz";
      sha1 = "bfccdc8df5b12dc52c8b43ec38d18d72c04ba96d";
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
      "graceful-fs-4.1.9" = self.by-version."graceful-fs"."4.1.9";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pend"."~1.2.0" =
    self.by-version."pend"."1.2.0";
  by-version."pend"."1.2.0" = self.buildNodePackage {
    name = "pend-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pend/-/pend-1.2.0.tgz";
      name = "pend-1.2.0.tgz";
      sha1 = "7a57eb550a6783f9115331fcf4663d5c8e007a50";
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
  by-spec."pretty-bytes"."^1.0.2" =
    self.by-version."pretty-bytes"."1.0.4";
  by-version."pretty-bytes"."1.0.4" = self.buildNodePackage {
    name = "pretty-bytes-1.0.4";
    version = "1.0.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/pretty-bytes/-/pretty-bytes-1.0.4.tgz";
      name = "pretty-bytes-1.0.4.tgz";
      sha1 = "0a22e8210609ad35542f8c8d5d2159aff0751c84";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "meow-3.7.0" = self.by-version."meow"."3.7.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pretty-hrtime"."^1.0.0" =
    self.by-version."pretty-hrtime"."1.0.2";
  by-version."pretty-hrtime"."1.0.2" = self.buildNodePackage {
    name = "pretty-hrtime-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pretty-hrtime/-/pretty-hrtime-1.0.2.tgz";
      name = "pretty-hrtime-1.0.2.tgz";
      sha1 = "70ca96f4d0628a443b918758f79416a9a7bc9fa8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."progress-stream"."^1.1.0" =
    self.by-version."progress-stream"."1.2.0";
  by-version."progress-stream"."1.2.0" = self.buildNodePackage {
    name = "progress-stream-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/progress-stream/-/progress-stream-1.2.0.tgz";
      name = "progress-stream-1.2.0.tgz";
      sha1 = "2cd3cfea33ba3a89c9c121ec3347abe9ab125f77";
    };
    deps = {
      "through2-0.2.3" = self.by-version."through2"."0.2.3";
      "speedometer-0.1.4" = self.by-version."speedometer"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."promise"."^7.1.1" =
    self.by-version."promise"."7.1.1";
  by-version."promise"."7.1.1" = self.buildNodePackage {
    name = "promise-7.1.1";
    version = "7.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/promise/-/promise-7.1.1.tgz";
      name = "promise-7.1.1.tgz";
      sha1 = "489654c692616b8aa55b0724fa809bb7db49c5bf";
    };
    deps = {
      "asap-2.0.5" = self.by-version."asap"."2.0.5";
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
  by-spec."punycode".">=0.2.0" =
    self.by-version."punycode"."2.0.1";
  by-version."punycode"."2.0.1" = self.buildNodePackage {
    name = "punycode-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/punycode/-/punycode-2.0.1.tgz";
      name = "punycode-2.0.1.tgz";
      sha1 = "3f142fd8e6ef4e9ce24acbf7ba869ff9b00d2c2b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."punycode"."^1.4.1" =
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
  "q" = self.by-version."q"."1.4.1";
  by-spec."qs"."~6.3.0" =
    self.by-version."qs"."6.3.0";
  by-version."qs"."6.3.0" = self.buildNodePackage {
    name = "qs-6.3.0";
    version = "6.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/qs/-/qs-6.3.0.tgz";
      name = "qs-6.3.0.tgz";
      sha1 = "f403b264f23bc01228c74131b407f18d5ea5d442";
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
      "kind-of-3.0.4" = self.by-version."kind-of"."3.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."^1.1.2" =
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
  by-spec."readable-stream".">=1.0.33-1 <1.1.0-0" =
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
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."~1.1.9" =
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
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
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
  by-spec."rechoir"."^0.6.2" =
    self.by-version."rechoir"."0.6.2";
  by-version."rechoir"."0.6.2" = self.buildNodePackage {
    name = "rechoir-0.6.2";
    version = "0.6.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/rechoir/-/rechoir-0.6.2.tgz";
      name = "rechoir-0.6.2.tgz";
      sha1 = "85204b54dba82d5742e28c96756ef43af50e3384";
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
  by-spec."redent"."^1.0.0" =
    self.by-version."redent"."1.0.0";
  by-version."redent"."1.0.0" = self.buildNodePackage {
    name = "redent-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/redent/-/redent-1.0.0.tgz";
      name = "redent-1.0.0.tgz";
      sha1 = "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde";
    };
    deps = {
      "indent-string-2.1.0" = self.by-version."indent-string"."2.1.0";
      "strip-indent-1.0.1" = self.by-version."strip-indent"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redeyed"."~1.0.0" =
    self.by-version."redeyed"."1.0.1";
  by-version."redeyed"."1.0.1" = self.buildNodePackage {
    name = "redeyed-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/redeyed/-/redeyed-1.0.1.tgz";
      name = "redeyed-1.0.1.tgz";
      sha1 = "e96c193b40c0816b00aec842698e61185e55498a";
    };
    deps = {
      "esprima-3.0.0" = self.by-version."esprima"."3.0.0";
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
    self.by-version."repeat-string"."1.6.1";
  by-version."repeat-string"."1.6.1" = self.buildNodePackage {
    name = "repeat-string-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeat-string/-/repeat-string-1.6.1.tgz";
      name = "repeat-string-1.6.1.tgz";
      sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeating"."^2.0.0" =
    self.by-version."repeating"."2.0.1";
  by-version."repeating"."2.0.1" = self.buildNodePackage {
    name = "repeating-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeating/-/repeating-2.0.1.tgz";
      name = "repeating-2.0.1.tgz";
      sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
    };
    deps = {
      "is-finite-1.0.2" = self.by-version."is-finite"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."replace-ext"."0.0.1" =
    self.by-version."replace-ext"."0.0.1";
  by-version."replace-ext"."0.0.1" = self.buildNodePackage {
    name = "replace-ext-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/replace-ext/-/replace-ext-0.0.1.tgz";
      name = "replace-ext-0.0.1.tgz";
      sha1 = "29bbd92078a739f0bcce2b4ee41e837953522924";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."^2.45.0" =
    self.by-version."request"."2.76.0";
  by-version."request"."2.76.0" = self.buildNodePackage {
    name = "request-2.76.0";
    version = "2.76.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/request/-/request-2.76.0.tgz";
      name = "request-2.76.0.tgz";
      sha1 = "be44505afef70360a0436955106be3945d95560e";
    };
    deps = {
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "aws4-1.5.0" = self.by-version."aws4"."1.5.0";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-2.1.1" = self.by-version."form-data"."2.1.1";
      "har-validator-2.0.6" = self.by-version."har-validator"."2.0.6";
      "hawk-3.1.3" = self.by-version."hawk"."3.1.3";
      "http-signature-1.1.1" = self.by-version."http-signature"."1.1.1";
      "is-typedarray-1.0.0" = self.by-version."is-typedarray"."1.0.0";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.12" = self.by-version."mime-types"."2.1.12";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "oauth-sign-0.8.2" = self.by-version."oauth-sign"."0.8.2";
      "qs-6.3.0" = self.by-version."qs"."6.3.0";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "tough-cookie-2.3.2" = self.by-version."tough-cookie"."2.3.2";
      "tunnel-agent-0.4.3" = self.by-version."tunnel-agent"."0.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."^2.58.0" =
    self.by-version."request"."2.76.0";
  by-spec."request"."^2.67.0" =
    self.by-version."request"."2.76.0";
  "request" = self.by-version."request"."2.76.0";
  by-spec."resolve"."1.x" =
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
  by-spec."resolve"."^1.1.6" =
    self.by-version."resolve"."1.1.7";
  by-spec."resolve"."^1.1.7" =
    self.by-version."resolve"."1.1.7";
  by-spec."resolve-dir"."^0.1.0" =
    self.by-version."resolve-dir"."0.1.1";
  by-version."resolve-dir"."0.1.1" = self.buildNodePackage {
    name = "resolve-dir-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/resolve-dir/-/resolve-dir-0.1.1.tgz";
      name = "resolve-dir-0.1.1.tgz";
      sha1 = "b219259a5602fac5c5c496ad894a6e8cc430261e";
    };
    deps = {
      "expand-tilde-1.2.2" = self.by-version."expand-tilde"."1.2.2";
      "global-modules-0.2.3" = self.by-version."global-modules"."0.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."resolve-url"."~0.2.1" =
    self.by-version."resolve-url"."0.2.1";
  by-version."resolve-url"."0.2.1" = self.buildNodePackage {
    name = "resolve-url-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/resolve-url/-/resolve-url-0.2.1.tgz";
      name = "resolve-url-0.2.1.tgz";
      sha1 = "2c637fe77c893afd2a663fe21aa9080068e2052a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."rimraf"."^2.2.8" =
    self.by-version."rimraf"."2.5.4";
  by-version."rimraf"."2.5.4" = self.buildNodePackage {
    name = "rimraf-2.5.4";
    version = "2.5.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rimraf/-/rimraf-2.5.4.tgz";
      name = "rimraf-2.5.4.tgz";
      sha1 = "96800093cbf1a0c86bd95b4625467535c29dfa04";
    };
    deps = {
      "glob-7.1.1" = self.by-version."glob"."7.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."^2.4.2" =
    self.by-version."rimraf"."2.5.4";
  "rimraf" = self.by-version."rimraf"."2.5.4";
  by-spec."samsam"."1.1.2" =
    self.by-version."samsam"."1.1.2";
  by-version."samsam"."1.1.2" = self.buildNodePackage {
    name = "samsam-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/samsam/-/samsam-1.1.2.tgz";
      name = "samsam-1.1.2.tgz";
      sha1 = "bec11fdc83a9fda063401210e40176c3024d1567";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."samsam"."~1.1" =
    self.by-version."samsam"."1.1.3";
  by-version."samsam"."1.1.3" = self.buildNodePackage {
    name = "samsam-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/samsam/-/samsam-1.1.3.tgz";
      name = "samsam-1.1.3.tgz";
      sha1 = "9f5087419b4d091f232571e7fa52e90b0f552621";
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
    self.by-version."semver"."5.3.0";
  by-version."semver"."5.3.0" = self.buildNodePackage {
    name = "semver-5.3.0";
    version = "5.3.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/semver/-/semver-5.3.0.tgz";
      name = "semver-5.3.0.tgz";
      sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."^4.1.0" =
    self.by-version."semver"."4.3.6";
  by-version."semver"."4.3.6" = self.buildNodePackage {
    name = "semver-4.3.6";
    version = "4.3.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/semver/-/semver-4.3.6.tgz";
      name = "semver-4.3.6.tgz";
      sha1 = "300bc6e0e86374f7ba61068b5b1ecd57fc6532da";
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
    self.by-version."semver"."5.3.0";
  by-spec."semver"."^5.3.0" =
    self.by-version."semver"."5.3.0";
  by-spec."sequencify"."~0.0.7" =
    self.by-version."sequencify"."0.0.7";
  by-version."sequencify"."0.0.7" = self.buildNodePackage {
    name = "sequencify-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sequencify/-/sequencify-0.0.7.tgz";
      name = "sequencify-0.0.7.tgz";
      sha1 = "90cff19d02e07027fd767f5ead3e7b95d1e7380c";
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
  by-spec."signal-exit"."^3.0.0" =
    self.by-version."signal-exit"."3.0.1";
  by-version."signal-exit"."3.0.1" = self.buildNodePackage {
    name = "signal-exit-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.1.tgz";
      name = "signal-exit-3.0.1.tgz";
      sha1 = "5a4c884992b63a7acd9badb7894c3ee9cfccad81";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."single-line-log"."^1.1.2" =
    self.by-version."single-line-log"."1.1.2";
  by-version."single-line-log"."1.1.2" = self.buildNodePackage {
    name = "single-line-log-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/single-line-log/-/single-line-log-1.1.2.tgz";
      name = "single-line-log-1.1.2.tgz";
      sha1 = "c2f83f273a3e1a16edb0995661da0ed5ef033364";
    };
    deps = {
      "string-width-1.0.2" = self.by-version."string-width"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sinon".">=1.4.0 <2" =
    self.by-version."sinon"."1.17.6";
  by-version."sinon"."1.17.6" = self.buildNodePackage {
    name = "sinon-1.17.6";
    version = "1.17.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sinon/-/sinon-1.17.6.tgz";
      name = "sinon-1.17.6.tgz";
      sha1 = "a43116db59577c8296356afee13fafc2332e58e1";
    };
    deps = {
      "formatio-1.1.1" = self.by-version."formatio"."1.1.1";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "lolex-1.3.2" = self.by-version."lolex"."1.3.2";
      "samsam-1.1.2" = self.by-version."samsam"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sinon"."^1.15.4" =
    self.by-version."sinon"."1.17.6";
  "sinon" = self.by-version."sinon"."1.17.6";
  by-spec."sinon-chai"."^2.8.0" =
    self.by-version."sinon-chai"."2.8.0";
  by-version."sinon-chai"."2.8.0" = self.buildNodePackage {
    name = "sinon-chai-2.8.0";
    version = "2.8.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sinon-chai/-/sinon-chai-2.8.0.tgz";
      name = "sinon-chai-2.8.0.tgz";
      sha1 = "432a9bbfd51a6fc00798f4d2526a829c060687ac";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."chai"."3.5.0"
      self.by-version."sinon"."1.17.6"];
    os = [ ];
    cpu = [ ];
  };
  "sinon-chai" = self.by-version."sinon-chai"."2.8.0";
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
  by-spec."source-map"."0.X" =
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
  by-spec."source-map"."^0.1.38" =
    self.by-version."source-map"."0.1.43";
  by-version."source-map"."0.1.43" = self.buildNodePackage {
    name = "source-map-0.1.43";
    version = "0.1.43";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map/-/source-map-0.1.43.tgz";
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
  by-spec."source-map"."^0.1.39" =
    self.by-version."source-map"."0.1.43";
  by-spec."source-map"."^0.5.1" =
    self.by-version."source-map"."0.5.6";
  by-spec."source-map"."^0.5.3" =
    self.by-version."source-map"."0.5.6";
  by-spec."source-map"."~0.5.1" =
    self.by-version."source-map"."0.5.6";
  by-spec."source-map-resolve"."^0.3.0" =
    self.by-version."source-map-resolve"."0.3.1";
  by-version."source-map-resolve"."0.3.1" = self.buildNodePackage {
    name = "source-map-resolve-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map-resolve/-/source-map-resolve-0.3.1.tgz";
      name = "source-map-resolve-0.3.1.tgz";
      sha1 = "610f6122a445b8dd51535a2a71b783dfc1248761";
    };
    deps = {
      "source-map-url-0.3.0" = self.by-version."source-map-url"."0.3.0";
      "atob-1.1.3" = self.by-version."atob"."1.1.3";
      "urix-0.1.0" = self.by-version."urix"."0.1.0";
      "resolve-url-0.2.1" = self.by-version."resolve-url"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map-url"."~0.3.0" =
    self.by-version."source-map-url"."0.3.0";
  by-version."source-map-url"."0.3.0" = self.buildNodePackage {
    name = "source-map-url-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map-url/-/source-map-url-0.3.0.tgz";
      name = "source-map-url-0.3.0.tgz";
      sha1 = "7ecaf13b57bcd09da8a40c5d269db33799d4aaf9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sparkles"."^1.0.0" =
    self.by-version."sparkles"."1.0.0";
  by-version."sparkles"."1.0.0" = self.buildNodePackage {
    name = "sparkles-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sparkles/-/sparkles-1.0.0.tgz";
      name = "sparkles-1.0.0.tgz";
      sha1 = "1acbbfb592436d10bbe8f785b7cc6f82815012c3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
      "spdx-license-ids-1.2.2" = self.by-version."spdx-license-ids"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-expression-parse"."~1.0.0" =
    self.by-version."spdx-expression-parse"."1.0.4";
  by-version."spdx-expression-parse"."1.0.4" = self.buildNodePackage {
    name = "spdx-expression-parse-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-1.0.4.tgz";
      name = "spdx-expression-parse-1.0.4.tgz";
      sha1 = "9bdf2f20e1f40ed447fbe273266191fced51626c";
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
    self.by-version."spdx-license-ids"."1.2.2";
  by-version."spdx-license-ids"."1.2.2" = self.buildNodePackage {
    name = "spdx-license-ids-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-1.2.2.tgz";
      name = "spdx-license-ids-1.2.2.tgz";
      sha1 = "c9df7a3424594ade6bd11900d596696dc06bac57";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."speedometer"."~0.1.2" =
    self.by-version."speedometer"."0.1.4";
  by-version."speedometer"."0.1.4" = self.buildNodePackage {
    name = "speedometer-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/speedometer/-/speedometer-0.1.4.tgz";
      name = "speedometer-0.1.4.tgz";
      sha1 = "9876dbd2a169d3115402d48e6ea6329c8816a50d";
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
    self.by-version."sshpk"."1.10.1";
  by-version."sshpk"."1.10.1" = self.buildNodePackage {
    name = "sshpk-1.10.1";
    version = "1.10.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/sshpk/-/sshpk-1.10.1.tgz";
      name = "sshpk-1.10.1.tgz";
      sha1 = "30e1a5d329244974a1af61511339d595af6638b0";
    };
    deps = {
      "asn1-0.2.3" = self.by-version."asn1"."0.2.3";
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
      "dashdash-1.14.0" = self.by-version."dashdash"."1.14.0";
      "getpass-0.1.6" = self.by-version."getpass"."0.1.6";
    };
    optionalDependencies = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
      "tweetnacl-0.14.3" = self.by-version."tweetnacl"."0.14.3";
      "jodid25519-1.0.2" = self.by-version."jodid25519"."1.0.2";
      "ecc-jsbn-0.1.1" = self.by-version."ecc-jsbn"."0.1.1";
      "bcrypt-pbkdf-1.0.0" = self.by-version."bcrypt-pbkdf"."1.0.0";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-consume"."~0.1.0" =
    self.by-version."stream-consume"."0.1.0";
  by-version."stream-consume"."0.1.0" = self.buildNodePackage {
    name = "stream-consume-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stream-consume/-/stream-consume-0.1.0.tgz";
      name = "stream-consume-0.1.0.tgz";
      sha1 = "a41ead1a6d6081ceb79f65b061901b6d8f3d1d0f";
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
    self.by-version."string-width"."1.0.2";
  by-version."string-width"."1.0.2" = self.buildNodePackage {
    name = "string-width-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz";
      name = "string-width-1.0.2.tgz";
      sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
    };
    deps = {
      "code-point-at-1.0.1" = self.by-version."code-point-at"."1.0.1";
      "is-fullwidth-code-point-1.0.0" = self.by-version."is-fullwidth-code-point"."1.0.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string.prototype.codepointat"."^0.2.0" =
    self.by-version."string.prototype.codepointat"."0.2.0";
  by-version."string.prototype.codepointat"."0.2.0" = self.buildNodePackage {
    name = "string.prototype.codepointat-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/string.prototype.codepointat/-/string.prototype.codepointat-0.2.0.tgz";
      name = "string.prototype.codepointat-0.2.0.tgz";
      sha1 = "6b26e9bd3afcaa7be3b4269b526de1b82000ac78";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~0.10.x" =
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
  by-spec."strip-bom"."2.X" =
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
  by-spec."strip-bom"."^1.0.0" =
    self.by-version."strip-bom"."1.0.0";
  by-version."strip-bom"."1.0.0" = self.buildNodePackage {
    name = "strip-bom-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-bom/-/strip-bom-1.0.0.tgz";
      name = "strip-bom-1.0.0.tgz";
      sha1 = "85b8862f3844b5a6d5ec8467a93598173a36f794";
    };
    deps = {
      "first-chunk-stream-1.0.0" = self.by-version."first-chunk-stream"."1.0.0";
      "is-utf8-0.2.1" = self.by-version."is-utf8"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-bom"."^2.0.0" =
    self.by-version."strip-bom"."2.0.0";
  by-spec."strip-indent"."^1.0.1" =
    self.by-version."strip-indent"."1.0.1";
  by-version."strip-indent"."1.0.1" = self.buildNodePackage {
    name = "strip-indent-1.0.1";
    version = "1.0.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-indent/-/strip-indent-1.0.1.tgz";
      name = "strip-indent-1.0.1.tgz";
      sha1 = "0c7962a6adefa7bbd4ac366460a638552ae1a0a2";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
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
  by-spec."sumchecker"."^1.2.0" =
    self.by-version."sumchecker"."1.2.0";
  by-version."sumchecker"."1.2.0" = self.buildNodePackage {
    name = "sumchecker-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sumchecker/-/sumchecker-1.2.0.tgz";
      name = "sumchecker-1.2.0.tgz";
      sha1 = "8c79282f6b5d74e7fbcfb49505e50d096c63f38d";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "es6-promise-3.3.1" = self.by-version."es6-promise"."3.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."1.2.0" =
    self.by-version."supports-color"."1.2.0";
  by-version."supports-color"."1.2.0" = self.buildNodePackage {
    name = "supports-color-1.2.0";
    version = "1.2.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/supports-color/-/supports-color-1.2.0.tgz";
      name = "supports-color-1.2.0.tgz";
      sha1 = "ff1ed1e61169d06b3cf2d588e188b18d8847e17e";
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
  by-spec."throttleit"."0.0.2" =
    self.by-version."throttleit"."0.0.2";
  by-version."throttleit"."0.0.2" = self.buildNodePackage {
    name = "throttleit-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/throttleit/-/throttleit-0.0.2.tgz";
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
  by-spec."through2"."2.X" =
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
  by-spec."through2"."^0.6.1" =
    self.by-version."through2"."0.6.5";
  by-version."through2"."0.6.5" = self.buildNodePackage {
    name = "through2-0.6.5";
    version = "0.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/through2/-/through2-0.6.5.tgz";
      name = "through2-0.6.5.tgz";
      sha1 = "41ab9c67b29d57209071410e1d7a7a968cd3ad48";
    };
    deps = {
      "readable-stream-1.0.34" = self.by-version."readable-stream"."1.0.34";
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
  by-spec."through2"."^2.0.0" =
    self.by-version."through2"."2.0.1";
  by-spec."through2"."~0.2.3" =
    self.by-version."through2"."0.2.3";
  by-version."through2"."0.2.3" = self.buildNodePackage {
    name = "through2-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/through2/-/through2-0.2.3.tgz";
      name = "through2-0.2.3.tgz";
      sha1 = "eb3284da4ea311b6cc8ace3653748a52abf25a3f";
    };
    deps = {
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
      "xtend-2.1.2" = self.by-version."xtend"."2.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tildify"."^1.0.0" =
    self.by-version."tildify"."1.2.0";
  by-version."tildify"."1.2.0" = self.buildNodePackage {
    name = "tildify-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tildify/-/tildify-1.2.0.tgz";
      name = "tildify-1.2.0.tgz";
      sha1 = "dcec03f55dca9b7aa3e5b04f21817eb56e63588a";
    };
    deps = {
      "os-homedir-1.0.2" = self.by-version."os-homedir"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."time-stamp"."^1.0.0" =
    self.by-version."time-stamp"."1.0.1";
  by-version."time-stamp"."1.0.1" = self.buildNodePackage {
    name = "time-stamp-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/time-stamp/-/time-stamp-1.0.1.tgz";
      name = "time-stamp-1.0.1.tgz";
      sha1 = "9f4bd23559c9365966f3302dbba2b07c6b99b151";
    };
    deps = {
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
      "os-tmpdir-1.0.2" = self.by-version."os-tmpdir"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "tmp" = self.by-version."tmp"."0.0.28";
  by-spec."to-iso-string"."0.0.2" =
    self.by-version."to-iso-string"."0.0.2";
  by-version."to-iso-string"."0.0.2" = self.buildNodePackage {
    name = "to-iso-string-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/to-iso-string/-/to-iso-string-0.0.2.tgz";
      name = "to-iso-string-0.0.2.tgz";
      sha1 = "4dc19e664dfccbe25bd8db508b00c6da158255d1";
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
    self.by-version."tough-cookie"."2.3.2";
  by-version."tough-cookie"."2.3.2" = self.buildNodePackage {
    name = "tough-cookie-2.3.2";
    version = "2.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.3.2.tgz";
      name = "tough-cookie-2.3.2.tgz";
      sha1 = "f081f76e4c85720e6c37a5faced737150d84072a";
    };
    deps = {
      "punycode-1.4.1" = self.by-version."punycode"."1.4.1";
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
      "punycode-2.0.1" = self.by-version."punycode"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie"."~2.3.0" =
    self.by-version."tough-cookie"."2.3.2";
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
  "trifl" = self.by-version."trifl"."0.0.10";
  by-spec."trim-newlines"."^1.0.0" =
    self.by-version."trim-newlines"."1.0.0";
  by-version."trim-newlines"."1.0.0" = self.buildNodePackage {
    name = "trim-newlines-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/trim-newlines/-/trim-newlines-1.0.0.tgz";
      name = "trim-newlines-1.0.0.tgz";
      sha1 = "5887966bb582a4503a41eb524f7d35011815a613";
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
  by-spec."tweetnacl"."^0.14.3" =
    self.by-version."tweetnacl"."0.14.3";
  by-version."tweetnacl"."0.14.3" = self.buildNodePackage {
    name = "tweetnacl-0.14.3";
    version = "0.14.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.14.3.tgz";
      name = "tweetnacl-0.14.3.tgz";
      sha1 = "3da382f670f25ded78d7b3d1792119bca0b7132d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tweetnacl"."~0.14.0" =
    self.by-version."tweetnacl"."0.14.3";
  by-spec."type-detect"."0.1.1" =
    self.by-version."type-detect"."0.1.1";
  by-version."type-detect"."0.1.1" = self.buildNodePackage {
    name = "type-detect-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/type-detect/-/type-detect-0.1.1.tgz";
      name = "type-detect-0.1.1.tgz";
      sha1 = "0ba5ec2a885640e470ea4e8505971900dac58822";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-detect"."^1.0.0" =
    self.by-version."type-detect"."1.0.0";
  by-version."type-detect"."1.0.0" = self.buildNodePackage {
    name = "type-detect-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/type-detect/-/type-detect-1.0.0.tgz";
      name = "type-detect-1.0.0.tgz";
      sha1 = "762217cc06db258ec48908a1298e8b95121e8ea2";
    };
    deps = {
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
  by-spec."uglify-js"."^2.6.0" =
    self.by-version."uglify-js"."2.7.4";
  by-version."uglify-js"."2.7.4" = self.buildNodePackage {
    name = "uglify-js-2.7.4";
    version = "2.7.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/uglify-js/-/uglify-js-2.7.4.tgz";
      name = "uglify-js-2.7.4.tgz";
      sha1 = "a295a0de12b6a650c031c40deb0dc40b14568bd2";
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
  by-spec."unc-path-regex"."^0.1.0" =
    self.by-version."unc-path-regex"."0.1.2";
  by-version."unc-path-regex"."0.1.2" = self.buildNodePackage {
    name = "unc-path-regex-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/unc-path-regex/-/unc-path-regex-0.1.2.tgz";
      name = "unc-path-regex-0.1.2.tgz";
      sha1 = "e73dd3d7b0d7c5ed86fbac6b0ae7d8c6a69d50fa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."unique-stream"."^1.0.0" =
    self.by-version."unique-stream"."1.0.0";
  by-version."unique-stream"."1.0.0" = self.buildNodePackage {
    name = "unique-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/unique-stream/-/unique-stream-1.0.0.tgz";
      name = "unique-stream-1.0.0.tgz";
      sha1 = "d59a4a75427447d9aa6c91e70263f8d26a4b104b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."urix"."^0.1.0" =
    self.by-version."urix"."0.1.0";
  by-version."urix"."0.1.0" = self.buildNodePackage {
    name = "urix-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/urix/-/urix-0.1.0.tgz";
      name = "urix-0.1.0.tgz";
      sha1 = "da937f7a62e21fec1fd18d49b35c2935067a6c72";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."urix"."~0.1.0" =
    self.by-version."urix"."0.1.0";
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
  "url-regexp" = self.by-version."url-regexp"."1.0.2";
  by-spec."user-home"."^1.1.1" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = self.buildNodePackage {
    name = "user-home-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
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
  by-spec."util".">=0.10.3 <1" =
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
  by-spec."v8flags"."^2.0.2" =
    self.by-version."v8flags"."2.0.11";
  by-version."v8flags"."2.0.11" = self.buildNodePackage {
    name = "v8flags-2.0.11";
    version = "2.0.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/v8flags/-/v8flags-2.0.11.tgz";
      name = "v8flags-2.0.11.tgz";
      sha1 = "bca8f30f0d6d60612cc2c00641e6962d42ae6881";
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
      "spdx-expression-parse-1.0.4" = self.by-version."spdx-expression-parse"."1.0.4";
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
  by-spec."vinyl"."1.X" =
    self.by-version."vinyl"."1.2.0";
  by-version."vinyl"."1.2.0" = self.buildNodePackage {
    name = "vinyl-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/vinyl/-/vinyl-1.2.0.tgz";
      name = "vinyl-1.2.0.tgz";
      sha1 = "5c88036cf565e5df05558bfc911f8656df218884";
    };
    deps = {
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "clone-stats-0.0.1" = self.by-version."clone-stats"."0.0.1";
      "replace-ext-0.0.1" = self.by-version."replace-ext"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vinyl"."^0.4.0" =
    self.by-version."vinyl"."0.4.6";
  by-version."vinyl"."0.4.6" = self.buildNodePackage {
    name = "vinyl-0.4.6";
    version = "0.4.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/vinyl/-/vinyl-0.4.6.tgz";
      name = "vinyl-0.4.6.tgz";
      sha1 = "2f356c87a550a255461f36bbeb2a5ba8bf784847";
    };
    deps = {
      "clone-0.2.0" = self.by-version."clone"."0.2.0";
      "clone-stats-0.0.1" = self.by-version."clone-stats"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vinyl"."^0.5.0" =
    self.by-version."vinyl"."0.5.3";
  by-version."vinyl"."0.5.3" = self.buildNodePackage {
    name = "vinyl-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/vinyl/-/vinyl-0.5.3.tgz";
      name = "vinyl-0.5.3.tgz";
      sha1 = "b0455b38fc5e0cf30d4325132e461970c2091cde";
    };
    deps = {
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "clone-stats-0.0.1" = self.by-version."clone-stats"."0.0.1";
      "replace-ext-0.0.1" = self.by-version."replace-ext"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vinyl-fs"."^0.3.0" =
    self.by-version."vinyl-fs"."0.3.14";
  by-version."vinyl-fs"."0.3.14" = self.buildNodePackage {
    name = "vinyl-fs-0.3.14";
    version = "0.3.14";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/vinyl-fs/-/vinyl-fs-0.3.14.tgz";
      name = "vinyl-fs-0.3.14.tgz";
      sha1 = "9a6851ce1cac1c1cea5fe86c0931d620c2cfa9e6";
    };
    deps = {
      "defaults-1.0.3" = self.by-version."defaults"."1.0.3";
      "glob-stream-3.1.18" = self.by-version."glob-stream"."3.1.18";
      "glob-watcher-0.0.6" = self.by-version."glob-watcher"."0.0.6";
      "graceful-fs-3.0.11" = self.by-version."graceful-fs"."3.0.11";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "strip-bom-1.0.0" = self.by-version."strip-bom"."1.0.0";
      "through2-0.6.5" = self.by-version."through2"."0.6.5";
      "vinyl-0.4.6" = self.by-version."vinyl"."0.4.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vinyl-sourcemaps-apply"."^0.1.4" =
    self.by-version."vinyl-sourcemaps-apply"."0.1.4";
  by-version."vinyl-sourcemaps-apply"."0.1.4" = self.buildNodePackage {
    name = "vinyl-sourcemaps-apply-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/vinyl-sourcemaps-apply/-/vinyl-sourcemaps-apply-0.1.4.tgz";
      name = "vinyl-sourcemaps-apply-0.1.4.tgz";
      sha1 = "c5fcbd43e2f238423c2dc98bddd6f79b72bc345b";
    };
    deps = {
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vinyl-sourcemaps-apply"."^0.2.0" =
    self.by-version."vinyl-sourcemaps-apply"."0.2.1";
  by-version."vinyl-sourcemaps-apply"."0.2.1" = self.buildNodePackage {
    name = "vinyl-sourcemaps-apply-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/vinyl-sourcemaps-apply/-/vinyl-sourcemaps-apply-0.2.1.tgz";
      name = "vinyl-sourcemaps-apply-0.2.1.tgz";
      sha1 = "ab6549d61d172c2b1b87be5c508d239c8ef87705";
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
      "global-4.3.1" = self.by-version."global"."4.3.1";
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
  by-spec."when"."3.x" =
    self.by-version."when"."3.7.7";
  by-version."when"."3.7.7" = self.buildNodePackage {
    name = "when-3.7.7";
    version = "3.7.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/when/-/when-3.7.7.tgz";
      name = "when-3.7.7.tgz";
      sha1 = "aba03fc3bb736d6c88b091d013d8a8e590d84718";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."when"."^3.7.7" =
    self.by-version."when"."3.7.7";
  by-spec."which"."^1.0.5" =
    self.by-version."which"."1.2.11";
  by-version."which"."1.2.11" = self.buildNodePackage {
    name = "which-1.2.11";
    version = "1.2.11";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/which/-/which-1.2.11.tgz";
      name = "which-1.2.11.tgz";
      sha1 = "c8b2eeea6b8c1659fa7c1dd4fdaabe9533dc5e8b";
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
  by-spec."which"."^1.0.9" =
    self.by-version."which"."1.2.11";
  by-spec."which"."^1.2.10" =
    self.by-version."which"."1.2.11";
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
  by-spec."xtend"."~2.1.1" =
    self.by-version."xtend"."2.1.2";
  by-version."xtend"."2.1.2" = self.buildNodePackage {
    name = "xtend-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xtend/-/xtend-2.1.2.tgz";
      name = "xtend-2.1.2.tgz";
      sha1 = "6efecc2a4dad8e6962c4901b337ce7ba87b5d28b";
    };
    deps = {
      "object-keys-0.4.0" = self.by-version."object-keys"."0.4.0";
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
  by-spec."yauzl"."2.4.1" =
    self.by-version."yauzl"."2.4.1";
  by-version."yauzl"."2.4.1" = self.buildNodePackage {
    name = "yauzl-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/yauzl/-/yauzl-2.4.1.tgz";
      name = "yauzl-2.4.1.tgz";
      sha1 = "9528f442dab1b2284e58b4379bb194e22e0c4005";
    };
    deps = {
      "fd-slicer-1.0.1" = self.by-version."fd-slicer"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}

{ mkDerivation, aeson, async, base, bytestring, containers
, directory, file-embed, filepath, hashable, hjsonpointer, hspec
, http-client, http-types, pcre-heavy, profunctors, protolude
, QuickCheck, scientific, semigroups, stdenv, text
, unordered-containers, vector, wai-app-static, warp
}:
mkDerivation {
  pname = "hjsonschema";
  version = "1.5.0.1";
  sha256 = "18w8wb87hx5vw7vd9bk7d1qxqn3smhbhynj49gx507326a7mrh8s";
  libraryHaskellDepends = [
    aeson base bytestring containers file-embed filepath hashable
    hjsonpointer http-client http-types pcre-heavy profunctors
    protolude QuickCheck scientific semigroups text
    unordered-containers vector
  ];
  testHaskellDepends = [
    aeson async base bytestring directory filepath hjsonpointer hspec
    profunctors protolude QuickCheck semigroups text
    unordered-containers vector wai-app-static warp
  ];
  homepage = "https://github.com/seagreen/hjsonschema";
  description = "JSON Schema library";
  license = stdenv.lib.licenses.mit;
}

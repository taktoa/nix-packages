{ mkDerivation, base, bytestring, stdenv, template-haskell }:
mkDerivation {
  pname = "fficxx-runtime";
  version = "0.3";
  sha256 = "18pzjhfqsr2f783xywmcfkz5isx31iqcyng4j5mbz92q2m166idb";
  libraryHaskellDepends = [ base bytestring template-haskell ];
  description = "Runtime for fficxx-generated library";
  license = stdenv.lib.licenses.bsd3;
}

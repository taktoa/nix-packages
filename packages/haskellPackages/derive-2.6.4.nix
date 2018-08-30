{ mkDerivation, base, bytestring, containers, directory, filepath
, haskell-src-exts, pretty, process, stdenv, syb, template-haskell
, transformers, uniplate
}:
mkDerivation {
  pname = "derive";
  version = "2.6.4";
  sha256 = "3a36e4903bb5557c7bc7612b5772dc3b3a1a9946d447b0446eef53034fd07023";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring containers directory filepath haskell-src-exts
    pretty process syb template-haskell transformers uniplate
  ];
  executableHaskellDepends = [ base ];
  homepage = "https://github.com/ndmitchell/derive#readme";
  description = "A program and library to derive instances for data types";
  license = stdenv.lib.licenses.bsd3;
}

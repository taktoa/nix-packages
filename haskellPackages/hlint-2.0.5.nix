{ mkDerivation, ansi-terminal, base, bytestring, cmdargs
, containers, cpphs, directory, extra, filepath, haskell-src-exts
, hscolour, process, refact, stdenv, text, transformers, uniplate
, unordered-containers, vector, yaml
}:
mkDerivation {
  pname = "hlint";
  version = "2.0.5";
  sha256 = "1cd6h319p3iqzycn0gjzvdd54yrb97wfi9k3cida4y18b8kifdgw";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal base bytestring cmdargs containers cpphs directory
    extra filepath haskell-src-exts hscolour process refact text
    transformers uniplate unordered-containers vector yaml
  ];
  executableHaskellDepends = [ base ];
  homepage = "https://github.com/ndmitchell/hlint#readme";
  description = "Source code suggestions";
  license = stdenv.lib.licenses.bsd3;
}

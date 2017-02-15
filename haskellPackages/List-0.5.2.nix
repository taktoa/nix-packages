{ mkDerivation, base, stdenv, transformers }:
mkDerivation {
  pname = "List";
  version = "0.5.2";
  sha256 = "1b7ar17d2sq6ibgbiqbsrhk2zlxcxiwfv2xsfbya5hs8nflzkp97";
  libraryHaskellDepends = [ base transformers ];
  homepage = "http://github.com/yairchu/generator/tree";
  description = "List monad transformer and class";
  license = stdenv.lib.licenses.bsd3;
}

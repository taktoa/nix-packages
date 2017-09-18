{ mkDerivation, base, bytestring, c2hs, Cabal, directory, filepath
, mtl, parsec, stdenv, text
}:
mkDerivation {
  pname = "fltkhs";
  version = "0.5.1.4";
  sha256 = "1qqiayjkacl81nsyv3xrwr1812kybv191v3y8p276f5drnqcy4m5";
  isLibrary = true;
  isExecutable = true;
  setupHaskellDepends = [ base Cabal directory filepath ];
  libraryHaskellDepends = [ base bytestring text ];
  libraryToolDepends = [ c2hs ];
  executableHaskellDepends = [ base directory filepath mtl parsec ];
  homepage = "http://github.com/deech/fltkhs";
  description = "FLTK bindings";
  license = stdenv.lib.licenses.mit;
}

{ mkDerivation, base, bytestring, Cabal, cabal-install, containers
, directory, extra, filepath, ghc-prim, mtl, process, stdenv
, template-haskell, temporary, transformers, unix, utf8-string
}:
mkDerivation {
  pname = "cabal-helper";
  version = "0.7.3.0";
  sha256 = "194j278109q5wdp0kl85y172n3c8hg0sms9gxfn2kl2x43smah3r";
  revision = "1";
  editedCabalFile = "1ec0e453ac2b600db0767b99546f963f50436186f55f7794cef81f803a2c1b4a";
  isLibrary = true;
  isExecutable = true;
  setupHaskellDepends = [
    base Cabal containers directory filepath process template-haskell
    transformers
  ];
  libraryHaskellDepends = [
    base Cabal directory filepath ghc-prim mtl process transformers
  ];
  executableHaskellDepends = [
    base bytestring Cabal directory filepath ghc-prim mtl process
    template-haskell temporary transformers utf8-string
  ];
  testHaskellDepends = [
    base bytestring Cabal directory extra filepath ghc-prim mtl process
    template-haskell temporary transformers unix utf8-string
  ];
  testToolDepends = [ cabal-install ];
  doCheck = false;
  description = "Simple interface to some of Cabal's configuration state used by ghc-mod";
  license = stdenv.lib.licenses.agpl3;
}

{ mkDerivation, base, Cabal, cmdargs, directory, fetchgit, filepath
, ghc, ghc-boot, ghc-paths, network, process, stdenv, syb, time
, transformers, unix
}:
mkDerivation {
  pname = "hdevtools";
  version = "0.1.5.0";
  src = fetchgit {
    url = "https://github.com/taktoa/hdevtools";
    sha256 = "1a8z00s92ag7zgfnnlaqrzknig4dbv5ksnahnms90m3wx1a6am2h";
    rev = "31927a47f061d1b216c3f39127c2849bc2ba0419";
  };
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base Cabal cmdargs directory filepath ghc ghc-boot ghc-paths
    network process syb time transformers unix
  ];
  homepage = "https://github.com/hdevtools/hdevtools/";
  description = "Persistent GHC powered background server for FAST haskell development tools";
  license = stdenv.lib.licenses.mit;
}

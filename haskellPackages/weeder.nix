{ mkDerivation, aeson, base, bytestring, cmdargs, extra, filepath
, hashable, process, stdenv, text, unordered-containers, vector
, yaml
}:
mkDerivation {
  pname = "weeder";
  version = "0.1.6";
  sha256 = "1ss78jqiygypr8j4n2nj9b5dhxly6gmnf5qlil4cj8kb0pzr1q7b";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base bytestring cmdargs extra filepath hashable process text
    unordered-containers vector yaml
  ];
  homepage = "https://github.com/ndmitchell/weeder#readme";
  description = "Detect dead code";
  license = stdenv.lib.licenses.bsd3;
}

{ stdenv, mkDerivation, fetchFromGitHub
, base, directory, filepath, process, text
}:
mkDerivation {
  pname = "antigen-hs";
  version = "0.1.0.0";
  src = fetchFromGitHub {
    owner  = "Tarrasch";
    repo   = "antigen-hs";
    rev    = "b1300db52ab2d46d74220daafd041535d7644113";
    sha256 = "0rzrdric7adq9lcv3cfhsnqli8dfl1bzagn5clsz68i2gbyvh9d8";
  };
  libraryHaskellDepends = [ base directory filepath process text ];
  homepage = "https://github.com/Tarrasch/antigen-hs";
  description = "A fast zsh plugin manager";
  license = stdenv.lib.licenses.mit;
}

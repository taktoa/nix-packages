{ pkgs }:

with pkgs;

stdenv.mkDerivation {
  name = "herbgrind-1.0";

  src = fetchFromGitHub {
    owner  = "uwplse";
    repo   = "herbgrind";
    rev    = "07d7a764e5063dfd387d4a2b5ea6e0803fe98545";
    sha256 = "1l78ccwn3864q8irqy172kwa26lfw1w573zyi91q4f4ds1f946gs";
  };

  buildInputs = [ ];
}

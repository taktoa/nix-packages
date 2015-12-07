{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  version = "20150407"; # April 7th, 2015
  name = "powerline-fonts-${version}";

  src = fetchFromGitHub {
    owner = "powerline";
    repo = "fonts";
    rev = "c4262ba2d4b5ec25c25607e5a802b10f42fca3b4";
    sha256 = "0wdfz85kgqn7p8pdaxn7jjn74m11bpcc8qkija4apzcqp8kh6yvs";
  };
  
  dontBuild = true;
  
  installPhase = ''
      fontDir=$out/share/fonts/
      otfDir=$fontDir/opentype/
      ttfDir=$fontDir/truetype/
      mkdir -p $fontDir $otfDir $ttfDir
      find . -name '*.otf' | sed "s/^/cp \"/g;s:\$:\" $otfDir:g" | bash
      find . -name '*.ttf' | sed "s/^/cp \"/g;s:\$:\" $ttfDir:g" | bash
  '';
  
  meta = {
    description = "Powerline fonts";
    homepage = https://github.com/powerline/fonts;
    license = "SIL";
    platforms = stdenv.lib.platforms.all;
  };
}

{ stdenv, fetchFromGitHub
, makeWrapper
, gnome, xclip, scrot
, xdg_utils, gnused, curl
}:

with builtins;

let zenity   = gnome.zenity;
    xdg      = xdg_utils;
    joinMap  = show: sep: xs: concatStringsSep sep (map show xs);
    makePath = joinMap (p: "${p}/bin") ":";
in stdenv.mkDerivation rec {
  name = "zscreen-ng-20150830";

  buildInputs = [ makeWrapper ];
  
  src = fetchFromGitHub {
    owner  = "ChrisZeta";
    repo   = "Scrot-and-imgur-zenity-GUI";
    rev    = "0a12af04f7276765789eec496098a3ae9c3e05ff";
    sha256 = "0z2qycgw2ybsg7pd2l8y7y40albql8p14wf0z0dcv13gj5wfx2im";
    # owner  = "taktoa";
    # repo   = "zscreen-ng";
    # rev    = "9b56d3bd734305605323d75a5a89de07dee30e1c";
    # sha256 = "1yvpzpvzxb5g9rh0jy0b36mhvfcq0y3wlyq0gf1b84xfvhqpxmmm";
  };

  dontBuild = true;

  PATH_ADD = makePath [ zenity scrot xdg xclip ];
    
  installPhase = ''
    install -Dm755 src/zimgur.sh  "$out/bin/zimgur"
    install -Dm755 src/zscreen.sh "$out/bin/zscreen"
    wrapProgram $out/bin/zimgur  --suffix PATH : "$PATH_ADD"
    wrapProgram $out/bin/zscreen --suffix PATH : "$PATH_ADD"
  '';
  
  meta = {
    description = "Screenshot utility";
    homepage = https://github.com/taktoa/zscreen-ng;
    platforms = stdenv.lib.platforms.all;
  };
}

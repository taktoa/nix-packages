{ stdenv, fetchFromGitHub
, makeWrapper
, gnome, xclip, scrot, imgur-screenshot
, xdg_utils, gnused, curl
}:

with builtins;

let zenity   = gnome.zenity;
    xdg      = xdg_utils;
    joinMap  = show: sep: xs: concatStringsSep sep (map show xs);
    makePath = joinMap (p: "${p}/bin") ":";
in stdenv.mkDerivation rec {
  name = "zscreen-ng-20150725";

  buildInputs = [ makeWrapper ];
  
  src = fetchFromGitHub {
    owner  = "ChrisZeta";
    repo   = "Scrot-and-imgur-zenity-GUI";
    rev    = "9b56d3bd734305605323d75a5a89de07dee30e1c";
    sha256 = "1mwairmd5zkh85ks772zrnm4inzb981psgk7z26dad65m8305vx1";
    # owner  = "taktoa";
    # repo   = "zscreen-ng";
    # rev    = "9b56d3bd734305605323d75a5a89de07dee30e1c";
    # sha256 = "1yvpzpvzxb5g9rh0jy0b36mhvfcq0y3wlyq0gf1b84xfvhqpxmmm";
  };

  dontBuild = true;

  PATH_ADD = makePath [ zenity scrot xdg xclip ];
    
  installPhase = ''
    install -Dm755 src/zscreen.sh "$out/bin/zscreen"
    wrapProgram $out/bin/zscreen --suffix PATH : "$PATH_ADD"
    ln -s ${imgur-screenshot}/bin/imgur-screenshot "$out/bin/zimgur"
  '';
  
  meta = {
    description = "Screenshot utility";
    homepage = https://github.com/taktoa/zscreen-ng;
    platforms = stdenv.lib.platforms.all;
  };
}

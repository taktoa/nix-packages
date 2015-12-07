{ stdenv, fetchFromGitHub
, makeWrapper
, cinnamon, xclip, scrot
, xdg_utils, gnused, curl
}:

let zenity = cinnamon.zenity;
    xdg    = xdg_utils;
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
  
  installPhase = ''
    install -Dm755 src/zimgur.sh  "$out/bin/zimgur"
    install -Dm755 src/zscreen.sh "$out/bin/zscreen"
    export ADD="${cinnamon.zenity}/bin:${scrot}/bin:${xdg_utils}/bin:${xclip}/bin"
    wrapProgram $out/bin/zimgur  --suffix PATH : "$ADD"
    wrapProgram $out/bin/zscreen --suffix PATH : "$ADD"

    # mkdir -p $out $out/share/doc/ $out/bin
    # cp conf.sh.example $out/share/doc/w
    # substitute src/zscreen.sh $out/bin/zscreen      \
    #     --replace "curl"     "${curl}/bin/curl"     \
    #     --replace "scrot"    "${scrot}/bin/scrot"   \
    #     --replace "xclip"    "${xclip}/bin/xclip"   \
    #     --replace "xdg-open" "${xdg}/bin/xdg-open"  \
    #     --replace "zenity"   "${zenity}/bin/zenity"
    # substitute src/zimgur.sh $out/bin/zimgur        \
    #     --replace "curl"     "${curl}/bin/curl"     \
    #     --replace "scrot"    "${scrot}/bin/scrot"   \
    #     --replace "xclip"    "${xclip}/bin/xclip"   \
    #     --replace "xdg-open" "${xdg}/bin/xdg-open"  \
    #     --replace "zenity"   "${zenity}/bin/zenity"
  '';
  
  meta = {
    description = "Screenshot utility";
    homepage = https://github.com/taktoa/zscreen-ng;
    platforms = stdenv.lib.platforms.all;
  };
}

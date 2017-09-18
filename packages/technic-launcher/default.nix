{ stdenv, fetchurl, openjdk7, libX11, libXext, libXcursor, libXrandr, libXxf86vm
, mesa, openal, alsaOss, pulseaudioFull }:

assert openjdk7 ? architecture;

let java = openjdk7;
in
stdenv.mkDerivation {
  name = "technic-launcher-4.301";

  src = fetchurl {
    url = "http://launcher.technicpack.net/launcher4/301/TechnicLauncher.jar";
    sha256 = "176ixdhm8c5kvcnzxjhafgzqskr67pq9w14wdsbdyg8s0dl1kmzj";
  };

  phases = "installPhase";

  installPhase = ''
    set -x
    mkdir -pv $out/bin
    cp -v $src $out/TechnicLauncher.jar

    cat > $out/bin/technic-launcher << EOF
    #!${stdenv.shell}

    # wrapper for technic-launcher
    export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${java}/lib/${java.architecture}/:${libX11}/lib/:${libXext}/lib/:${libXcursor}/lib/:${libXrandr}/lib/:${libXxf86vm}/lib/:${mesa}/lib/:${openal}/lib/
    ${pulseaudioFull}/bin/padsp ${java}/bin/java -jar $out/TechnicLauncher.jar
    EOF

    chmod +x $out/bin/technic-launcher
  '';

  meta = {
      description = "A modpack loader for Minecraft";
      homepage = http://www.technicpack.net;
      maintainers = [ stdenv.lib.maintainers.taktoa ];
      license = stdenv.lib.licenses.unfreeRedistributable;
  };
}

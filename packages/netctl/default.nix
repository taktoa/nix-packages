{ stdenv, fetchurl
, systemd, bash, coreutils, pkgconfig, findutils, parallel, dialog
, iproute, openresolv, ppp, dhcpcd, wpa_supplicant, ifplugd
, asciidoc, libxml2, libxslt, docbook_xml_dtd_45, docbook_xml_xslt
}:

stdenv.mkDerivation rec {
  name = "netctl-1.11";

  src = fetchurl {
    url = "https://projects.archlinux.org/netctl.git/snapshot/${name}.tar.gz";
    sha256 = "1hw23j1pnknqmcgdrln108ar66r6pm6iba7m44m6w39k2w4yj629";
  };

  patches = [ ./systemd-unit-path-fix.patch ];

  # FIXME: add multiple outputs for docs etc.
  #outputs = [ "out" ];
  
  makeFlags = "DESTDIR=$$out";

  buildInputs = [ pkgconfig findutils parallel
                  systemd bash coreutils iproute openresolv
                  dhcpcd wpa_supplicant dialog ifplugd
                  asciidoc libxml2 libxslt
                  docbook_xml_dtd_45 docbook_xml_xslt ];

  postInstall = ''
      mv $out/usr/bin $out/
      mv $out/usr/share $out/
      mv $out/usr/lib/network $out/lib
      rmdir $out/usr/lib
      rmdir $out/usr
      replaceUsr () {
          echo "Fixing directories in: $1"
          substituteInPlace "$1" \
              --replace '/usr/lib/' "$out/lib/" \
              --replace '/usr/bin/' "$out/bin/"
      }
      export -f replaceUsr
      export -f substituteInPlace
      export -f substitute
      find -L $out/ -xtype f -print0 | parallel -0 replaceUsr
      substituteInPlace $out/lib/network/connections/mobile_ppp \
          --replace '/usr/sbin/chat' '${ppp}/sbin/chat'
  '';

  meta = with stdenv.lib; {
    description = "A command-line network profile manager";
    longDescription = ''
        netctl is a command-line tool used to configure and manage network
        connections via profiles.
    '';
    homepage = https://wiki.archlinux.org/index.php/Netctl;
    license = licenses.gpl3;
    maintainers = [ maintainers.taktoa ];
    platforms = platforms.linux;
  };
}

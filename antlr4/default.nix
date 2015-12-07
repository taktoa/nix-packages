{ stdenv, fetchurl, jre }:

stdenv.mkDerivation rec {
  name = "antlr-4.5.1";
  
  src = fetchurl {
    url = https://www.antlr.org/download/antlr-4.5.1-complete.jar;
    sha256 = "9cff6c76bc5aafcbf51cac7f0974ae01e4f6119402e75436abbb97f8ab15c211";
  };

  unpackCmd = "mkdir antlr4";

  dontBuild = true;

  installPhase = ''
      mkdir -p $out $out/lib $out/bin
      cp ${src} $out/lib/antlr4.jar
      echo -e "#!/bin/sh" "\n" \
              "${jre}/bin/java -jar $out/lib/antlr4.jar \"\$@\"" \
              >> $out/bin/antlr
      chmod +x $out/bin/antlr
  '';
  
  meta = with stdenv.lib; {
    description = "A powerful parser generator";
    longDescription = ''
      ANTLR (ANother Tool for Language Recognition) is a powerful parser
      generator for reading, processing, executing, or translating structured
      text or binary files. It's widely used to build languages, tools, and
      frameworks. From a grammar, ANTLR generates a parser that can build and
      walk parse trees.
    '';
    homepage = http://www.antlr.org;
    platforms = platforms.linux;
    maintainers = with maintainers; [ taktoa ];
  };
}

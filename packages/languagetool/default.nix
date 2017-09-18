{ stdenv, makeWrapper, unzip, fetchurl, jdk }:

stdenv.mkDerivation rec {
    name = "languagetool-${version}";
    version = "3.0";
    
    src = fetchurl {
      url = "https://languagetool.org/download/LanguageTool-${version}.zip";
      sha256 = "0ggwh1kaj9ia5h0hqfspnkqaadq7x81564dz4klb6384gixb5xsj";
    };

    buildInputs = [ makeWrapper unzip ];

    installPhase = ''
        mkdir -p $out/bin
        cp -R * $out/
        cp languagetool-*.jar $out
        makeWrapper ${jdk}/bin/java $out/bin/languagetool \
          --add-flags "-jar $out/languagetool-commandline.jar"
    '';
}

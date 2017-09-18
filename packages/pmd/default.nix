{ stdenv, fetchurl, writeScript, unzip, jdk }:

stdenv.mkDerivation rec {
  projectName = "pmd";
  version = "5.3.3";
  name = "${projectName}-${version}";

  src = fetchurl {
    url = "mirror://sourceforge/${projectName}/${projectName}-bin-${version}.zip";
    sha256 = "1kl72ccbh363ny0yxj6nkqkb97cp5184kk5dw6dlglkmpag7hqk8";
  };

  buildInputs = [ unzip ];

  buildPhase = ''
      rm bin/*.bat
  '';

  pmdScript = writeScript "pmd" ''
    #!/usr/bin/env bash
    export PATH=$PATH:${jdk}/bin
    $out/share/pmd/bin/pmd "$@"
  '';

  installPhase = ''
      mkdir -p $out/bin/ $out/share/pmd/bin/ $out/share/pmd/lib/
      cp bin/run.sh $out/share/pmd/bin/pmd
      cp ${pmdScript} $out/bin/pmd
      sed -i "s:\$out:$out:g" $out/bin/pmd
      cp lib/* $out/share/pmd/lib/
  '';

  meta = {
    description = "PMD is a source code analyzer that finds common programming flaws in your code.";
    homepage = http://pmd.sourceforge.net;
    license = stdenv.lib.licenses.bsd3;
    platforms = stdenv.lib.platforms.all;
  };
}

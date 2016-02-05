{ stdenv, fetchurl, jdk, makeWrapper }:

assert jdk != null;

let version = "3.2.5";
    mavenColorRoot = "http://dl.bintray.com/jcgay/maven/com/github/jcgay/maven/color";
in
stdenv.mkDerivation rec {
  name = "apache-maven-${version}";

  src = fetchurl {
    url = "mirror://apache/maven/maven-3/${version}/binaries/${name}-bin.tar.gz";
    sha256 = "0md7fizam2lvl0b7fdlfjng6ywm283chmp382agzz4gmpmj046cc";
  };

  mavenColorLog4j2 = fetchurl {
    url = "${mavenColorRoot}/maven-color-log4j2/1.1/maven-color-log4j2-1.1-bundle.tar.gz";
    sha256 = "f5ec274cb9e854429ba82f28aaea9a6c149d35a7a40bbe86e0483da1df4f0843";
  };

  mavenColorConf = ./log4j2.xml;

  dontBuild = true;

  installPhase = ''
      mkdir -p $out
      cp -R * $out/
      wrapProgram $out/bin/mvn --set JAVA_HOME "${jdk}"
      rm -f $out/lib/slf4j-simple-1.7.*
      tar xvfz ${mavenColorLog4j2} -C $out
      cp ${mavenColorConf} $out/conf/logging/log4j2.xml
  '';

  buildInputs = [ makeWrapper ];

  inherit jdk;

  meta = with stdenv.lib; {
    description = "Build automation tool (used primarily for Java projects)";
    homepage = http://maven.apache.org/;
    license = licenses.asl20;
  };
}

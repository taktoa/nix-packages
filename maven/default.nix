{ stdenv, fetchurl, jdk, makeWrapper }:

assert jdk != null;

let version = "3.3.9";
    mavenColorRoot = "http://dl.bintray.com/jcgay/maven/com/github/jcgay/maven/color";
in
stdenv.mkDerivation rec {
  name = "apache-maven-${version}";

  src = fetchurl {
    url = "mirror://apache/maven/maven-3/${version}/binaries/${name}-bin.tar.gz";
    sha256 = "10pz00lf8gqvmjcmi1wlpsqqj9kvm8bqf0vl9wh5lsdlkaa9qgkf";
  };

  mavenColorLog4j2 = fetchurl {
    url = "${mavenColorRoot}/maven-color-gossip/2.0.0-beta/maven-color-gossip-2.0.0-beta-bundle.tar.gz";
    sha256 = "0h8f65mgsv60mxhlvpnnhhr2wzd2lakfgwyai0h4sh71caj2xsmv";
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

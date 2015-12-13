{ stdenv, fetchFromGitHub, python34, python34Packages }:

let pythonEnv = python34.buildEnv.override {
      extraLibs = with python34Packages; [ lxml cssselect ];
      ignoreCollisions = true;
    };
in stdenv.mkDerivation rec {
  name = "scrape-html-0.1.0";

  src = fetchFromGitHub {
    owner = "taktoa";
    repo = "scrape-html";
    rev = "46eed87e828253a37551113bdeab609dd02f53bf";
    sha256 = "0gvljgk3fx8nyfd297ywpjxk50cvxzn8qc4mz1ip9ysg0nah681h";
  };

  buildInputs = [ pythonEnv ];

  dontBuild = true;

  installPhase = ''
    install -D scrape-html.py $out/bin/scrape-html
  '';

  meta = {
    description = "Extract HTML elements using an XPath query or CSS3 selector";
    homepage = http://github.com/taktoa/scrape-html;
    license = stdenv.lib.licenses.bsd2;
    platforms = stdenv.lib.platforms.all;
  };
}

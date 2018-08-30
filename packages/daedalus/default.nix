{ fetchurl }:

rec {
  daedalusVersion = "1.0.3253";
  
  daedalusSource = fetchurl {
    url = "http://s3.eu-central-1.amazonaws.com/daedalus-travis/Daedalus-installer-${daedalusVersion}.pkg";
    sha256 = "";
  };
}

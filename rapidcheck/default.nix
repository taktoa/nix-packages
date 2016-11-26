{ stdenv, fetchFromGitHub, cmake, findutils }:

# FIXME:
#     run tests during build
#     generate pkgconfig file
#     add dependencies on catch / gtest / gmock
#     multiple outputs
#     simplify install situation by patching CMakeLists.txt

stdenv.mkDerivation rec {
  name = "rapidcheck-20161024";

  src = fetchFromGitHub {
    repo   = "rapidcheck";
    owner  = "emil-e";
    rev    = "6a065dded71788dd0e35c5003e0e1905d55336ae";
    sha256 = "005bpswmi38m3fj8gc74jmqnsdc2m3apqdgv4ds7l8jn3vp3zwjm";
  };

  buildInputs = [ cmake findutils ];

  installPhase = ''
      ln -sv ../include ./include

      install -v -d $out/{include,lib}
      install -v librapidcheck.a $out/lib

      for dir in `find include/ -type d`; do
          install -dv "$out/$dir";
      done

      for file in `find include/ -type f`; do
          install -m 644 -v "./$file" "$out/$file"
      done
  '';
}

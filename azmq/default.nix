#{ stdenv, fetchFromGitHub, cmake, zeromq, boost }:

with import <nixpkgs> {};

stdenv.mkDerivation (rec {
  name = "azmq-${version}";
  version = "0.0.1";

  src = fetchFromGitHub {
    repo = "azmq";
    owner = "taktoa";
    rev = "a498eac4af08f823256ff6d0703431af497a1cd1";
    sha256 = "037r1r14mzkhk33ifpy6qjwh3hyzi2a41ghjvr1l8c1hxjjmzqmk";
  };

  propagatedBuildInputs = [ cmake zeromq boost ];

  doCheck = true;
  
  checkPhase = ''
      make test
  '';

  meta = {
    description = "Boost Asio-style bindings for ZeroMQ.";
    homepage = https://github.com/zeromq/azmq;
    license = stdenv.lib.licenses.boost;
    platforms = stdenv.lib.platforms.all;
  };
})

{ stdenv, fetchFromGitHub,
  cmake, boost, ncurses, SDL2, SDL2_image
}:

stdenv.mkDerivation {
  name = "wasmint-2017-04-08";

  src = fetchFromGitHub {
    owner = "WebAssembly";
    repo = "wasmint";
    rev = "2138579f5fed8b76221b9e580eeb2038239464da";
    sha256 = "1wjqzn9a9pjk7ayvhbnl4zpn8d1m48rawbdrwr6qwfkjc26qk5mc";
  };

  buildInputs = [ cmake boost ncurses SDL2 SDL2_image ];

  installPhase = ''
    mkdir -p "$out/bin" "$out/lib"
    cp -v wasm2c          "$out/bin"
    cp -v wasmdbg         "$out/bin"
    cp -v wasmint         "$out/bin"
    cp -v wasmint_fuzzer  "$out/bin"
    cp -v wasmint_wast    "$out/bin"
    cp -v wast-converter  "$out/bin"
    cp -v wasm-module/libwasm-module.a "$out/lib/libwasm-module.a"
    cp -v liblibwasmint.a              "$out/lib/libwasmint.a"
    chmod +x $out/bin/*
  '';

  enableParallelBuilding = true;

  # FIXME: add meta
}

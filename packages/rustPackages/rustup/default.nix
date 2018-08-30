{ stdenv, stdenvNoCC, lib,
  patchelf, fetchFromGitHub, rustPlatform, pkgconfig, curl
}:

with {
  patchFiles = {
    dynamicallyPatchelfBinaries = stdenvNoCC.mkDerivation {
      name = "0001-dynamically-patchelf-binaries.patch";
      CC = stdenv.cc;
      patchelf = patchelf;
      buildCommand = ''
        export dynamicLinker=$(cat $CC/nix-support/dynamic-linker)
        substitute ${./0001-dynamically-patchelf-binaries.patch} $out \
          --subst-var patchelf \
          --subst-var dynamicLinker
      '';
    };
  };
};

rustPlatform.buildRustPackage rec {
  name = "rustup-${version}";
  version = "2017-10-29";

  cargoSha256 = "1xwxv8y9xjgdmm92ldrn9m9fml2zb5h7qqm7dhw63j6psb3ajqrw";

  src = fetchFromGitHub {
    owner  = "rust-lang-nursery";
    repo   = "rustup.rs";
    rev    = "13c8092507bf646f3ef6a621fe2c5a68212e800f";
    sha256 = "1qd01rjk9qpfzgqs35f5nxrcf00kmf76zwmgj3yzdig9zymjwndg";
  };

  nativeBuildInputs = [ pkgconfig ];

  buildInputs = [ curl ];

  cargoBuildFlags = [ "--features no-self-update" ];

  patches = lib.optionals stdenv.isLinux [
    patchFiles.dynamicallyPatchelfBinaries
  ];

  postInstall = ''
    pushd $out/bin
    mv rustup-init rustup
    ln -s rustup cargo
    ln -s rustup rustc
    ln -s rustup rustdoc
    ln -s rustup rust-gdb
    ln -s rustup rust-lldb
    popd

    # tries to create .rustup
    export HOME=$(mktemp -d)
    mkdir -p "$out/share/bash-completion/completions"
    mkdir -p "$out/share/fish/completions"
    mkdir -p "$out/share/zsh/site-functions"
    $out/bin/rustup completions bash > "$out/share/bash-completion/completions/rustup"
    $out/bin/rustup completions fish > "$out/share/fish/completions/rustup.fish"
    $out/bin/rustup completions zsh  > "$out/share/zsh/site-functions/_rustup"
  '';

  meta = with stdenv.lib; {
    description = "The Rust toolchain installer";
    homepage = https://www.rustup.rs/;
    license = licenses.mit;
    maintainer = [ maintainers.mic92 ];
  };
}

{ mkDerivation, base, bytestring, Cabal, containers, gi-gio
, gi-glib, gi-gobject, haskell-gi, haskell-gi-base, libsecret
, stdenv, text, transformers, gobjectIntrospection
}:
mkDerivation {
  pname = "gi-secret";
  version = "0.0.1";
  sha256 = "16lzn8s0hq13gfxv5jc561znhvnrdkg8bcia5rmx9kbbid80szw7";
  setupHaskellDepends = [ base Cabal haskell-gi ];
  libraryHaskellDepends = [
    base bytestring containers gi-gio gi-glib gi-gobject haskell-gi
    haskell-gi-base text transformers
  ];
  libraryPkgconfigDepends = [ libsecret gobjectIntrospection ];
  preConfigure = ''export HASKELL_GI_GIR_SEARCH_PATH=${libsecret}/share/gir-1.0'';
  homepage = "https://github.com/haskell-gi/haskell-gi";
  description = "Libsecret bindings";
  license = stdenv.lib.licenses.lgpl21;
}

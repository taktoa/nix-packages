{ stdenv, fetchurl, cmake, pkgconfig
, libxkbcommon, xlibs, qt5
, ffmpeg, jansson, libv4l, x264, libpulseaudio, curl
, fontconfig, freetype
}:

stdenv.mkDerivation rec {
  name = "obs-studio-${version}";
  version = "0.12.4";

  src = fetchurl {
    url = "https://github.com/jp9000/obs-studio/archive/${version}.tar.gz";
    sha256 = "0b1xb5vd3g4h7m1hsjzsq3bbbnqb2n6mpmq6ix4yyy72g087rjk1";
  };

  buildInputs = [ cmake pkgconfig
                  ffmpeg jansson libv4l libxkbcommon x264 curl libpulseaudio
                  qt5.qtbase qt5.qtx11extras qt5.qtsvg
                  xlibs.libXinerama xlibs.libXcomposite xlibs.libX11
                  fontconfig freetype
                ];

  # obs attempts to dlopen libobs-opengl, it fails unless we make sure
  # DL_OPENGL is an explicit path. Not sure if there's a better way
  # to handle this.
  cmakeFlags = [ "-DCMAKE_CXX_FLAGS=-DDL_OPENGL=\\\"$(out)/lib/libobs-opengl.so\\\"" ];
  
  meta = with stdenv.lib; {
    description = "Free and open source software for video recording and live streaming";
    longDescription = ''
      This project is a rewrite of what was formerly known as Open Broadcaster
      Software, software originally designed for recording and streaming live
      video content, efficiently
    '';
    homepage = "https://obsproject.com";
    maintainers = with maintainers; [ jb55 ];
    license = licenses.gpl2;
  };
}

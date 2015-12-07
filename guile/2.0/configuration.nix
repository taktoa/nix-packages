{ pkgs, coverageAnalysis ? null }:

with { inherit (pkgs) fetchurl gmp gnu libtool libunistring readline; };
with pkgs.stdenv;

let fixSun = {
      configureFlags = [
        # Make sure the right <gmp.h> is found, and not the incompatible
        # /usr/include/mp.h from OpenSolaris. For details, see
        # <https://lists.gnu.org/archive/html/hydra-users/2012-08/msg00000.html>
        "--with-libgmp-prefix=${pkgs.gmp}"

        # Other fixes for Solaris       
        "--with-libreadline-prefix=${pkgs.readline}"
        "--with-libunistring-prefix=${pkgs.libunistring}"
        "--without-threads"
      ];
    };
    # For <http://bugs.gnu.org/14201>.
    fixNonLinux = {
      SHELL        = "/bin/sh";
      CONFIG_SHELL = "/bin/sh"; 
    };
    optional       = pkgs.stdenv.lib.optional;
    optionalAttrs  = pkgs.stdenv.lib.optionalAttrs;
    optionalString = pkgs.stdenv.lib.optionalString;
in rec {
  mkDerivation = if   coverageAnalysis != null
                 then coverageAnalysis
                 else pkgs.stdenv.mkDerivation;

  majorVersion = "2.0";
  minorVersion = "11";

  src = pkgs.fetchurl {
    url = "mirror://gnu/guile/guile-${majorVersion}-${minorVersion}.tar.xz";
    sha256 = "1qh3j7308qvsjgwf7h94yqgckpbgz2k3yqdkzsyhqcafvfka9l5f";
  };

  buildInputs           = with pkgs; [ readline libtool libunistring libffi ];
  nativeBuildInputs     = with pkgs; [ pkgconfig ];
  # libtool and libunistring aren't normally needed here, but since
  # "libguile-2.0.la" reads "-lltdl -lunistring", adding them here
  # will add the needed -L flags.
  propagatedBuildInputs = with pkgs; [ gmp boehmgc libtool libunistring ];

  patches = [ ../patches/disable-gc-sensitive-tests.patch
              ../patches/eai_system.patch
              ../patches/clang.patch
            ] ++ (optional (coverageAnalysis != null)
                  ../patches/gcov-file-name.patch);

  # See <http://thread.gmane.org/gmane.comp.lib.gnulib.bugs/18903>
  # for why --with-libunistring-prefix and similar options coming
  # from AC_LIB_LINKFLAGS_BODY don't work on NixOS for x86_64.
  postInstall = ''
      sed -i "$out/lib/pkgconfig/guile-2.0.pc"    \
          -e 's|-lunistring|-L${pkgs.libunistring}/lib -lunistring|g ;
              s|^Cflags:\(.*\)$|Cflags: -I${pkgs.libunistring}/include \1|g ;
              s|-lltdl|-L${pkgs.libtool}/lib -lltdl|g'
  '';

  # make check doesn't work on darwin
  doCheck = !pkgs.stdenv.isDarwin;

  setupHook = ./setup-hook.sh;

  crossAttrs = {
    # On GNU, libgc depends on libpthread, but the cross linker doesn't
    # know where to find libpthread, which leads to erroneous test failures
    # in `configure', where `-pthread' and `-lpthread' aren't explicitly
    # passed. So it needs some help.
    preConfigure = optionalString (pkgs.stdenv.cross.config == "i586-pc-gnu")
                   "export LDFLAGS=-Wl,-rpath-link=${pkgs.gnu.libpthreadCross}/lib";
  };

  otherAttrs = (optionalAttrs   pkgs.stdenv.isSunOS  fixSun)
            // (optionalAttrs (!pkgs.stdenv.isLinux) fixNonLinux)
            // {
    # Explicitly link against libgcc_s, to work around the infamous
    # "libgcc_s.so.1 must be installed for pthread_cancel to work".
    # This is disabled on darwin, as it does not have libgcc_s.so.1
    LDFLAGS = optionalString (!pkgs.stdenv.isDarwin) "-lgcc_s";  
  };
}

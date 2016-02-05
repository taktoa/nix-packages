{ pkgs }:

{
    guileGnome = self.callPackage ./packages/guile-gnome-platform {};

    guileJSON = self.callPackage ./packages/guile-json {};

    guileCurl = self.callPackage ./packages/guile-curl {};

    guileSly = self.callPackage ./packages/guile-sly {};

    guileReader = self.callPackage ./packages/guile-reader {};

    guileSkribilo = self.callPackage ./packages/guile-skribilo {};

    guileSlib = self.callPackage ./packages/guile-slib {};

    guildhall = self.callPackage ./packages/guildhall {};

    gwrap = self.callPackage ./packages/g-wrap {};

    guileEnv = self.callPackage ./packages/guilewrapper;

}

#   guilePkgs = guileEnv {
#     name = "guilePkgs";
#     paths = let gp = self.guilePackages; in [
#       gp.libraries.guileCairo
#       gp.libraries.guileCurl
#       gp.libraries.guileGDB
#       gp.libraries.guileGnome
#       gp.libraries.guileJSON
#       gp.libraries.guileLib
#       gp.libraries.guileLibchop
#       gp.libraries.guileNcurses
#       gp.libraries.guileOpenGL
#       gp.libraries.guileReader
#       gp.libraries.guileSDL
#       gp.libraries.guileSkribilo
#       gp.libraries.guileSlib
#       gp.libraries.guileSly
#       gp.libraries.guileXCB
#       gp.programs.guix
#       gp.tooling.guildhall
#       gp.tooling.guile
#       gp.tooling.gwrap
#     ];
#   };

#   guilePkgs = guileEnv {
#     name = "guilePkgs";
#     paths = with self; [
#       libchop
#       gdbGuile
#       guile
#       guildhall
#       guile_lib
#       guile_ncurses
#       guile-opengl
#       guile-sdl
#       guile-xcb
#       guileCurl
#       guileCairo
#       guileGnome
#       guileJSON
#       guileReader
#       guileSkribilo
#       guileSlib
#       guileSly
#       guix
#       gwrap
#     ];
#   };



# /home/remy/.nixpkgs/packages/guilePackages/
# ├── libraries
# │   ├── guile-curl
# │   ├── guile-gnome-platform
# │   ├── guile-json
# │   ├── guile-reader
# │   ├── guile-skribilo
# │   └── guile-sly
# ├── misc
# │   └── guilewrapper
# ├── programs
# │   └── guile-emacs
# └── tooling
#     ├── guildhall
#     ├── guile
#     └── g-wrap
#
# 15 directories

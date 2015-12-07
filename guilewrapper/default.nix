{ stdenv, makeWrapper, writeText, buildEnv, guile
, name
, paths ? []
, ignoreCollisions ? false
, postBuild ? ""
}:

with builtins;

let guileVer = "2.0";
    makePath = dirs: stdenv.lib.concatStringsSep " " (map toString dirs);
    makeGuilePkgPath = pkg:
      let pfx = "${pkg}/share/guile";
          ver = guileVer;
      in map toPath [ "${pfx}/${ver}" "${pfx}/site/${ver}"
                      "${pfx}"        "${pfx}/site"        ];
    guilePkgPathList = concatLists (map makeGuilePkgPath paths);
    guilePkgPath = makePath guilePkgPathList;
    guileEnvList = makePath (map (x: toPath "${x}/nix-support/guile-env") paths);
    srcScript = writeText "guile-source-script" ''
        source ${makeWrapper}/nix-support/setup-hook
        for genv in $(filterExisting ${guileEnvList}); do
          if [[ -n "$genv" ]]; then
            source $genv
          fi
        done
    '';
in
buildEnv {
  inherit name ignoreCollisions;

  paths = paths ++ [ guile ];

  postBuild = ''
      . ${makeWrapper}/nix-support/setup-hook
      mkdir -p $out/bin/guile-binaries
      ${"mv $out/bin/*  $out/bin/guile-binaries &> /dev/null || true"}
      ${"mv $out/bin/.* $out/bin/guile-binaries &> /dev/null || true"}

      not-wrapped () {
        [[ -z $(echo "$(basename $1)" | grep -o "^\..*-wrapped$") ]]
      }
 
      rewrite () {
        if [[ ! -z $(echo "$1" | grep -o "^$out/bin") ]]; then
          echo $1 | sed "s:^$out/bin/guile-binaries:$out/bin:g"
        fi
      }

      GLP_APPEND="$(filterExisting ${guilePkgPath})"

      for prg in $(find $out/bin -executable); do
        if $(not-wrapped $prg) && [ ! -d $prg ] && [ -n "$(rewrite $prg)" ]; then
          [ ! -d $(dirname $(rewrite $prg)) ] && mkdir -v -p $(dirname $(rewrite $prg))
          echo "Wrapping $prg"
          makeWrapper $prg $(rewrite $prg) \
            --run "source ${srcScript}" \
            --suffix "LD_LIBRARY_PATH" ":" "$out/lib" \
            --suffix-each "GUILE_LOAD_PATH" ":" "$GLP_APPEND"          
        fi
      done

      find $out -type f
      
      echo "${name} - load path:"
      $out/bin/guile -c \
        '(use-modules (ice-9 pretty-print)) (pretty-print %load-path)'
  '' + "\n" + postBuild;
}

#            

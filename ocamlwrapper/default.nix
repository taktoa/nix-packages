{ stdenv, makeWrapper, buildEnv, ocaml
, name
, paths ? []
, ignoreCollisions ? false
, postBuild ? ""
}:

let ocamlVersion = (builtins.parseDrvName ocaml.name).version;
    getName = x: (builtins.parseDrvName x.name).name;
    getOcaml = x: "${x}/lib/ocaml/${ocamlVersion}/site-lib";
    getCamlLd = x: "${getOcaml x}/${getName x}";
    makePath = f: x: stdenv.lib.concatStringsSep " " (map f x);
    makeCamlLdPath = makePath getCamlLd;
    makeOcamlPath  = makePath getOcaml;
in
buildEnv {
  inherit name ignoreCollisions paths;

  postBuild = ''
      . ${makeWrapper}/nix-support/setup-hook
      mkdir -p $out/bin/ocaml-binaries
      ${"mv $out/bin/*  $out/bin/ocaml-binaries &> /dev/null || true"}
      ${"mv $out/bin/.* $out/bin/ocaml-binaries &> /dev/null || true"}

      not-wrapped () {
        [ -z $(echo "$(basename $1)" | grep -o "^\..*-wrapped$") ]
      }

      rewrite () {
        if [ ! -z $(echo $1 | grep -o ^$out/bin) ]; then
          echo $1 | sed "s:^$out/bin/ocaml-binaries:$out/bin:g"
        fi
      }

      export CLLP_APPEND="$(filterExisting ${makeCamlLdPath paths})"

      export OP_APPEND="$(filterExisting ${makeOcamlPath paths})"

      for prg in $(find $out/bin -executable); do
        if $(not-wrapped $prg) && [ ! -d $prg ] && [ -n $(rewrite $prg) ]; then
          [ ! -d $(dirname $(rewrite $prg)) ] && mkdir -v -p $(dirname $(rewrite $prg))
          echo "Wrapping $prg"
          makeWrapper $prg $(rewrite $prg)                          \
            --suffix-each "CAML_LD_LIBRARY_PATH" ":" "$CLLP_APPEND" \
            --suffix-each "OCAMLPATH"            ":" "$OP_APPEND"
        fi
      done

      unset CLLP_APPEND OP_APPEND
  '' + "\n" + postBuild;
}

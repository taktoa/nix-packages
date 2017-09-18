# { stdenv, runCommand, smackage, guile, mlton
# , standardML ? mlton
# , buildCommands ? {}
# }:
with import <nixpkgs> {};

let standardML = mlton;
    attrs = { buildInputs = [ stdenv git cacert standardML smackage guile ]; };
in runCommand "generate-smackage" attrs ''
    export GIT_SSL_CAINFO=${cacert}/etc/ssl/certs/ca-bundle.crt
    mkdir smackage-home
    export SMACKAGE_HOME=$PWD/smackage-home
    echo "Initializing smackage..."
    smackage refresh
    echo "Copying relevant files and deleting temporary \$SMACKAGE_HOME"
    cp smackage-home/sources.local      ./raw-local-sources
    cp smackage-home/versions.smackspec ./raw-package-data
    rm -rf smackage-home

    echo "Processing raw package data"
    cp raw-package-data tmp-package-data
    # For some reason the versions.smackspec file uses a context-sensitive
    # language to specify sources and versions, so this is a bit of a hack.
    # replace () { sed -i "$1" tmp-package-data; }
    # replace "s/^provides: \([^ ]*\) \([^ ]*\)$/(provides '\1 \"\2\")/g"
    # replace "s/^remote: \([^ ]*\) \([^ ]*\)$/(remote '\1 \"\2\")/g"
    # echo "'(" > tmp-begin; echo ")" > tmp-end
    # cat tmp-begin tmp-package-data tmp-end > tmp-package-data-2
    # rm tmp-package-data

    mkdir -p $out
    #${./process-smackage.scm} tmp-package-data-2 > $out/package-data.xml
    cp tmp-package-data $out/package-data.raw
    #exit -1
''

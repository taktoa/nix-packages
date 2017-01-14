{ writeScriptBin, bash, gnugrep, gnused, coreutils, cpufrequtils, systemd }:

writeScriptBin "cpuchecker" ''
    #!${bash}/bin/bash

    function grep () { ${gnugrep}/bin/grep "$@"; }
    function sed  () { ${gnused}/bin/sed   "$@"; }
    function wc   () { ${coreutils}/bin/wc "$@"; }

    export BAD_FREQ="$1"

    (( $# == 0 )) && { export BAD_FREQ="800 MHz"; }

    printf "Bad frequency = %s, running check... " "$BAD_FREQ"

    function listFreqs () {
        ${cpufrequtils}/bin/cpufreq-info                         \
            | grep 'current CPU frequency is'                    \
            | sed 's/^  current CPU frequency is //g; s/[.]$//g'
    }

    export SLOW_LINES="$(listFreqs | grep "$BAD_FREQ" | wc -l)"

    if (( SLOW_LINES > 3 )); then
        printf "failure\n"
        printf "CPUChecker v0.1: fault detected\n" \
            | ${systemd}/bin/systemd-cat -t cpuchecker
    else
        printf "success\n"
    fi
''

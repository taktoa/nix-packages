{ writeScriptBin, runCommand, chromium }:

with rec {
  version = toString 0;
  
  timer-html = runCommand "chrome-timer-html-${version}.html" {} ''
      substitute "${./src/timer.html}" "$out" \
          --subst-var-by "TIMER_SWF" "${./src/timer.swf}"
  '';
};

writeScriptBin "chrome-timer" ''
    #!/bin/sh
    ${chromium}/bin/chromium --app="file://${timer-html}" &>/dev/null
''

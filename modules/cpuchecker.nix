{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.cpuchecker;
in {
  options.services.cpuchecker = {
    enable = mkOption {
      type = types.bool;
      default = true;
      description = ''
          If enabled, NixOS will periodically check if your CPU speed
          has accidentally been locked at 800 MHz by stupid power
          saving features.
      '';
    };

    interval = mkOption {
      type = types.str;
      default = "*:0/5";
      example = "hourly";
      description = ''
          Check the CPU speed at the given interval.
          Defaults to every five minutes.
         
          The format is described in systemd.time(7).
      '';
    };
  };

  config = {
    systemd.services.cpuchecker = {
      description = "Check CPU Speed";
      path = with pkgs; [ pkgs.cpuchecker ];
      script = ''
          cpuchecker "800 MHz"
      '';
    };

    systemd.timers.cpuchecker = mkIf cfg.enable {
      description = "Timer for checking CPU speed at regular intervals";
      partOf      = [ "cpuchecker.service" ];
      wantedBy    = [ "timers.target" ];
      timerConfig.OnCalendar = cfg.interval;
    };
  };
}

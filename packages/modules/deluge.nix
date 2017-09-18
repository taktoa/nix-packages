{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.deluged;
in {
  options = {
    services.deluged = {
      enable = mkOption {
        default = false;
        example = true;
        description = ''
          Start Deluge daemon.
        '';
      };

      coreConf = mkOption {
        default = {};
        example = {
          add_paused = false;
          allow_remote = false;
          auto_managed = true;
          autoadd_enable = false;
          autoadd_location = "/home/foobar/Downloads";
          cache_expiry = 60;
          cache_size = 512;
          compact_allocation = false;
          copy_torrent_file = false;
          daemon_port = 58846;
          del_copy_torrent_file = false;
          dht = true;
          dont_count_slow_torrents = false;
          download_location = "/home/foobar/Downloads";
          enabled_plugins = [ ];
          enc_in_policy = 1;
          enc_level = 2;
          enc_out_policy = 1;
          enc_prefer_rc4 = true;
          geoip_db_location = "/usr/share/GeoIP/GeoIP.dat";
          ignore_limits_on_local_network = true;
          info_sent = 0;
          listen_interface = "";
          listen_ports = [ 6188 6188 ];
          lsd = true;
          max_active_downloading = 3;
          max_active_limit = 8;
          max_active_seeding = 5;
          max_connections_global = 200;
          max_connections_per_second = 20;
          max_connections_per_torrent = -1;
          max_download_speed = -1;
          max_download_speed_per_torrent = -1;
          max_half_open_connections = 50;
          max_upload_slots_global = 4;
          max_upload_slots_per_torrent = -1;
          max_upload_speed = -1;
          max_upload_speed_per_torrent = -1;
          move_completed = false;
          move_completed_path = "/home/foobar/Downloads";
          natpmp = true;
          new_release_check = true;
          outgoing_ports = [ 0 0 ];
          peer_tos = "0x00";
          plugins_location = "/home/foobar/.config/deluge/plugins";
          prioritize_first_last_pieces = false;
          proxies = {
            dht = {
              hostname = "";
              password = "";
              port = 8080;
              type = 0;
              username = "";
            };
            peer = {
              hostname = "";
              password = "";
              port = 8080;
              type = 0;
              username = "";
            };
            tracker = {
              hostname = "";
              password = "";
              port = 8080;
              type = 0;
              username = "";
            };
            web_seed = {
              hostname = "";
              password = "";
              port = 8080;
              type = 0;
              username = "";
            };
          };
          queue_new_to_top = false;
          random_outgoing_ports = true;
          random_port = false;
          rate_limit_ip_overhead = true;
          remove_seed_at_ratio = false;
          seed_time_limit = 180;
          seed_time_ratio_limit = 7;
          send_info = false;
          share_ratio_limit = 2;
          stop_seed_at_ratio = false;
          stop_seed_ratio = 2;
          torrentfiles_location = "/home/foobar/Downloads";
          upnp = true;
          utpex = true;
        };
      };
      
      web.enable = mkOption {
        default = false;
        example = true;
        description = ''
          Start Deluge Web daemon.
        '';
      };
    };
  };

  config = mkIf cfg.enable {

    systemd.services.deluged = {
      after = [ "network.target" ];
      description = "Deluge BitTorrent Daemon";
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.pythonPackages.deluge ];
      serviceConfig.ExecStart = "${pkgs.pythonPackages.deluge}/bin/deluged -d";
      # To prevent "Quit & shutdown daemon" from working; we want systemd to manage it!
      serviceConfig.Restart = "on-success";
      serviceConfig.User = "deluge";
      serviceConfig.Group = "deluge";
    };

    systemd.services.delugeweb = mkIf cfg.web.enable {
      after = [ "network.target" ];
      description = "Deluge BitTorrent WebUI";
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.pythonPackages.deluge ];
      serviceConfig.ExecStart = "${pkgs.pythonPackages.deluge}/bin/deluge --ui web";
      serviceConfig.User = "deluge";
      serviceConfig.Group = "deluge";
    };

    environment.systemPackages = [ pkgs.pythonPackages.deluge ];

    users.extraUsers.deluge = {
      group = "deluge";
      uid = config.ids.uids.deluge;
      home = "/var/lib/deluge/";
      createHome = true;
      description = "Deluge Daemon user";
    };

    users.extraGroups.deluge.gid = config.ids.gids.deluge;

    environment.etc = {
      "deluge/core.conf".text = ''
          {"file": 1, "format": 1}
          ${builtins.toJSON cfg.coreConf}
      '';
    };
  };
}

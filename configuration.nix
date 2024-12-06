# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  systemd.watchdog.runtimeTime = "30s";

  networking.hostName = "server"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Amsterdam";

  # Select internationalisation properties.
  i18n.defaultLocale = "de_DE.UTF-8";
  console.keyMap = "de";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.noel = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    openssh.authorizedKeys.keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDPRof+uYNQ+quAaJCq6+0vvF7TTkHmH5RErehZ1WxiRDwyqXVa1HDwwOn8bsldaElKuLkSsN/6EzS4uV1yzlOkSnBfAKeUmPv0zQmQpLYzDS9aE7FxDoOVrhmW9wMdCoGa4QGA9knrK1YjS6xjoSYm0i/jlRkt2Bz8uLtaplj0UF3urq6KmcZeSDVfKKzAUjGZo020r9fc5A0qLBNkHmMoMp1GWiXtgevxw6CGRQhVRucBt04eGNYINACUThH6tbL3gmMqXP150qJHb3g2wSRM3yjfAd2nK7lt/88Dx2xoNPtmQ2LQ5VuEhdRsV466E2+0mh3IIR9Aa+lGxgYFWdlpOfP2OQx9u9YwbZ8Og3uDaYBmCvM/oDXTuo3K1dfdqrHsDzNkM9uMmKBZeu+gE7++g5VAS1YWe2207/VXT7PnJys3NkdLizmZKV4F9i/vTx2c0OFSIYHal4cXXbj0k0atAR7GdboNA56XwcpM5qGQb7sD5dO47UiB/ew/4pNyFoc="];
  };


  #One media group for access to the media folder
  users.groups.media.gid = 811;

  users.groups.homeassistant.gid = 801;
  users.users.homeassistant.uid = 801;
  users.users.homeassistant.group = "homeassistant";

  users.groups.pihole.gid = 802;
  users.users.pihole.uid = 802;
  users.users.pihole.group = "pihole";

  users.groups.samba.gid = 803;
  users.users.samba.uid = 803;
  users.users.samba.group = "samba";
  

  users.groups.homepage.gid = 804;
  users.users.homepage.uid = 804;
  users.users.homepage.group = "homepage";

  users.groups.factorio.gid = 805;
  users.users.factorio.uid = 805;
  users.users.factorio.group = "factorio";

  users.groups.jellyfin.gid = 806;
  users.users.jellyfin.uid = 806;
  users.users.jellyfin.group = "jellyfin";
  users.users.jellyfin.extraGroups = ["media"];

  users.groups.prowlarr.gid = 807;
  users.users.prowlarr.uid = 807;
  users.users.prowlarr.group = "prowlarr";

  users.groups.qbittorrent.gid = 808;
  users.users.qbittorrent.uid = 808;
  users.users.qbittorrent.group = "qbittorrent";
  users.users.qbittorrent.extraGroups = ["media"];

  users.groups.radarr.gid = 809;
  users.users.radarr.uid = 809;
  users.users.radarr.group = "radarr";
  users.users.radarr.extraGroups = ["media"];

  users.groups.sonarr.gid = 810;
  users.users.sonarr.uid = 810;
  users.users.sonarr.group = "sonarr";
  users.users.sonarr.extraGroups = ["media"];

  users.groups.changedetection.gid = 812;
  users.users.changedetection.uid = 812;
  users.users.changedetection.group = "changedetection";

  users.groups.influxdb.gid = 813;
  users.users.influxdb.uid = 813;
  users.users.influxdb.group = "influxdb";

  users.groups.grafana.gid = 814;
  users.users.grafana.uid = 814;
  users.users.grafana.group = "grafana";

  users.groups.traefik.gid = 815;
  users.users.traefik.uid = 815;
  users.users.traefik.group = "traefik";

  users.groups.mosquitto.gid = 1883;
  users.users.mosquitto.uid = 1883;
  users.users.mosquitto.isSystemUser = true;
  users.users.mosquitto.group = "mosquitto";

  users.groups.zigbee2mqtt.gid = 817;
  users.users.zigbee2mqtt.uid = 817;
  users.users.zigbee2mqtt.group = "zigbee2mqtt";

  users.groups.esphome.gid = 818;
  users.users.esphome.uid = 818;
  users.users.esphome.group = "esphome";

  users.groups.paperless.gid = 819;
  users.users.paperless.uid = 819;
  users.users.paperless.group = "paperless";

  users.groups.nginxproxymanager.gid = 820;
  users.users.nginxproxymanager.uid = 820;
  users.users.nginxproxymanager.group = "nginxproxymanager";

  users.groups.watchtower.gid = 821;
  users.users.watchtower.uid = 821;
  users.users.watchtower.group = "watchtower";

  users.groups.authentik.gid = 822;
  users.users.authentik.uid = 822;
  users.users.authentik.group = "authentik";

  users.groups.audiobookshelf.gid = 823;
  users.users.audiobookshelf.uid = 823;
  users.users.audiobookshelf.group = "audiobookshelf";
  users.users.audiobookshelf.extraGroups = ["media"];

  users.groups.dokemon.gid = 824;
  users.users.dokemon.uid = 824;
  users.users.dokemon.group = "dokemon";

  users.groups.readarr.gid = 825;
  users.users.readarr.uid = 825;
  users.users.readarr.group = "readarr";
  users.users.readarr.extraGroups = ["media"];

  users.groups.sshwifty.gid = 826;
  users.users.sshwifty.uid = 826;
  users.users.sshwifty.group = "sshwifty";

  users.groups.gowebserver.gid = 827;
  users.users.gowebserver.uid = 827;
  users.users.gowebserver.group = "gowebserver";

  users.groups.uptimekuma.gid = 828;
  users.users.uptimekuma.uid = 828;
  users.users.uptimekuma.group = "uptimekuma";

  users.groups.immich.gid = 829;
  users.users.immich.uid = 829;
  users.users.immich.group = "immich";

  security.sudo.extraRules = [
    { users = ["noel"];
      commands = [
        { command = "ALL";
          options = ["NOPASSWD"];
        }
      ];
    }
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #   wget
    pkgs.pwgen
  ];

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "yes";


  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelModules = ["ip_tables" "ip6_tables"];
  boot.extraModprobeConfig = "options usbcore autosuspend=-1";


  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  virtualisation.docker.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?
}


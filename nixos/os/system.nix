{ config, hardware, pkgs, ... }: {

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    systemd-boot.configurationLimit = 5;
    timeout = 120;
  };

  networking = {
      hostName = "raidenshogun";
      networkmanager.enable = true;
  };

  time = {
    timeZone = "Europe/Moscow";
    hardwareClockInLocalTime = true;
  };

  i18n = {
    defaultLocale = "ru_RU.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "ru_RU.UTF-8";
      LC_IDENTIFICATION = "ru_RU.UTF-8";
      LC_MEASUREMENT = "ru_RU.UTF-8";
      LC_MONETARY = "ru_RU.UTF-8";
      LC_NAME = "ru_RU.UTF-8";
      LC_NUMERIC = "ru_RU.UTF-8";
      LC_PAPER = "ru_RU.UTF-8";
      LC_TELEPHONE = "ru_RU.UTF-8";
      LC_TIME = "ru_RU.UTF-8";
    };
  };

  users = {
    defaultUserShell = pkgs.zsh;
    users.limerence = {
      isNormalUser = true;
      description = "Rin Limerence";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ "openssl-1.1.1w" ];
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  programs.dconf.enable = true;
  system.stateVersion = "23.05";
}
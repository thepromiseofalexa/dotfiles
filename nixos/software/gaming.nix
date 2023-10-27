{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    mangohud
    protonup-qt
    lutris
    wineWowPackages.staging
    winetricks
    protontricks
  ];

programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  
  programs.gamemode.enable = true;
}
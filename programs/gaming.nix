{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    mangohud
  ];

programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  
  programs.gamemode.enable = true;
}
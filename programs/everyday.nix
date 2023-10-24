{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    (discord.override { withOpenASAR = true; withVencord = true; })
    telegram-desktop
    microsoft-edge
    youtube-music
    obsidian
  ];
}
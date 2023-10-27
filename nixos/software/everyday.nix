{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # (discord.override {
    #  withOpenASAR = true;
    #  withVencord = true;
    #})
    discord
    telegram-desktop
    microsoft-edge
    youtube-music
    obsidian
    jetbrains.idea-community
  ];

  services.flatpak.enable = true;
}
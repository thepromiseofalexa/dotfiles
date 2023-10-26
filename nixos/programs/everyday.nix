{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # TODO: Vencord + OpenASAR have problem with Discord bcs released new code version
    #(discord.override { 
    #  withOpenASAR = true; 
    #  withVencord = true; 
    #})
    discord
    telegram-desktop
    microsoft-edge
    youtube-music
    obsidian
  ];
}
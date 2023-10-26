{ inputs, config, pkgs, specialArgs, ... }:

{
  imports =
    [
      # System
      ./os/system.nix
      ./os/xserver.nix
      ./os/sound.nix
      # Hardware
      ./hardware/nvidia.nix
      ./hardware/asura.nix
      # Home-manager
      inputs.home-manager.nixosModules.home-manager
      # Programs
      ./software/everyday.nix
      ./software/development.nix
      ./software/fonts.nix
      ./software/gaming.nix
      # Shell
      ./shell/cli.nix
      ./shell/zsh.nix
      # Desktop
      # ./desktop/gnome.nix
      ./desktop/kde.nix
    ];

  nix.settings.experimental-features = [ 
      "nix-command" 
      "flakes" 
    ];
}
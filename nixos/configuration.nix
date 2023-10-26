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
      ./programs/everyday.nix
      ./programs/development.nix
      ./programs/fonts.nix
      ./programs/gaming.nix
      # Shell
      ./shell/cli.nix
      ./shell/zsh.nix
      # Desktop
      ./desktop/gnome.nix
    ];

  nix.settings.experimental-features = [ 
      "nix-command" 
      "flakes" 
    ];
}
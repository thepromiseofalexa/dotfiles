{ config, pkgs, ... }:

{
  imports =
    [
      # Modules
      ./os/system.nix
      ./os/xserver.nix
      ./os/nvidia.nix
      ./os/sound.nix
      # Programs
      ./programs/everyday.nix
      ./programs/development.nix
      ./programs/fonts.nix
      ./programs/gaming.nix
      ./programs/cli.nix
      # Desktop
      ./desktop/gnome.nix
      # Hardware
      ./hardware-configuration.nix
    ];
}
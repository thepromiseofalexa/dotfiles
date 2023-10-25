{ config, pkgs, ... }:

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
      # Programs
      ./programs/everyday.nix
      ./programs/development.nix
      ./programs/fonts.nix
      ./programs/gaming.nix
      ./programs/cli.nix
      # Desktop
      ./desktop/gnome.nix
    ];
}
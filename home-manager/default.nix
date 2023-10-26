{ config, pkgs, ... }: {

  imports = 
  [
  
  ];
  
  home.username = "limerence";
  home.homeDirectory = "/home/limerence";
  home.stateVersion = "23.05"; # Please read the comment before changing.
  programs.home-manager.enable = true;

  nixpkgs.config = {
    allowUnfree = true;
  };
}

{ config, pkgs, ... }: {

  imports = 
  [

  ];
  
  home.username = "limerence";
  home.homeDirectory = "/home/limerence";
  home.stateVersion = "23.05";
  programs.home-manager.enable = true;

  nixpkgs.config = {
    allowUnfree = true;
  };
}

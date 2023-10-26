{ config, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      nix-rebuild = "sudo nixos-rebuild switch && sudo nix-collect-garbage -d";
      dotfiles = "cd ~/dotfiles";
    };
    ohMyZsh = {
      enable = true;
      plugins = [ "git" "thefuck" ];
      theme = "agnoster";
    };
  };

  users = {
    defaultUserShell = pkgs.zsh;
  };
}
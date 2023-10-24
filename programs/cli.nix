{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    wget
    git
    unzip
    zenith-nvidia
    thefuck
    nitch
  ];

  programs.zsh = {
    enable = true;
    shellAliases = {
      update = "sudo nixos-rebuild switch";
      stats = "nitch";
      dotfiles = "cd ~/Документы/dotfiles";
    };
    ohMyZsh = {
      enable = true;
      plugins = [ "git" "thefuck" ];
      theme = "agnoster";
    };
  };

  users.defaultUserShell = pkgs.zsh;
}
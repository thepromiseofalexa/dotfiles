{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    neofetch
    vscode
    wezterm
    wget
    git
    unzip
    github-desktop
  ];
}
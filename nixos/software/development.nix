{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vscode-fhs
    wezterm
    github-desktop
  ];
}
{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # vscode-fhs
    jetbrains.idea-community
    wezterm
    github-desktop
  ];
}
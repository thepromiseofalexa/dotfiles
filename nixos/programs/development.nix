{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
      jnoortheen.nix-ide
      mskelton.one-dark-theme
      wakatime.vscode-wakatime
      ];
    })
    wezterm
    github-desktop
  ];
}
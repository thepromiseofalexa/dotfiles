{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gnomeExtensions.appindicator
    gnomeExtensions.big-avatar
    gnomeExtensions.dash-to-dock
    gnome.gnome-tweaks
  ];

  services.udev.packages = with pkgs; [
    gnome.gnome-settings-daemon
  ];
}
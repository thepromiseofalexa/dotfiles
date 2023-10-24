{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gnomeExtensions.appindicator
    gnomeExtensions.big-avatar
    gnomeExtensions.dash-to-dock
    gnome.gnome-tweaks
    gnome.seahorse
    papirus-icon-theme
  ];

  services.udev.packages = with pkgs; [
    gnome.gnome-settings-daemon
  ];

  services.gnome.gnome-keyring.enable = true;
}
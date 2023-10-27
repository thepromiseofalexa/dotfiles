{ pkgs, ... }: {

  services.xserver = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  environment.systemPackages = with pkgs; [
    # Extensions
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.pop-shell
    gnomeExtensions.blur-my-shell
    gnomeExtensions.just-perfection
    gnomeExtensions.workspace-indicator
    # GNOME packages
    gnome.gnome-tweaks
    gnome.seahorse
    gnome.gnome-software
    # Themes
    papirus-icon-theme
  ];

  services.udev.packages = with pkgs; [
    gnome.gnome-settings-daemon
  ];

  services.gnome.gnome-keyring.enable = true;
}
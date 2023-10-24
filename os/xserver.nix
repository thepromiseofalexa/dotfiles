{ config, hardware, ... }: {

  services.xserver = {
    enable = true;
    videoDrivers = ["nvidia"];
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    layout = "us";
    xkbVariant = "";
  };
}
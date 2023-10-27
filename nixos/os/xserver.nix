{ config, hardware, ... }: {

  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
  };
}
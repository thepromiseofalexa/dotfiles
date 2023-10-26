{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    wget
    git
    unzip
    zenith-nvidia
    thefuck
    nitch
  ];
}
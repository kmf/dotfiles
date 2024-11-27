{
  services.xserver = {
    enable = true;
    # displayManager.gdm.enable = true;
    # displayManager.gdm.wayland = false;
    # desktopManager.gnome.enable = true;

    xkb.layout = "us";
    xkb.variant = "";

    videoDrivers = [ "nvidia" ];
  };
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.defaultSession = "plasmax11";
}

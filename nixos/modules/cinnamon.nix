{
  services.xserver = {
		enable = true;
    videoDrivers = [ "nvidia" ];
		displayManager.lightdm.enable = true;
		desktopManager = {
			cinnamon.enable = true;
		};
	};
	services.libinput.enable = true;
}
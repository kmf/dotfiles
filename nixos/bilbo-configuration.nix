{ ... }: {
  imports = [
    ./bilbo-hardware-configuration.nix
    ./bilbo-packages.nix
    ./modules/bilbo-bundle.nix
  ];

#  disabledModules = [
#    ./modules/xserver.nix
#  ];


  networking.hostName = "bilbo"; # Define your hostname.

  time.timeZone = "Africa/Johannesburg"; # Set your time zone.

  i18n.defaultLocale = "en_ZA.UTF-8"; # Select internationalisation properties.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  services.openssh.enable = true;

  system.stateVersion = "24.05"; # Don't change it bro
}

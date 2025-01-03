{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules.nix
  ];

#  disabledModules = [
#    ./modules/xserver.nix
#  ];

  nix.settings.trusted-substituters = [ "https://cache.flox.dev" ];
  nix.settings.trusted-public-keys = [ "flox-cache-public-1:7F4OyH7ZCnFhcze3fJdfyXYLQw/aV7GEed86nQ7IsOs=" ];

  networking.hostName = "oakenshield"; # Define your hostname.

  time.timeZone = "Africa/Johannesburg"; # Set your time zone.

  i18n.defaultLocale = "en_ZA.UTF-8"; # Select internationalisation properties.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  services.openssh.enable = true;

  system.stateVersion = "24.05"; # Don't change it bro
}

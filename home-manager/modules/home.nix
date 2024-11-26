{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  fonts.fontconfig.enable = true;

  home = {
    username = "kmf";
    homeDirectory = "/home/kmf";
    stateVersion = "24.05";
  };
}

{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  fonts.fontconfig.enable = true;
  home = {
    username = "kmf";
    homeDirectory = "/home/kmf";
    stateVersion = "24.11";
    sessionVariables = {
      AW_SYNC_DIR = "/home/kmf/Dropbox/configs/ActivityWatch";
      FLAKE = "/home/kmf/dotfiles";
    };
  };
}

{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  fonts.fontconfig.enable = true;
  catppuccin.enable = true;
  home = {
    username = "kmf";
    homeDirectory = "/home/kmf";
    stateVersion = "24.05";
    sessionVariables = {
      AW_SYNC_DIR = "/home/kmf/Dropbox/configs/ActivityWatch";
      FLAKE = "/home/kmf/dotfiles";
    };
  };
}

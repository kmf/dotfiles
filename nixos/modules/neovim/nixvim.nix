{
  imports = [
    ./colorschemes.nix
    ./globals.nix
    ./opts.nix
    ./keymaps.nix
    ./autocmds.nix
    ./plugins
    ./plugins/extraPlugins.nix
  ];

  programs.nixvim = {
    enable = true;
    enableMan = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
  };
}

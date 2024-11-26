_: {
  programs.nixvim = {
    enable = true;
    enableMan = true;
    viAlias = true;
    vimAlias = true;
    globals = import ./globals.nix;
    colorschemes = import ./colorschemes.nix;
    keymaps = import ./keymaps.nix;
    opts = import ./options.nix;
    autoCmd = import ./autocmds.nix;
    plugins = import ./plugins;
    imports = [
      ./plugins/extraPlugins.nix
    ];
  };
}

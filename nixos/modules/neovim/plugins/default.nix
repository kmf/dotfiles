{
  programs.nixvim.plugins = {
    barbar.enable = true;
    comment.enable = true;
    conform-nvim.enable = true;
    copilot-vim.enable = true;
    chadtree.enable = false;
    direnv.enable = true;
    gitsigns.enable = true;
    lazygit.enable = true;
    lsp = {
      enable = true;
      servers = import ./lsp/servers.nix;
    };
    lualine.enable = true;
    luasnip.enable = true;
    multicursors.enable = true;
    neo-tree = {
      enable = true;
      enableGitStatus = true;
      closeIfLastWindow = true;
      filesystem.filteredItems.hideGitignored = false;
      filesystem.filteredItems.hideDotfiles = false;
    };
    neogit.enable = true;
    nix.enable = true;
    nix-develop.enable = true;
    nvim-autopairs.enable = true;
    obsidian = {
      enable = true;
      settings = import ./obsidian/workspaces.nix;
    };
    preview.enable = true;
    project-nvim.enable = true;
    todo-comments.enable = true;
    telescope = {
      enable = true;
      settings = {
        defaults = {
          layout_config = {
            horizontal = {
              prompt_position = "top";
            };
          };
        };
        pickers = {
          colorscheme = {
            enable_preview = true;
          };
        };
      };
      extensions = {
        file-browser = {
          enable = true;
          settings = {
            theme = "ivy";
            depth = 1;
            grouped = true;
            hijack_netwr = true;
            hide_parent_dir = true;
          };
        };
        ui-select = {
          enable = true;
        };
        frecency = {
          enable = true;
        };
        undo = {
          enable = true;
        };
      };
    };

    treesitter.enable = true;
    rainbow-delimiters.enable = true;
    undotree.enable = false;
    which-key = {
      enable = true;
      settings = {
        plugins = {
          spelling = {
            enabled = true;
          };
        };
      };
    };
    toggleterm.enable = true;
    spectre.enable = true;
    web-devicons.enable = true;
    yazi.enable = false;
    yanky = {
      enable = true;
      enableTelescope = true;
      settings = {
        highlight = {
          timer = 200;
        };
      };
    };
  };
}

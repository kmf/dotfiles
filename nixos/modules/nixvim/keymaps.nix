{
  programs.nixvim = {
    keymaps =

      [
        {
          action = "<cmd>Telescope live_grep<CR>";
          key = "<leader>l";
          options = {
            desc = "Telescope live grep";
          };
        }
        {
          action = "<cmd>Telescope file_browser<CR>";
          key = "<leader>f";
          options = {
            desc = "Toggle File Browser";
          };
        }
        {
          action = "<cmd>Telescope buffers<CR>";
          key = "<leader>b";
          options = {
            desc = "Toggle buffers";
          };
        }
        {
          action = "<cmd>Telescope undo<CR>";
          key = "<leader>u";
          options = {
            desc = "Toggle undo";
          };
        }
        {
          action = "<cmd>ObsidianSearch<CR>";
          key = "<leader>o";
          options = {
            desc = "Toggle Obsidian search";
          };
        }
        {
          action = "<cmd>LazyGit<CR>";
          key = "<leader>g";
          options = {
            desc = "Toggle LazyGit";
          };
        }
        {
          action = "<cmd>ToggleTerm<CR>";
          key = "<leader>t";
          options = {
            desc = "Toggle term";
          };
        }
        {
          action = "<cmd>Telescope find_files prompt_prefix=🔍  theme=dropdown<CR>";
          key = "<leader>n";
          options = {
            desc = "Toggle Find Files";
          };
        }
        {
          action = "<cmd>Telescope projects<CR>";
          key = "<leader>p";
          options = {
            desc = "Toggle Projects";
          };
        }
      ];
  };
}

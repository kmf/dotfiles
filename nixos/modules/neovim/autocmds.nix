[
      {
      event = ["FileType"];
     pattern = [
          "*.txt"
          "*.tex"
          "*.typ"
          "yml"
          "gitcommit"
          "markdown"
          "lazygit"
        ];
 
      callback = {
        __raw = ''
          function()
            vim.opt_local.wrap = true
            vim.opt_local.spell = true
          end
        '';
      };
    }
    ]



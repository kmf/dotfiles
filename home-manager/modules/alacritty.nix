{
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.95;

      font = {
        size = 16.0;
        # draw_bold_text_with_bright_colors = true;
        normal = {
          family = "CodeNewRoman Nerd Font Mono";
          style = "Bold";
        };
      };
    };
  };
}

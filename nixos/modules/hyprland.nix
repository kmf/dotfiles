{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}

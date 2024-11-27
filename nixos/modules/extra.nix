{
  # Applications
  programs.appimage = {
    enable = true;
    binfmt = true;
  };


  services.flatpak.enable = true;

  # Steam
  programs.steam = {
    enable = true;
  };


}

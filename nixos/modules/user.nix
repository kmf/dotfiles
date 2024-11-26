{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.kmf = {
      isNormalUser = true;
      description = "Karl Fischer";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" "podman" "docker"];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  # services.getty.autologinUser = "kmf";
}

{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    # permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Coding stuff
    (python312.withPackages (ppkgs: with ppkgs; [
        ansible
        molecule-plugins
        molecule
        requests
      ]))
    # CLI utils
    ansible-language-server
    ansible-lint
    awscli2
    bat
    brightnessctl
    btop
    clipse
    cocogitto
    devenv
    direnv
    eza
    fastfetch
    file
    fm
    fzf
    git
    go
    htop
    k9s
    lazygit
    mc
    neofetch
    nh
    nil
    nix-index
    nixd
    nixfmt-rfc-style
    nixos-generators
    ntfs3g
    openssl
    pandoc
    pciutils
    python312Packages.docker
    ranger
    rclone
    restic
    ripgrep
    ripgrep-all
    screen
    starship
    syncthing
    tree
    unzip
    wget
    yazi
    yt-dlp
    zip
    zsh
    home-manager
  ];
}

{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    alacritty
    obs-studio
    kdenlive
    discord
    flatpak
    google-chrome
    gparted
    obsidian
    zoom-us
    dropbox
    drawio
    slack
    vscode

    # GNOME
    gnomeExtensions.system-monitor-next
    gnomeExtensions.pop-shell
    gnomeExtensions.appindicator

    # Coding stuff
    (python312.withPackages (ppkgs: with ppkgs; [
        ansible
        molecule-plugins
        molecule
        requests
        docker
      ]))
    # CLI utils
    ansible-language-server
    ansible-lint
    awscli2
    bat
    btop
    cocogitto
    devenv
    direnv
    docker-compose
    eza
    fastfetch
    file
    fm
    fzf
    git
    go
    htop
    k9s
    kubectl
    lazydocker
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
    ollama
    openshift
    openssl
    pandoc
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

  # Networking
    networkmanager-openvpn
    networkmanager-openconnect
    networkmanager-fortisslvpn
    openvpn
    openvpn3

  # iPhone
    ifuse
    libimobiledevice

  # GUI utils
    vlc

    # Xorg stuff
    #xterm
    #xclip
    #xorg.xbacklight


    # Sound
    pipewire
    pulseaudio
    pamixer

    # Other
    home-manager
    spice-vdagent
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    papirus-nord
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [
      "NerdFontsSymbolsOnly"
      "CodeNewRoman"
      "FiraCode"
      "CascadiaMono"
    ]; })
  ];
}

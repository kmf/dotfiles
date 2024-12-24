{ pkgs, pkgs-unstable, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    # permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    pkgs-unstable.vscode
    google-chrome
    adoptopenjdk-icedtea-web
    alacritty
    # activitywatch
    # aw-notify
    # aw-qt
    # aw-server-rust
    # aw-watcher-window
    discord
    distrobox
    drawio
    dropbox
    flatpak
    gparted
    kdenlive
    mpv
    obs-studio
    obsidian
    slack
    teamviewer
    wpsoffice
    zoom-us



    # GNOME
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.pop-shell
    gnomeExtensions.system-monitor-next

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
    clipse
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
    jdk8
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

  # Pantheon
  # pantheon-tweaks

  # KDE
    kdePackages.merkuro
    kdePackages.qtlocation
    kdePackages.calendarsupport
    kdePackages.akonadi-calendar-tools
    kdePackages.akonadi-calendar
    kdePackages.kdeconnect-kde
    kdePackages.kscreenlocker
    deepin.deepin-icon-theme


   # Sound
    pipewire
    pulseaudio
    pamixer
    pwvucontrol
    pavucontrol
    helvum
    
    # Other
    maestral
    maestral-gui
    # Hyprland
    kitty
    hyprpaper
    
    hyprcursor
    nwg-look
    nwg-dock-hyprland

    hyprpolkitagent

    hyprutils
    hyprlandPlugins.hyprexpo
    hyprlandPlugins.hyprspace
    hyprlandPlugins.hyprbars
    hyprlandPlugins.hyprfocus
    hyprland-activewindow
    hyprlandPlugins.hyprtrails
    hyprlandPlugins.hyprscroller
    hyprlandPlugins.borders-plus-plus
    hyprlandPlugins.hypr-dynamic-cursors
    hyprcursor
    hyprsunset

    hyprwayland-scanner
    rofi-wayland
    playerctl
    wl-clipboard
    wlogout
    hypridle
    hyprlock

    # waybar
    waybar
    waybar-mpris

    networkmanagerapplet

    # icons
    bibata-cursors
    apple-cursor
    deepin.deepin-icon-theme
    pop-icon-theme
    qogir-icon-theme
    qogir-theme
    qogir-kde

    #screenshot
    grim
    slurp

    # hyper osd
    swayosd
    syshud
    avizo
    dunst
    libnotify

    xdg-desktop-portal-gtk


    # config
    hyprgui
    # clipboard
    cliphist

   # catppuccin
    catppuccin
    catppuccin-gtk
    catppuccin-cursors
    magnetic-catppuccin-gtk

    home-manager
    spice-vdagent
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
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

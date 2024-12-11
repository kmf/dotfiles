{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    # permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    activitywatch
    adoptopenjdk-icedtea-web
    alacritty
    aw-notify
    aw-qt
    aw-server-rust
    aw-watcher-window
    dropbox
    flatpak
    google-chrome
    obsidian
    slack
    vscode
    zoom-us



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

    # GNOME 
    gnomeExtensions.pop-shell 
    gnomeExtensions.appindicator
   
    # Sound
    pipewire
    pulseaudio
    pamixer
    pwvucontrol
    pavucontrol
    helvum
    
    # Screenrecorder
    wayfarer

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
    waybar
    waybar-mpris
    wl-clipboard
    wlogout
    hypridle
    hyprlock

    # waybar 
    networkmanagerapplet
    
    # icons
    bibata-cursors
    apple-cursor
    papirus-icon-theme
    deepin.deepin-icon-theme
    pop-icon-theme

    #screenshot 
    grim
    slurp

    # hyper osd
    swayosd
    syshud
    avizo

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

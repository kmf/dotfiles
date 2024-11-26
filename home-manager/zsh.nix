{ config, ... }: {
  programs.zsh = {
    enable = true;
    profileExtra = "HIST_STAMPS='yyyy-mm-dd'";
    autosuggestion.enable = true;
    enableCompletion = true;
    history = {
      path = "${config.xdg.dataHome}/zsh/history";
      extended = true;
      save = 10000;
      size = 10000;
      share = true;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "ansible"
        "brew"
        "command-not-found"
        "direnv"
        "fzf"
        "git"
        "kitty"
        "kubectl"
        "minikube"
        "rsync"
        "starship"
        "systemadmin"
        "terraform"
        "vagrant"
        "wd"
        ];
      };
  };
}

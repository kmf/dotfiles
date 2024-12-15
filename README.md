# ❄️ My NixOS Config

```bash
git clone https://github.com/kmf/dotfiles
cd $HOME/dotfiles
sudo nixos-rebuild switch --flake .
home-manager switch --flake .
```



## Enable `nix-command` and `flakes`

Add this `/etc/nixos/configuration.nix`

```
nix.settings.experimental-features = [ "nix-command" "flakes" ];
```
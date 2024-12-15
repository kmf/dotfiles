{
  description = "My system configuration";

  inputs = {

    # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    catppuccin.url = "github:catppuccin/nix";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      home-manager,
      ...
    }@inputs:

    let
      system = "x86_64-linux";
    in
    {

      # nixos - system hostname
      nixosConfigurations.oakenshield = nixpkgs.lib.nixosSystem {
        specialArgs = {
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
          inherit inputs system;
        };
        modules = [
          ./nixos/configuration.nix
          inputs.nixvim.nixosModules.nixvim
          inputs.catppuccin.nixosModules.catppuccin
        ];
      };

      nixosConfigurations.bilbo = nixpkgs.lib.nixosSystem {
        specialArgs = {
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
          inherit inputs system;
        };
        modules = [
          ./nixos/bilbo-configuration.nix
          inputs.nixvim.nixosModules.nixvim
          inputs.catppuccin.nixosModules.catppuccin
        ];
      };

      homeConfigurations.kmf = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [
          ./home-manager/home.nix
          inputs.catppuccin.homeManagerModules.catppuccin
        ];
      };
    };
}

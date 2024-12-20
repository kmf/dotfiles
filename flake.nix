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

    {
      # nixos - system hostname
      nixosConfigurations.oakenshield = let
        system = "x86_64-linux";
      in nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ({...}: { nixpkgs.config.allowUnfree = true; })
          ./systems/oakenshield/configuration.nix
          inputs.nixvim.nixosModules.nixvim
          inputs.catppuccin.nixosModules.catppuccin
          inputs.home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.kmf = import ./home-manager/home.nix;
          }
        ];
      };

      nixosConfigurations.bilbo = let
        system = "x86_64-linux";
      in nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ({...}: { nixpkgs.config.allowUnfree = true; })
          ./systems/bilbo/configuration.nix
          inputs.nixvim.nixosModules.nixvim
          inputs.catppuccin.nixosModules.catppuccin
        ];
      };

      nixosConfigurations.rpi4 = let
        system = "aarch64-linux";
      in nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ({...}: { nixpkgs.config.allowUnfree = true; })
          ./systems/rpi4/configuration.nix
          inputs.nixvim.nixosModules.nixvim
          inputs.catppuccin.nixosModules.catppuccin
        ];
      };

      homeConfigurations.kmf = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          ./home-manager/home.nix
          inputs.catppuccin.homeManagerModules.catppuccin
        ];
      };
    };
}

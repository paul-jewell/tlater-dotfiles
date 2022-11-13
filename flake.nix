{
  description = "tlater's dotfiles";

  inputs = {
    # NixOS related inputs
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # home-manager related inputs
    home-manager = {
      url = "github:nix-community/home-manager/release-22.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nurpkgs = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    sops-nix,
    ...
  } @ inputs: {
    nixosConfigurations = {
      yui = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./nixos-config
          ./nixos-config/yui
        ];

        specialArgs.flake-inputs = inputs;
      };

      ct-lt-02052 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./nixos-config
          ./nixos-config/ct-lt-02052
        ];

        specialArgs.flake-inputs = inputs;
      };
    };

    packages.x86_64-linux = import ./pkgs {
      inherit self;
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    };

    checks.x86_64-linux = import ./checks {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      lib = nixpkgs.lib;
      flake-inputs = inputs;
    };

    devShells.x86_64-linux.default = let
      inherit (sops-nix.packages.x86_64-linux) sops-init-gpg-key sops-import-keys-hook;
      commit-nvfetcher = self.packages.x86_64-linux.commit-nvfetcher;
      home-manager-bin = home-manager.packages.x86_64-linux.default;
    in
      nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = [
          commit-nvfetcher
          home-manager-bin
          sops-init-gpg-key
        ];

        sopsPGPKeyDirs = ["./keys/hosts/" "./keys/users/"];
        nativeBuildInputs = [
          sops-import-keys-hook
        ];
      };
  };
}

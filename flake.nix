{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, self, ... }:
    let
      inherit (builtins) getEnv;
      inherit (home-manager.lib) homeManagerConfiguration;
    in {
      homeConfigurations = {
        lemonadern =
          let
            system = "x86_64-linux";
            pkgs = import nixpkgs { inherit system; };
          in homeManagerConfiguration {
            inherit pkgs;
            modules = [ ./home.nix ];
          };
      };

      packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

      packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

    };
}

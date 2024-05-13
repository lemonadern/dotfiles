{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    ...
  }: let
    inherit (home-manager.lib) homeManagerConfiguration;
  in {
    homeConfigurations = {
      lemonadern = let
        system = "x86_64-linux";
        pkgs = import nixpkgs {inherit system;};
      in
        homeManagerConfiguration {
          inherit pkgs;
          modules = [./home.nix];
        };
    };
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
  };
}

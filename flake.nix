{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # vimdoc
    vimdoc-ja = {
      url = "github:vim-jp/vimdoc-ja";
      flake = false;
    };
  };

  outputs = { nixpkgs, home-manager, self, ... }@inputs:
    let
      inherit (builtins) getEnv;
      inherit (home-manager.lib) homeManagerConfiguration;
    in {
      homeConfigurations = {
        lemonadern =
          let
            system = "x86_64-linux";
            overlay = ( final: prev: {
              vimPlugins = prev.vimPlugins // {
                vimdoc-ja = buildVimPlugin {
                  pname = "vimdoc-ja";
                  version = "20XX-XX-XX";
                  src = inputs.vimdoc-ja;
                };
              };
            });
            pkgs = import nixpkgs {
              inherit system; 
              overlays = [ overlay ];
            };
            inherit (pkgs.vimUtils) buildVimPlugin;
          in homeManagerConfiguration {
            inherit pkgs;
            modules = [ ./home.nix ];
          };
      };
    };
}


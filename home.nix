{ config, pkgs, ... }:

let
  inherit (builtins) getEnv;
in {
  imports = [
    ./nix/git.nix
    ./nix/neovim.nix
    ./nix/zsh
    ./nix/starship.nix
    # ./nix/alacritty.nix
    # ./nix/tmux.nix
  ];

  home = {
    username = "lemonadern"; 
    homeDirectory = "/home/lemonadern"; 
    stateVersion = "23.11";
    packages = with pkgs; [
        nil 
        yarn
        pnpm
        nodejs_20
        deno
        rye
        gh
        ghq
        fzf
        (nerdfonts.override {
          fonts = [
            "JetBrainsMono"
          ];
        })
        neofetch
    ];
  };

  nix = {
    package = pkgs.nixFlakes;
    settings = {
      experimental-features = "nix-command flakes";
    };
  };

  programs.home-manager.enable = true;
}


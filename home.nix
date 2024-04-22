{ config, pkgs, ... }:

let inherit (builtins) getEnv;
in {
  imports = [
    ./nix/git.nix
    ./nix/gh.nix
    ./nix/neovim
    ./nix/zsh
    ./nix/starship.nix
    # ./nix/alacritty.nix
    ./nix/tmux.nix
  ];

  home = {
    username = "lemonadern";
    homeDirectory = "/home/lemonadern";
    stateVersion = "23.11";
    packages = with pkgs; [
      nil
      yarn
      corepack_20
      nodejs_20
      deno
      cargo
      rustc
      rye
      ghq
      fzf
      eza
      bat
      ripgrep
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
      neofetch
    ];
  };

  nix = {
    package = pkgs.nixFlakes;
    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
    };
  };

  programs.home-manager.enable = true;
}


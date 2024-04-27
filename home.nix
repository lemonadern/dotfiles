{ pkgs, ... }: {
  imports = [
    ./nix/git.nix
    ./nix/gh.nix
    ./nix/neovim
    ./nix/zsh
    ./nix/starship.nix
    # ./nix/alacritty.nix
    ./nix/tmux.nix
    ./nix/direnv.nix
  ];

  home = {
    username = "lemonadern";
    homeDirectory = "/home/lemonadern";
    stateVersion = "23.11";
    packages = with pkgs; [
      nil
      xclip
      yarn
      corepack_20
      nodejs-slim_20
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


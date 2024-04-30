{ pkgs, ... }: {
  imports = [
    ./modules/git.nix
    ./modules/gh.nix
    ./modules/neovim
    ./modules/zsh
    ./modules/starship.nix
    # ./modules/alacritty.nix
    ./modules/tmux.nix
    ./modules/direnv.nix
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
      perl # using in zsh git switch (`modules/zsh/zshrc`)
      cargo
      rustc
      rye
      ghq
      fzf
      eza # ls alternative
      bat # cat alternative
      fd # find alternative
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


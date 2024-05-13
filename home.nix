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
      xclip
      nil
      alejandra # nix formatter
      lua-language-server
      nodePackages.vim-language-server

      yarn
      corepack_20
      nodejs-slim_20
      deno
      rye
      ghq

      perl # using in zsh git switch (`modules/zsh/zshrc`)

      fzf
      # classic command alternatives
      eza # ls
      bat # cat
      fd # find
      ripgrep # grep

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


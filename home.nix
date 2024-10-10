{pkgs, ...}: {
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

      nil # nix LS
      alejandra # nix formatter
      lua-language-server
      rust-analyzer
      nodePackages.vim-language-server
      ast-grep

      act
      actionlint

      # utilities
      yarn
      corepack_20
      nodejs_20
      deno
      python3
      go
      opam
      rye
      rbenv
      ghq
      fzf

      perl # using in zsh git switch (`modules/zsh/zshrc`)

      # classic command alternatives
      eza # ls
      bat # cat
      fd # find
      ripgrep # grep

      (nerdfonts.override {fonts = ["JetBrainsMono"];})
      neofetch
    ];
  };

  programs.lazygit = {
    enable = true;
    settings = {
      gui.language = "en";
    };
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

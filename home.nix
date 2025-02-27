{pkgs, ...}: {
  imports = [
    ./modules/git.nix
    ./modules/gh.nix
    ./modules/neovim
    ./modules/zsh
    ./modules/starship.nix
    ./modules/tmux.nix
    ./modules/direnv.nix
  ];

  home = {
    username = "lemonadern";
    homeDirectory = "/home/lemonadern";
    stateVersion = "24.11";
    packages = with pkgs; [
      xclip

      nil # nix LS
      alejandra # nix formatter
      lua-language-server
      rust-analyzer
      nodePackages.vim-language-server
      pre-commit

      act
      actionlint
      rbenv
      sqlite

      # language environments
      yarn
      corepack_20
      nodejs_20
      deno
      python3
      opam
      rye
      ruff
      perl # using in zsh git switch (`modules/zsh/zshrc`)

      gdb
      ghq
      fzf
      fzf-make

      # classic command alternatives
      eza # ls
      bat # cat
      fd # find
      ripgrep # grep

      jnv # Interactive JSON viewer and jq filter editor
      ast-grep # grep for ast, not text
      ripgrep-all # grep for pdf, docx, sqlite, jpg, mp4, etc.
      tokei # code counter
      bottom # graphical process/system monitor (fancy `top`)
      ivy # an APL like calculator

      (nerdfonts.override {fonts = ["JetBrainsMono"];})
      neofetch
      wrangler
    ];
  };

  programs.lazygit = {
    enable = true;
    settings = {
      gui.language = "en";
    };
  };

  nix = {
    package = pkgs.nixVersions.stable;
    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
    };
  };

  programs.home-manager.enable = true;
}

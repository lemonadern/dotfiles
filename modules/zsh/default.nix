{
  programs.zsh = {
    enable = true;

    autocd = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    completionInit = "autoload -U compinit && compinit -i";
    defaultKeymap = "emacs";
    history = {
      expireDuplicatesFirst = true;
      extended = true;
      ignoreDups = true; # 重複をignore
      ignoreSpace = true; # 先頭にスペースの入ったコマンドをignore
      ignoreAllDups = true;
      path = "$HOME/.zsh_history";
      save = 10000;
      size = 10000;
      share = true;
    };
    shellAliases = {
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
      dl = "cd ~/Downloads/";
      cdg = "cd ~/git/";

      g = "git";
      ga = "git add";
      "ga." = "git add .";
      gcm = "git commit -m";
      st = "git status";
      gdf = "git diff";

      d = "docker";
      dcu = "docker compose up";
      dcud = "docker compose up -d";
      dcub = "docker compose up --build";
      dcudb = "docker compose up -d --build";
      dcd = "docker compose down";


      et = "exit";

      ls = "eza --classify=always";
      la = "eza --all --classify=always"; # ls -A
      ll = "eza --all --long --classify=always"; # ls -alF
      lsg = "eza --all --long --classify=always --git";
      tree = "eza --icons=always --classify=always --tree";

      ts = "tree-sitter";
      
    };
    initExtra = builtins.readFile ./zshrc;
    profileExtra = builtins.readFile ./zprofile;
    loginExtra = ''
      FPATH=${./functions}:$FPATH
      export FPATH

      . ${./zsh_aliases}
      . ${./completion.zsh}
    '';
  };
}

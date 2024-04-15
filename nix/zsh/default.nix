{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    completionInit = "autoload -U compinit && compinit -i";
    defaultKeymap = "emacs";
    history = {
      expireDuplicatesFirst = true;
      extended = true;
      ignoreDups = true;
      path = "$HOME/.zsh_history";
      save = 10000;
      share = true;
      size = 10000;
    };
    shellAliases = {
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";

      g = "git";
      ga = "git add";
      "ga." = "git add .";
      st = "git status";
      gdf = "git diff";

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

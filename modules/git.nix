{
  programs.git = {
    enable = true;

    aliases = {
      st = "status";
      sw = "switch";
      sc = "switch -c";
      a = "add";
      cm = "commit -m";
      df = "diff";
      br = "branch";
      lgn =
        "log --graph --decorate --abbrev-commit --format=format:'%C(blue)%h%C(reset) - %C(green)(%ar)%C(reset)%C(yellow)%d%C(reset)%C(white)%s%C(reset) %C(dim white)- %an%C(reset)'";
    };

    extraConfig = {
      init = { defaultBranch = "master"; };
      push = { autoSetupRemote = true; };
    };

    userName = "Taishi Naka";
    userEmail = "taishi.develop@gmail.com";
  };
}


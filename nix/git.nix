{
  programs.git = {
    enable = true;

    aliases = {
        st = "status";
        a = "add";
        cm = "commit -m";
        df = "diff";
        br = "branch";
        lgn = "log --graph --decorate --abbrev-commit --format=format:'%C(blue)%h%C(reset) - %C(green)(%ar)%C(reset)%C(yellow)%d%C(reset)\n  %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'";
    };

    extraConfig = {
      init = {
        defaultBranch = "master";
      };
    };

    userName = "Taishi Naka";
    userEmail = "taishi.develop@gmail.com";
  };
}


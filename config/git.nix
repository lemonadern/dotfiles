{
  programs.git = {
    enable = true;

    aliases = {
        st = "status";
        a = "add";
        cm = "commit -m";
        df = "diff";
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


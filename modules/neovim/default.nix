{pkgs, ...}: {
  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    # plugins = with pkgs.vimPlugins; [
    #   {
    #     plugin = kanagawa-nvim;
    #     config = ''
    #       colorscheme kanagawa
    #     '';
    #   }
    # ];

    # extraConfig = builtins.readFile ./init.vim;
    extraLuaConfig = builtins.readFile ./init.lua;
  };
}

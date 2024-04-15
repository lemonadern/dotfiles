{pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    
    viAlias = true;
    vimAlias = true;
    extraConfig = ''
      set number relativenumber
    '';
    
    plugins = with pkgs.vimPlugins; [
        vim-nix
        {
          plugin = kanagawa-nvim;
          config = ''
              colorscheme kanagawa
          '';
        }
    ];
  };
}

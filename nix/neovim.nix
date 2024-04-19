{pkgs, config, ... }:
{
  programs.neovim = {
    enable = true;
    
    withPython3 = true;
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
        {
          plugin = vimdoc-ja;
          config = ''
            set helplang=ja,en
          '';
        }
    ];
  };
}

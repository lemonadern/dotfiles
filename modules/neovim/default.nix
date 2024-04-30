{ pkgs, config, ... }: {
  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      vim-nix
      {
        plugin = kanagawa-nvim;
        config = ''
          colorscheme kanagawa
        '';
      }
    ];

    coc = {
      enable = true;
      settings = {
        languageserver = {
          nix = {
            command = "nil";
            filetypes = [ "nix" ];
            rootPatterns = [ "flake.nix" ];
            settings = {
              nil = { formatting = { command = [ "nixpkgs-fmt" ]; }; };
            };
          };
        };
      };
    };

    extraConfig = builtins.readFile ./init.vim;

  };
}

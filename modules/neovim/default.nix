{ pkgs, ... }: {
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

      nvim-lspconfig
      {
        plugin = mason-nvim;
        type = "lua";
        config = builtins.readFile ./config/mason-nvim.lua;
      }
      {
        plugin =mason-lspconfig-nvim;
        type = "lua";
        config = builtins.readFile ./config/mason-lspconfig-nvim.lua;
      }
      

      nvim-cmp
      cmp-nvim-lsp
      vim-vsnip

      # vim-vsnip
      # {
      #   plugin = nvim-cmp;
      #   type = "lua";
      #   config = builtins.readFile ./config/nvim-cmp.lua;
      # }
      # cmp-nvim-lsp
      # {
      #   plugin = nvim-lspconfig;
      #   type = "lua";
      #   config = builtins.readFile ./config/nvim-lspconfig.lua;
      # }

      # # treesitter
      # {
      #   plugin = nvim-treesitter;
      #   type = "lua";
      #   config = builtins.readFile ./config/nvim-treesitter.lua;
      # }
      # nvim-treesitter-parsers.json
      # nvim-treesitter-parsers.toml
      # nvim-treesitter-parsers.javascript
      # nvim-treesitter-parsers.typescript
      # nvim-treesitter-parsers.tsx

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
    # extraLuaConfig = builtins.readFile ./init.lua;

  };
}

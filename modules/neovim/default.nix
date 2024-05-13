{pkgs, ...}: {
  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      vim-nix
      vim-commentary
      {
        plugin = kanagawa-nvim;
        config = ''
          colorscheme kanagawa
        '';
      }

      {
        plugin = nvim-treesitter;
        type = "lua";
        config = builtins.readFile ./config/nvim-treesitter.lua;
      }
      # treesitter
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

      {
        plugin = lualine-nvim;
        type = "lua";
        config = builtins.readFile ./config/lualine-nvim.lua;
      }

      vim-vsnip
      {
        plugin = nvim-cmp;
        type = "lua";
        config = builtins.readFile ./config/nvim-cmp.lua;
      }
      cmp-nvim-lsp
      {
        plugin = nvim-lspconfig;
        type = "lua";
        config = builtins.readFile ./config/nvim-lspconfig.lua;
      }

      {
        plugin = nvim-surround;
        type = "lua";
        config = builtins.readFile ./config/nvim-surround.lua;
      }
    ];

    extraConfig = builtins.readFile ./init.vim;
    # extraLuaConfig = builtins.readFile ./init.lua;
  };
}

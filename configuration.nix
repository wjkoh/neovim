{
  pkgs,
  lib,
  ...
}: {
  vim = {
    viAlias = true;
    vimAlias = true;

    clipboard.registers = "unnamedplus";

    options = {
      tabstop = 2;
      shiftwidth = 2;
    };

    lsp = {
      enable = true;

      formatOnSave = true;
      lightbulb.enable = true;
      trouble.enable = true;
      lspSignature.enable = true;
    };

    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
    };

    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      bash.enable = true;
      clang.enable = true;
      css.enable = true;
      go.enable = true;
      html.enable = true;
      json.enable = true;
      markdown.enable = true;
      nix.enable = true;
      sql.enable = true;
      toml.enable = true;
      zig.enable = true;
    };

    visuals = {
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      fidget-nvim.enable = true;

      highlight-undo.enable = true;
      indent-blankline.enable = true;
    };

    statusline = {
      lualine = {
        enable = true;
        theme = "catppuccin";
      };
    };

    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
      transparent = false;
    };

    autopairs.nvim-autopairs.enable = true;

    autocomplete = {
      nvim-cmp.enable = true;
    };

    snippets.luasnip.enable = true;

    filetree = {
      neo-tree = {
        enable = true;
      };
    };

    tabline = {
      nvimBufferline.enable = true;
    };

    treesitter.context.enable = true;

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    telescope.enable = true;

    git = {
      enable = true;
      gitsigns.enable = true;
    };

    notify = {
      nvim-notify.enable = true;
    };

    utility = {
      diffview-nvim.enable = true;

      motion = {
        hop.enable = true;
        leap.enable = true;
      };
    };

    notes = {
      todo-comments.enable = true;
    };

    terminal = {
      toggleterm = {
        enable = true;
        lazygit.enable = true;
      };
    };

    ui = {
      borders.enable = true;
      noice.enable = true;
      colorizer.enable = true;
      illuminate.enable = true;
      smartcolumn = {
        enable = true;
        setupOpts.custom_colorcolumn = {
          nix = "110";
          go = ["90" "130"];
        };
      };
      fastaction.enable = true;
    };

    comments = {
      comment-nvim.enable = true;
    };
  };
}

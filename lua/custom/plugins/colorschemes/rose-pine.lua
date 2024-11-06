return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      local palette = require 'rose-pine.palette'
      require('rose-pine').setup {
        variant = 'auto', -- auto, main, moon, or dawn
        dark_variant = 'main', -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },

        groups = {
          border = 'muted',
          link = 'iris',
          panel = 'surface',

          error = 'love', -- DiagnosticError
          hint = 'pine', -- DiagnosticHint
          info = 'rose', -- DiagnosticInfo
          warn = 'love', -- DiagnosticWarn

          note = 'pine', -- this one doesnt seem to be used either. local/share/nvim/lazy/rose-pine
          todo = 'rose', -- this one doesn't seem to be used in rose-pine.lua under .local/share/nvim/lazy/rose-pine

          git_add = 'foam',
          git_change = 'rose',
          git_delete = 'love',
          git_dirty = 'rose',
          git_ignore = 'muted',
          git_merge = 'iris',
          git_rename = 'pine',
          git_stage = 'iris',
          git_text = 'rose',
          git_untracked = 'subtle',

          h1 = 'iris',
          h2 = 'foam',
          h3 = 'rose',
          h4 = 'gold',
          h5 = 'pine',
          h6 = 'foam',
        },
      }
      -- local function set_custom_highlights()
      --   vim.api.nvim_set_hl(0, '@property.css', { fg = palette.foam })
      --   vim.api.nvim_set_hl(0, '@property.id.css', { fg = palette.pine })
      --   vim.api.nvim_set_hl(0, '@property.class.css', { fg = palette.gold })
      --   vim.api.nvim_set_hl(0, '@type.css', { fg = palette.iris })
      --   vim.api.nvim_set_hl(0, '@type.tag.css', { fg = palette.iris })
      --   vim.api.nvim_set_hl(0, '@string.plain.css', { fg = palette.pine })
      --   vim.api.nvim_set_hl(0, '@number.css', { fg = palette.rose })
      -- end
      -- set_custom_highlights()
      vim.cmd.colorscheme 'rose-pine-moon'
      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}

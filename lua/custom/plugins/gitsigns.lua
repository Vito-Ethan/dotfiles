return {
  -- Here is a more advanced example where we pass configuration
  -- options to `gitsigns.nvim`. This is equivalent to the following Lua:
  --    require('gitsigns').setup({ ... })
  --
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    config = function()
      local gitsigns = require 'gitsigns'

      gitsigns.setup {
        signs = {
          add = { text = 'A' },
          change = { text = 'M' },
          delete = { text = 'D' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
      }
      vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = '[G]it [P]review hunk' })
      vim.keymap.set('n', '<leader>gr', ':Gitsigns reset_hunk<CR>', { desc = '[G]it [R]eset hunk' })
    end,
  },
}

return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local api = require 'nvim-tree.api'

      vim.keymap.set('n', '<leader>tt', api.tree.toggle, { desc = 'nvim-tree: [T]oggle [T]ree' })

      local function my_on_attach(bufnr)
        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, nowait = true }
        end

        -- Default mappings
        api.config.mappings.default_on_attach(bufnr)
        -- Custom mappings (they only work while focused in the nvim-tree buffer)
      end

      -- pass my_on_attach to nvim-tree setup
      require('nvim-tree').setup {
        on_attach = my_on_attach,
        -- Additional setup options can go here
      }
    end,
  },
}

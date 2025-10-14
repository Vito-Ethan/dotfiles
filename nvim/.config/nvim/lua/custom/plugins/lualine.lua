return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local line_theme = require 'lualine.themes.material'
      require('lualine').setup {
        options = {
          theme = 'auto',
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = {
            {
              'filename',
              path = 4,
              symbols = {
                modified = '[M]', -- Text to show when the file is modified.
                readonly = '[🔒]', -- Text to show when the file is non-modifiable or readonly.
              },
            },
            'branch',
          },
          lualine_c = { 'buffers' },
          lualine_x = {},
          lualine_y = { 'filetype' },
          -- NOTE: The style formats the os.date similar to printf in C
          -- Uses the strftime format
          lualine_z = { { 'datetime', style = '%a %b %d %H:%M' } },
        },
      }
    end,
  },
}

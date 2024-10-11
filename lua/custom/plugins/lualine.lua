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
          lualine_b = { 'filename', 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'buffers' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          -- NOTE: The style formats the os.date similar to printf in C
          -- Uses the strftime format
          lualine_z = { { 'datetime', style = '%a %b %d %H:%M' } },
        },
      }
    end,
  },
}

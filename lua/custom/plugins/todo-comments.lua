return {
  -- Highlight todo, notes, etc in comments
  'Vito-Ethan/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = false,
    highlight = {
      before = '', -- No highlight before the keyword
      keyword = 'wide_bg', -- Use wide to highlight the keyword and surrounding characters
      after = 'fg', -- Set after text to use foreground color
    },
    keywords = {
      FIX = { icon = ' ', color = 'error', fg = '#FFFFFF' },
      TODO = { icon = ' ', color = 'info', fg = '#FFFFFF' },
      PERF = { icon = ' ', color = 'info', fg = '#FFFFFF', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
      HACK = { icon = ' ', color = 'warning' },
      WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
      NOTE = { icon = ' ', color = 'hint', fg = '#FFFFFF' },
      TEST = { icon = '⏲ ', color = 'test', alt = { 'TESTING', 'PASSED', 'FAILED' } },
    },
    colors = {
      error = '#FF6F61', -- FIX: asdof
      warning = '#FFD54F', -- WARN: asdof
      info = '#4DB6AC', -- TODO: asdof
      hint = '#D3B4E3', -- NOTE: asdof
      default = '#6A1B9A', --
      test = '#FFB300', -- TEST:
    },
  },
}

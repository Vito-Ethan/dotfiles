return {
  {
    'rmagatti/auto-session',
    lazy = false,
    keys = {
      { '<leader>ls', '<cmd>SessionSearch<CR>', desc = 'Session search' },
      { '<leader>lw', '<cmd>SessionSave<CR>', desc = 'Save session' },
      { '<leader>la', '<cmd>SessionToggleAutoSave<CR>', desc = 'Toggle autosave' },
      { '<leader>ld', '<cmd>SessionDelete<CR>', desc = 'Delete CWD Session' },
    },
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      -- suppress creating sessions in specific dirs
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    },
  },
}

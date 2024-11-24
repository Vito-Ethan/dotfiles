return {
  {
    'rmagatti/auto-session',
    lazy = false,
    keys = {
      { '<leader>ls', '<cmd>SessionSearch<CR>', desc = 'Search sessions' },
      { '<leader>lw', '<cmd>SessionSave<CR>', desc = 'Save cwd session' },
      { '<leader>la', '<cmd>SessionToggleAutoSave<CR>', desc = 'Toggle autosave' },
      { '<leader>ld', '<cmd>Autosession delete<CR>', desc = 'Choose a session to delete' },
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

return {
  {
    'rmagatti/auto-session',
    lazy = false,
    keys = {
      { '<leader>ls', '<cmd>AutoSession search<CR>', desc = 'Search sessions' },
      { '<leader>lw', '<cmd>AutoSession save<CR>', desc = 'Save cwd session' },
      { '<leader>la', '<cmd>AutoSession toggle<CR>', desc = 'Toggle autosave' },
      { '<leader>ld', '<cmd>AutoSession deletePicker<CR>', desc = 'Choose a session to delete' },
    },
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      -- suppress creating sessions in specific dirs
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      session_lens = {
        picker = 'snacks',
      },
    },
  },
}

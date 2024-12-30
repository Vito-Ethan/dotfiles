return {
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup {
      fps = 144,
    }
  end,
}

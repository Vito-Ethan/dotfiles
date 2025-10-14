return {
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup {
      fps = 144,
      background_colour = '#000000',
      stages = 'fade',
    }
  end,
}

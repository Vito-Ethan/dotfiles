---@type vim.lsp.Config
return {
  cmd = { 'gopls' },
  filetypes = {
    'go',
    'gomod',
    'gowork',
    'gotmpl',
  },
  root_dir = require('lspconfig/util').root_pattern('go.work', 'go.mod', '.git'),
  settings = {
    gopls = {},
  },
}

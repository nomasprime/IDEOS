local lsp = require'nvim_lsp'

lsp.solargraph.setup {
  settings = {
    solargraph = {
      autoformat = false,
      diagnostics = false,
      formatting = false
    }
  }
}

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

lsp.pyls.setup {
  settings = {
    pyls = {
      plugins = {
        pycodestyle = {
          enabled = false
        },
        pydocstyle = {
          enabled = false
        },
        pyflakes = {
          enabled = false
        },
        pylint = {
          enabled = false
        },
        yapf = {
          enabled = false
        }
      }
    }
  }
}

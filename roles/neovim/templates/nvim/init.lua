local lsp = require'nvim_lsp'

local attach_completion = function()
  require'completion'.on_attach()
end

lsp.solargraph.setup {
  on_attach = attach_completion;

  settings = {
    solargraph = {
      autoformat = false,
      diagnostics = false,
      formatting = false
    }
  }
}

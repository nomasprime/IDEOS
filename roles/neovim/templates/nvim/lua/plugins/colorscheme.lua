return {
  {
    "chriskempson/base16-vim",
    lazy = false,
    priority = 1000,
    config = function()
      local function base16_theme()
        local background_path = vim.fn.expand("~/.vimrc_background")

        if vim.fn.filereadable(background_path) == 1 then
          vim.g.base16colorspace = 256
          vim.cmd("source " .. background_path)
        end
      end

      base16_theme()

      local base16VimGroup = vim.api.nvim_create_augroup("base16", { clear = true })

      vim.api.nvim_create_autocmd("VimResume", {
        pattern = { "*" },
        group = base16VimGroup,
        nested = true,
        callback = function()
          base16_theme()
        end,
      })

      vim.cmd([[hi Comment cterm=italic gui=italic]])
      vim.cmd([[hi LineNr ctermbg=none guibg=none]])
      vim.cmd([[hi SignColumn ctermbg=none guibg=none]])
      vim.cmd([[hi VertSplit ctermbg=none guibg=none]])
      vim.cmd([[hi DiffAdd ctermbg=none guibg=none]])
      vim.cmd([[hi DiffDelete ctermbg=none guibg=none]])
      vim.cmd([[hi DiffChange ctermbg=none guibg=none]])
      vim.cmd([[hi FoldColumn ctermbg=none guibg=none]])
      vim.cmd([[hi Folded ctermbg=none guibg=none]])
      vim.cmd([[hi! link WinSeparator VertSplit]])
    end,
  },
}

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local cursorGroup = vim.api.nvim_create_augroup("cursorGroup", { clear = true })

vim.api.nvim_create_autocmd({"VimEnter", "VimResume"}, {
  pattern = { '*' },
  group = cursorGroup,
  callback = function()
    vim.opt.guicursor = "n-v:block,i-c-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait500-blinkoff250-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
  end,
})

vim.api.nvim_create_autocmd({"VimLeave", "VimSuspend"}, {
  pattern = { '*' },
  group = cursorGroup,
  callback = function()
    vim.opt.guicursor = "a:ver25-blinkwait500-blinkoff250-blinkon250-Cursor/lCursor"
  end,
})

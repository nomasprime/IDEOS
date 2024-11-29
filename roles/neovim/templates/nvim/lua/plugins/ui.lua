return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = '',
        component_separators = ''
      }
    }
  },
  {
    -- https://github.com/nomasprime/neocursorline.nvim
    "nomasprime/neocursorline.nvim",
    config = function ()
      neocursorline({ dim = 0.04, cursor_column_dim = 0.02, pop = 1, visual = 1 })
      vim.cmd[[hi! link CursorLineNr CursorLine]]
    end
  }
}

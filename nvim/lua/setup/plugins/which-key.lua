return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.otimeoutlen = 500
  end,
  opts = {
  }
}

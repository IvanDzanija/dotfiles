require("setup.core.options")
require("setup.core.keymaps")

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*.cl",
	callback = function()
		vim.bo.filetype = "opencl"
	end,
})
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.cl",
	callback = function()
		vim.bo.filetype = "opencl"
	end,
})
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight NvimTreeNormal guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]])

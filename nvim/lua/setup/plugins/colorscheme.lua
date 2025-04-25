return {
	--	"Tsuzat/NeoSolarized.nvim",
	--	"maxmx03/solarized.nvim",
	"rebelot/kanagawa.nvim",
	priority = 1000,
	lazy = false,
	transparent = true,
	config = function()
		vim.o.termguicolors = true
		vim.o.background = "dark"
		vim.cmd("colorscheme kanagawa-wave")
	end,
}

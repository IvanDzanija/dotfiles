return {
	--	"Tsuzat/NeoSolarized.nvim",
	--	"maxmx03/solarized.nvim",
	--	"rebelot/kanagawa.nvim",
	--	"rose-pine/neovim",
	--	"EdenEast/nightfox.nvim",
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	lazy = false,
	transparent = true,
	config = function()
		vim.o.termguicolors = true

		vim.o.background = "dark"
		--	vim.cmd("colorscheme NeoSolarized")
		-- vim.cmd("colorscheme kanagawa")
		--vim.cmd("colorscheme solarized")
		vim.cmd("colorscheme gruvbox")
		--		vim.cmd("colorscheme rose-pine")
		-- 	vim.cmd("colorscheme dawnfox")
	end,
}

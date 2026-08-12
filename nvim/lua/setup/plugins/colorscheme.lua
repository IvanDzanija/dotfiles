return {
	-- "folke/tokyonight.nvim",
	-- 	"Tsuzat/NeoSolarized.nvim",
	-- "maxmx03/solarized.nvim",
	--"catppuccin/nvim",
	--"rebelot/kanagawa.nvim",
	-- 	"datsfilipe/vesper.nvim",
	"scottmckendry/cyberdream.nvim",
	-- 	"bluz71/vim-moonfly-colors",
	-- 	"Mofiqul/vscode.nvim",
	-- 	"savq/melange-nvim",
	-- 	"navarasu/onedark.nvim",
	-- 	"marko-cerovac/material.nvim",
	-- 	"blazkowolf/gruber-darker.nvim",
	-- 	"rose-pine/neovim",
	-- 	"EdenEast/nightfox.nvim",
	-- "ellisonleao/gruvbox.nvim",
	priority = 1000,
	lazy = false,
	transparent = true,
	config = function()
		--vim.o.termguicolors = true
		--vim.o.background = "light"
		--	vim.cmd("colorscheme moonfly")
		-- vim.cmd("colorscheme vscode")
		-- vim.cmd("colorscheme tokyonight-storm")
		--vim.cmd("colorscheme NeoSolarized")
		-- vim.cmd("colorscheme vesper")
		-- Cyberdream
		require("cyberdream").setup({
			variant = "light",
			transparent = true,
			italic_comments = true,
			hide_fillchars = true,
			terminal_colors = false,
			cache = true,
			borderless_pickers = true,
			overrides = function(c)
				return {
					CursorLine = { bg = c.bg },
					CursorLineNr = { fg = c.magenta },
				}
			end,
		})
		vim.cmd("colorscheme cyberdream")

		-- vim.cmd("colorscheme kanagawa")
		--		vim.cmd("colorscheme wildcharm")
		-- vim.cmd("colorscheme solarized")
		--vim.cmd("colorscheme gruvbox")
		--vim.cmd("colorscheme rose-pine")
		--vim.cmd("colorscheme dawnfox")
		-- vim.cmd("colorscheme gruber-darker")
		--	vim.cmd("colorscheme melange")
		--vim.cmd("colorscheme material")
		--vim.cmd("colorscheme catppuccin-latte")
	end,
}

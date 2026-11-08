-- ══════════════════════════════════════════════════════════════
--  Set which theme to use here. All themes below are installed,
--  but ONLY the one named in `active_theme` is loaded. To try
--  another theme, just change this one line — no commenting needed.
--  Use the `name` of an entry from the `themes` list.
-- ══════════════════════════════════════════════════════════════
local active_theme = "cyberdream"

-- name  : colorscheme name passed to :colorscheme
-- spec  : the lazy.nvim plugin spec for that colorscheme
-- setup : optional setup() to run before applying the colorscheme
local themes = {
	{ name = "tokyonight-moon", spec = { "folke/tokyonight.nvim" } },
	{ name = "night-owl", spec = { "oxfist/night-owl.nvim" } },
	{ name = "NeoSolarized", spec = { "Tsuzat/NeoSolarized.nvim" } },
	{ name = "solarized", spec = { "maxmx03/solarized.nvim" } },
	{ name = "catppuccin-latte", spec = { "catppuccin/nvim", name = "catppuccin" } },
	{ name = "kanagawa", spec = { "rebelot/kanagawa.nvim" } },
	{ name = "vesper", spec = { "datsfilipe/vesper.nvim" } },
	{
		name = "cyberdream",
		spec = { "scottmckendry/cyberdream.nvim" },
		setup = function()
			require("cyberdream").setup({
				variant = "dark",
				transparent = false,
				italic_comments = true,
				hide_fillchars = true,
				terminal_colors = false,
				cache = false,
				borderless_pickers = true,
				overrides = function(c)
					return {
						CursorLine = { bg = c.bg },
						CursorLineNr = { fg = c.magenta },
					}
				end,
			})
		end,
	},
	{ name = "moonfly", spec = { "bluz71/vim-moonfly-colors", name = "vim-moonfly-colors" } },
	{ name = "vscode", spec = { "Mofiqul/vscode.nvim" } },
	{ name = "melange", spec = { "savq/melange-nvim" } },
	{ name = "onedark", spec = { "navarasu/onedark.nvim" } },
	{
		name = "material",
		spec = { "marko-cerovac/material.nvim" },
		setup = function()
			require("material").setup()
		end,
	},
	{ name = "gruber-darker", spec = { "blazkowolf/gruber-darker.nvim" } },
	{ name = "apple", spec = { "cemkagank/apple.nvim" } },
	{ name = "rose-pine-dawn", spec = { "rose-pine/neovim", name = "rose-pine" } },
	{ name = "carbonfox", spec = { "EdenEast/nightfox.nvim" } },
	{ name = "everforest", spec = { "sainnhe/everforest" } },
	{ name = "gruvbox", spec = { "ellisonleao/gruvbox.nvim" } },
}

-- Build the final lazy.nvim spec list: every theme gets installed,
-- but only the active one is loaded eagerly and activated.
local specs = {}
for _, theme in ipairs(themes) do
	local is_active = theme.name == active_theme

	local spec = vim.deepcopy(theme.spec)
	-- All themes load right after startup (VeryLazy), so every
	-- colorscheme is available inside a session: you can freely run
	-- `:colorscheme <name>` to try themes. The active one below is
	-- loaded eagerly at startup as the default.
	if not is_active then
		spec.event = "VeryLazy"
	end
	if is_active then
		spec.priority = 1000
		spec.config = function()
			vim.o.termguicolors = true
			vim.o.background = "dark"
			if theme.setup then
				theme.setup()
			end
			vim.cmd("colorscheme " .. theme.name)
		end
	end

	table.insert(specs, spec)
end

return specs

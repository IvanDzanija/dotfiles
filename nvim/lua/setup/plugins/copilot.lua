return {
	"github/copilot.vim",
	lazy = false,
	config = function()
		-- vim.g.copilot_no_tab_map = true
		vim.g.copilot_assume_mapped = true
		vim.g.copilot_filetypes = {
			["*"] = true,
			--	["c++"] = false,
			--	["cpp"] = false,
			--	["c"] = false,
		}
	end,
}

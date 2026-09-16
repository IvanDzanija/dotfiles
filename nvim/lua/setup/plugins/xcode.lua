return {
	"wojciech-kulik/xcodebuild.nvim",
	dependencies = {
		-- Uncomment a picker that you want to use, snacks.nvim might be additionally
		-- useful to show previews and failing snapshots.

		-- You must select at least one:
		"nvim-telescope/telescope.nvim",
		-- "ibhagwan/fzf-lua",
		-- "folke/snacks.nvim", -- (optional) to show previews

		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-tree.lua", -- (optional) to manage project files
		"stevearc/oil.nvim", -- (optional) to manage project files
		"nvim-treesitter/nvim-treesitter", -- (optional) for Quick tests support (required Swift parser)
	},
	config = function()
		require("xcodebuild").setup({
			-- put some options here or leave it empty to use default settings
		})

		vim.keymap.set("n", "<leader>X", "<cmd>XcodebuildPicker<cr>", { desc = "Show Xcodebuild Actions" })
		vim.keymap.set(
			"n",
			"<leader>xf",
			"<cmd>XcodebuildProjectManager<cr>",
			{ desc = "Show Project Manager Actions" }
		)
		vim.keymap.set("n", "<leader>xb", "<cmd>XcodebuildBuild<cr>", { desc = "Build Project" })
		vim.keymap.set("n", "<leader>xr", "<cmd>XcodebuildBuildRun<cr>", { desc = "Build & Run Project" })
		vim.keymap.set("n", "<leader>xt", "<cmd>XcodebuildTest<cr>", { desc = "Run Tests" })
		vim.keymap.set("v", "<leader>xt", "<cmd>XcodebuildTestSelected<cr>", { desc = "Run Selected Tests" })
		vim.keymap.set("n", "<leader>xT", "<cmd>XcodebuildTestClass<cr>", { desc = "Run Current Test Class" })
		vim.keymap.set("n", "<leader>xl", "<cmd>XcodebuildToggleLogs<cr>", { desc = "Toggle Xcodebuild Logs" })
		vim.keymap.set("n", "<leader>xe", "<cmd>XcodebuildTestExplorerToggle<cr>", { desc = "Toggle Test Explorer" })
		vim.keymap.set("n", "<leader>xd", "<cmd>XcodebuildSelectDevice<cr>", { desc = "Select Device" })
		vim.keymap.set("n", "<leader>xc", "<cmd>XcodebuildToggleCodeCoverage<cr>", { desc = "Toggle Code Coverage" })
		vim.keymap.set(
			"n",
			"<leader>xC",
			"<cmd>XcodebuildShowCodeCoverageReport<cr>",
			{ desc = "Show Code Coverage Report" }
		)
	end,
}

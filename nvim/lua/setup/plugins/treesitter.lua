return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").setup()

		require("nvim-treesitter").install({
			"json",
			"javascript",
			"yaml",
			"markdown",
			"markdown_inline",
			"bash",
			"lua",
			"vim",
			"dockerfile",
			"gitignore",
			"query",
			"vimdoc",
			"c",
			"cpp",
			"python",
			"cuda",
			"latex",
			"haskell",
			"ocaml",
			"erlang",
			"rust",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"c",
				"cpp",
				"cuda",
				"lua",
				"vim",
				"vimdoc",
				"bash",
				"python",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"json",
				"yaml",
				"markdown",
				"markdown_inline",
				"latex",
				"haskell",
				"ocaml",
				"erlang",
				"rust",
				"query",
				"dockerfile",
				"gitignore",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})

		-- Keep your incremental selection mappings
		vim.keymap.set("n", "<C-space>", function()
			vim.treesitter.select()
		end)

		vim.keymap.set("x", "<C-space>", function()
			vim.treesitter.select()
		end)

		vim.keymap.set("x", "<bs>", function()
			vim.treesitter.select_prev()
		end)
	end,
}

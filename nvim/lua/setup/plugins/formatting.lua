return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				["*"] = { "trim_whitespace", "trim_newlines" },
				lua = { "stylua" },
				python = { "ruff_format" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				tex = { "latexindent" },
				latex = { "latexindent" },
				yaml = { "prettier" },
				markdown = { "prettier" },
			},

			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
			formatters = {
				["clang-format"] = {
					command = "clang-format",
					args = { "--style=file:/Users/dzanijaivan/.config/clang-format/clang_format.txt" },
					stdin = true,
				},
				["ruff_format"] = {
					command = "ruff", -- Ensure Ruff is installed and accessible
					args = { "format", "--stdin-filename", "$FILENAME", "--quiet" },
					stdin = true, -- Send file contents to stdin
				},
				["latexindent"] = {
					command = "latexindent",
					args = {
						"-m",
						"-w",
					},
					stdin = false,
				},
				["prettier"] = {
					command = "prettier",
					prepend_args = {
						"--prose-wrap",
						"always",
						"--print-width",
						"80",
					},
					args = { "--stdin-filepath", "$FILENAME" },
					stdin = true,
				},
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

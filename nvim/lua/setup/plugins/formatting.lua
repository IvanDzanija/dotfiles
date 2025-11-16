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
					command = "/Users/dzanijaivan/.config/format-clang.sh",
					stdin = true,
				},
				["ruff_format"] = {
					command = "ruff",
					args = { "format", "--stdin-filename", "$FILENAME", "--quiet" },
					stdin = true,
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

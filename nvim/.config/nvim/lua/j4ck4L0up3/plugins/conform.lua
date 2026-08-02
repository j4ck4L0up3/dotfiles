return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				go = { "gofmt", "golines" },
				python = { "isort", "black" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				tailwindcss = { "rustywind" },
				jinja = { "djlint" },
				sql = { "sqruff" },
				rust = { "rustfmt" },
			},
			format_on_save = function(bufnr)
				return {
					lsp_fallback = false,
					async = false,
					timeout_ms = 1000,
				}
			end,

			formatters = {
				sqruff = {
					inherit = true,
					args = {
						"fix",
						"--config",
						vim.fs.joinpath(vim.fn.stdpath("config"), "/.sqruff"),
						"-",
					},
					stdin = true,
				},
				rustfmt = {
					args = { "--config-path", vim.fn.expand("~/.config/rustfmt/rustfmt.toml"), "--emit=stdout" },
				},
			},
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "rust",
			callback = function()
				vim.bo.tabstop = 2
				vim.bo.shiftwidth = 2
				vim.bo.softtabstop = 2
				vim.bo.expandtab = false
			end,
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

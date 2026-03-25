return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			log_level = vim.log.levels.DEBUG,
			ui = {
				icons = {
					package_installed = "",
					package_pending = "󰴲",
					package_uninstalled = "",
				},
			},
		})

		mason_lspconfig.setup({
			automatic_installation = true,
			ensure_installed = {
				"bashls",
				"clangd",
				"cssls",
				"eslint",
				"gopls",
				"emmet_ls",
				"htmx",
				"html",
				"jsonls",
				"jinja_lsp",
				"lua_ls",
				"autotools_ls",
				"pyright",
				"sqlls",
				"tailwindcss",
				"templ",
				"yamlls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"golines",
				"isort",
				"black",
				"stylua",
				"clang-format",
				"rustywind",
				"sqlfmt",
				"djlint",
				"pylint",
				"golangci-lint",
				"cpplint",
			},
		})
	end,
}

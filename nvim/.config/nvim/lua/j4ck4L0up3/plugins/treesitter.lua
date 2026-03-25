return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({
			auto_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			-- enable indentation
			indent = { enable = true },

			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = {
				enable = true,
			},

			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"go",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"sql",
				"regex",
				"bash",
				"python",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"cpp",
				"c",
				"vimdoc",
				"templ",
			},

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = "<C-space>",
					node_decremental = "<C-b>",
				},
			},
		})

		vim.filetype.add({
			extension = {
				templ = "templ",
			},
		})
	end,
}

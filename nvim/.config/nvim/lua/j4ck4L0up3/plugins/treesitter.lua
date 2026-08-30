return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	branch = "main",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local parsers = {
			"json",
			"javascript",
			"go",
			"typescript",
			"tsx",
			"yaml",
			"html",
			"css",
			"markdown",
			"markdown_inline",
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
		}

		require("nvim-treesitter").install(parsers)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = parsers,
			callback = function(args)
				vim.treesitter.start(args.buf)
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})

		require("nvim-ts-autotag").setup()

		vim.filetype.add({
			extension = {
				templ = "templ",
			},
		})
	end,
}

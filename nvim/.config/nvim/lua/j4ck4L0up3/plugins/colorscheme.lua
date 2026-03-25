return {
	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("dracula").setup({
				transparent_bg = true,
				theme = "dracula-soft",
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
				overrides = {
					NonText = { fg = "#8BE9FD" },
					NvimTreeIndentMarker = { link = "NonText" },
				},
			})

			-- load the colorscheme here
			vim.cmd("colorscheme dracula")
		end,
	},
}

return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		toggler = { -- auto comments made in normal mode
			line = "gcc", -- single line comment
			block = "gbc", -- block comment
		},
		opleader = { -- semi-manual comments in normal and visual mode
			line = "gc", -- single line comment
			block = "gb", -- block comment
		},
		extra = {
			---Add comment on the line above
			above = "gcO",
			---Add comment on the line below
			below = "gco",
			---Add comment at the end of line
			eol = "gcA",
		},
	},
}

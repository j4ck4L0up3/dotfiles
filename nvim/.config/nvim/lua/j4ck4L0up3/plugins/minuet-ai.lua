return {
	"milanglacier/minuet-ai.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("minuet").setup({
			provider = "openai_fim_compatible",
			n_completions = 1,
			context_window = 2048,
			throttle = 1000,
			debounce = 400,
			provider_options = {
				openai_fim_compatible = {
					api_key = "TERM",
					name = "Ollama",
					end_point = "http://localhost:11434/v1/completions",
					model = "qwen2.5-coder:14b",
					stream = true,
					optional = { max_tokens = 64, top_p = 0.9, stop = { "\n\n" } },
				},
			},
			virtualtext = {
				auto_trigger_ft = {
					"lua",
					"python",
					"go",
					"rust",
					"typescript",
					"typescriptreact",
				},
				keymap = {
					accept = "<A-y>",
					accept_line = "<A-l>",
					next = "<A-]>",
					prev = "<A-[>",
					dismiss = "<A-e>",
				},
			},
		})
	end,
}

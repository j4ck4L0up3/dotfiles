return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LayGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- set the keybind for LazyGit with 'keys' is recommended
  -- to load plugin when command is run for the first time
  keys = {
    { "<leader>lg", "<cmd>LazyGit<CR>", desc = "Open lazy git"},
  },
}

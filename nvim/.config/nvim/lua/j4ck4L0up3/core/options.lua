vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("set encoding=utf-8")
vim.cmd("set fileencoding=utf-8")

local opt = vim.opt

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- show absolute line number on cursor line (while relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- two spaces for tabs (prettier default)
opt.shiftwidth = 2 -- two spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent  from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrap

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if search has mixed case, then search is case-sensitive

-- cursor line
opt.cursorline = false

-- appearance
opt.termguicolors = true -- brightens to true color terminal
-- opt.background = "dark" -- colorschemes that can be light or dark will be dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line, or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

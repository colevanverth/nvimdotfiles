local opt = vim.opt

-- Numbers
opt.relativenumber = true
opt.number = true 

-- Searching
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Tabs & Indentation
opt.tabstop = 3
opt.shiftwidth = 3
opt.expandtab = true
opt.autoindent = true

-- Line Wrapping
--opt.textwidth = 80
--opt.wrap = false

-- Appereance
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.splitright = true

-- backspace: opt.backspace = "indent, eol, start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Word Movement
opt.iskeyword:append("-")




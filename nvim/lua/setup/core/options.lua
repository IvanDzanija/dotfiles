vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.ruler = true
opt.textwidth = 100 -- default textwidth

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = false
-- opt.linebreak = true
-- opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
-- opt.guicursor = "n-v-c-i:block"

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

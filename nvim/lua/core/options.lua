local opt = vim.opt

-- extraneous
opt.incsearch = true
opt.wildmode = "longest,list,full"
opt.wildmenu = true
opt.number = true
-- opt.syntax = "yes"

-- tabs & indentations
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- search
-- have highlighting of endline whitespace

-- cursorline
opt.cursorline = true

-- terminal options
opt.termguicolors = true
opt.background = "dark"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- send yanks to clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

local opt = vim.opt

--vim.cmd('autocmd highlight ExtraWhitespace ctermbg=red guibg=red')
-- vim.cmd('autocmd BufReadPre highlight /\\s\\+$/ ctermbg=red guibg=red')
-- vim.cmd('autocmd [BufNewFile|BufReadPre] highlight /\\s\\+$/ ctermbg=red guibg=red')
-- vim.cmd('autocmd match ExtraWhitespace /\\s\\+$/')
vim.cmd('autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE')
vim.cmd('autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red')
vim.cmd[[autocmd BufEnter * match ExtraWhitespace /\s\+$/]]
vim.cmd[[highlight ExtraWhitespace ctermbg=red guibg=red]]

-- extraneous
opt.showmatch = true
opt.hlsearch = true
opt.incsearch = true
opt.wildmode = "longest,list,full"
opt.wildmenu = true
opt.number = true
opt.swapfile = false
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

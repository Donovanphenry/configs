-- Make term transparent
vim.cmd('hi Normal ctermb=none guibg=none')

-- Highlight Trailing Whitespace
vim.cmd('highlight ExtraWhitespace ctermbg=red guibg=red')
vim.cmd('match ExtraWhitespace /\\s\\+$/')

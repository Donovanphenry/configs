-- Make term transparent

vim.cmd('hi Normal ctermbg=none guibg=none')

-- Highlight trailing whitespace
vim.cmd('highlight ExtraWhitespace ctermbg=red guibg=red')
vim.cmd('match ExtraWhitespace /\\s\\+$/')

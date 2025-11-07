local call = vim.call
local cmd = vim.cmd
local Plug = vim.fn['plug#']
local PATH = "~/.local/share/nvim/data"

call('plug#begin')
--    Plug 'augmentcode/augment.vim'
	Plug 'rebelot/kanagawa.nvim'
call'plug#end'

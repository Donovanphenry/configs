--vim.api.nvim_command('set runtimepath^=~/.vim')
--vim.api.nvim_command('let &packpath = &runtimepath')
--vim.api.nvim_command('source ~/.vimrc')

--vim.cmd [[ set background=dark ]]
--vim.cmd [[ colorscheme kanagawa ]]
--vim.cmd [[ set cursorline ]]

require("plugins-setup")

require("core.colorschemes")
require("core.key_mappings")
require("core.options")

require("plugins.comment")
require("plugins.nvim-tree")
require("plugins.lualine")

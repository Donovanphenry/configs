-- Ensure the `packer` folder exists
require("plugins-setup")

require("core.colorschemes")
require("core.key_mappings")
require("core.options")
require("core.init-cmds")

require("plugins.comment")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.octo")  -- Sets up autocmd, actual setup happens after VimEnter

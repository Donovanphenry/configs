-- set mapleader
vim.g.mapleader = ';'

local keymap = vim.keymap

-- Augment
keymap.set("n", "<leader>ac", ":Augment chat<CR>")
keymap.set("n", "<leader>at", ":Augment chat-toggle<CR>")

-- Move into normal mode if clicking escape in terminal
-- session
keymap.set("t", "<ESC>", "<C-\\><C-n>")

-- Escape if entering <leader>e
keymap.set("i", "<leader>e", "<ESC>")

-- Open a new terminal
keymap.set("n", "<leader>c", ":terminal<CR>")

-- Tabs
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")
keymap.set("n", "<leader>tc", ":tabnew<CR>")
keymap.set("n", "<leader>tw", ":tabclose<CR>")

-- Deletions
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>dw", function()
  vim.cmd([[%s/\s\+$//e]])
end, { desc = "Trim trailing whitespace" })

-- search
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- commenting
keymap.set("n", "<leader>/", ":norm i#")
keymap.set("n", "<leader>?", ":norm x")

-- Windows
keymap.set("n", "<leader>wt", "<C-W>v")
keymap.set("n", "<leader>ww", ":close<CR>")
keymap.set("n", "<leader>wv", ":vsplit ")
keymap.set("n", "<C-H>", "<C-W>h")
keymap.set("n", "<C-L>", "<C-W>l")

-- nvim tree
keymap.set("n", "<leader>r", ":NvimTreeToggle<CR>")

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Git
local gs = require('gitsigns')
keymap.set('n', '<leader>hp', gs.preview_hunk)
keymap.set('n', '<leader>hs', gs.stage_hunk)
keymap.set('n', '<leader>hr', gs.reset_hunk)
keymap.set('n', '<leader>hu', gs.undo_stage_hunk)
keymap.set('n', '<leader>hb', function() gs.blame_line({ full = true }) end)
keymap.set('n', '<leader>gb', gs.toggle_current_line_blame)

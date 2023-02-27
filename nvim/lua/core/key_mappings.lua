-- set mapleader
vim.g.mapleader = ';'

local keymap = vim.keymap

-- Create new line without exiting normal mode
keymap.set("n", "<leader>o", "o<ESC>")

-- Move into normal mode if clicking escape in terminal
-- session
keymap.set("t", "<ESC>", "<C-\\><C-n>")

-- Escape if entering <leader>e 
keymap.set("i", "<leader>e", "<ESC>")

-- Terminal
keymap.set("n", "<leader>c", ":terminal<CR>")

-- Tabs
keymap.set("n", "<leader>tk", ":tabn<CR>")
keymap.set("n", "<leader>tj", ":tabp<CR>")
keymap.set("n", "<leader>tt", ":tabnew<CR>")
keymap.set("n", "<leader>tw", ":tabclose<CR>")

-- Deletions
keymap.set("n", "x", '"_x')

-- search
keymap.set("n", "<leader>nh", ":nohl")

-- commenting
keymap.set("n", "<leader>/", ":norm i#")
keymap.set("n", "<leader>?", ":norm x")

-- Windows
keymap.set("n", "<leader>wv", "<C-W>v")
keymap.set("n", "<leader>wx", ":close<CR>")
keymap.set("n", "<C-H>", "<C-W>h")
keymap.set("n", "<C-L>", "<C-W>l")

-- nvim tree
keymap.set("n", "<leader>r", ":NvimTreeToggle<CR>")

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
keymap.set("n", "<C-J>", "<C-W>j")
keymap.set("n", "<C-K>", "<C-W>k")

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

-- Octo (GitHub Issues & PRs)
-- General commands
keymap.set('n', '<leader>oil', ':Octo issue list<CR>', { desc = "List issues" })
keymap.set('n', '<leader>oic', ':Octo issue create<CR>', { desc = "Create issue" })
keymap.set('n', '<leader>ois', ':Octo issue search<CR>', { desc = "Search issues" })
keymap.set('n', '<leader>opl', ':Octo pr list<CR>', { desc = "List PRs" })
keymap.set('n', '<leader>opc', ':Octo pr create<CR>', { desc = "Create PR" })
keymap.set('n', '<leader>ops', ':Octo pr search<CR>', { desc = "Search PRs" })
keymap.set('n', '<leader>os', ':Octo search<CR>', { desc = "Search GitHub" })
keymap.set('n', '<leader>oa', ':Octo actions<CR>', { desc = "Show Octo actions" })

-- PR Review commands
keymap.set('n', '<leader>ovs', ':Octo review start<CR>', { desc = "Start PR review" })
keymap.set('n', '<leader>ovr', ':Octo review resume<CR>', { desc = "Resume PR review" })
keymap.set('n', '<leader>ovm', ':Octo review submit<CR>', { desc = "Submit PR review" })
keymap.set('n', '<leader>ovd', ':Octo review discard<CR>', { desc = "Discard PR review" })
keymap.set('n', '<leader>ovc', ':Octo review comments<CR>', { desc = "View review comments" })

-- PR operations
keymap.set('n', '<leader>opo', ':Octo pr checkout<CR>', { desc = "Checkout PR" })
keymap.set('n', '<leader>opm', ':Octo pr merge<CR>', { desc = "Merge PR" })
keymap.set('n', '<leader>opc', ':Octo pr commits<CR>', { desc = "List PR commits" })
keymap.set('n', '<leader>opf', ':Octo pr changes<CR>', { desc = "List PR changed files" })
keymap.set('n', '<leader>opd', ':Octo pr diff<CR>', { desc = "Show PR diff" })
keymap.set('n', '<leader>opr', ':Octo pr reload<CR>', { desc = "Reload PR" })

-- Comments (work in issue/PR buffers and review mode)
keymap.set('n', '<leader>oca', ':Octo comment add<CR>', { desc = "Add comment" })
keymap.set('n', '<leader>ocd', ':Octo comment delete<CR>', { desc = "Delete comment" })
keymap.set('v', '<leader>oca', ':Octo comment add<CR>', { desc = "Add comment on selection" })

-- Review thread commands (work in review mode)
keymap.set('n', '<leader>osa', ':Octo review suggestion<CR>', { desc = "Add suggestion" })
keymap.set('v', '<leader>osa', ':Octo review suggestion<CR>', { desc = "Add suggestion on selection" })

-- Labels and assignees
keymap.set('n', '<leader>ola', ':Octo label add<CR>', { desc = "Add label" })
keymap.set('n', '<leader>old', ':Octo label remove<CR>', { desc = "Remove label" })
keymap.set('n', '<leader>oaa', ':Octo assignee add<CR>', { desc = "Add assignee" })
keymap.set('n', '<leader>oad', ':Octo assignee remove<CR>', { desc = "Remove assignee" })
keymap.set('n', '<leader>ora', ':Octo reviewer add<CR>', { desc = "Add reviewer" })
keymap.set('n', '<leader>ord', ':Octo reviewer remove<CR>', { desc = "Remove reviewer" })

-- Delay Octo setup to avoid telescope loading issues
-- This will be called after VimEnter and after a short delay
local function setup_octo()
  local status, octo = pcall(require, "octo")
  if not status then
    vim.notify("Failed to load octo.nvim: " .. tostring(octo), vim.log.levels.ERROR)
    return
  end

  -- Pre-load the telescope provider to avoid loading issues during octo.setup()
  -- This fixes the "Error loading picker provider telescope" issue
  pcall(require, "octo.pickers.telescope.provider")

  octo.setup({
  -- Use SSH aliases if you have them configured
  -- ssh_aliases = {},

  -- Enable reactions (👍, 🎉, etc.)
  enable_builtin = true,

  -- Default remote to use when creating PRs/issues
  default_remote = {"upstream", "origin"},

  -- Default merge method (merge, rebase, squash)
  default_merge_method = "merge",

  -- Reaction viewer indicator
  reaction_viewer_hint_icon = "",

  -- User icon
  user_icon = " ",

  -- Timeline marker
  timeline_marker = "",

  -- Timeline indent
  timeline_indent = 2,

  -- Right bubble delimiter
  right_bubble_delimiter = "",

  -- Left bubble delimiter
  left_bubble_delimiter = "",

  -- GitHub hostname (for GitHub Enterprise)
  github_hostname = "",

  -- Snippet context lines
  snippet_context_lines = 4,

  -- GitHub API timeout
  gh_env = {},

  -- Timeout for GitHub API requests (in ms)
  timeout = 5000,

  -- UI configuration
  ui = {
    use_signcolumn = true,
  },

  -- Issues configuration
  issues = {
    order_by = {
      field = "CREATED_AT",
      direction = "DESC"
    }
  },

  -- Pull requests configuration
  pull_requests = {
    order_by = {
      field = "CREATED_AT",
      direction = "DESC"
    },
    always_select_remote_on_create = false
  },

  -- File panel configuration
  file_panel = {
    size = 10,
    use_icons = true
  },

  -- Keep default mappings enabled for file panel and other interactive features
  -- Custom command mappings are defined in key_mappings.lua
  mappings_disable_default = false,
  })
end

-- Setup Octo after VimEnter with a delay
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Use a timer to delay setup to ensure telescope is fully loaded
    vim.defer_fn(setup_octo, 200)  -- 200ms delay
  end,
})


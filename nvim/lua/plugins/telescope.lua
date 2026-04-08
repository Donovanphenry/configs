local status, telescope = pcall(require, "telescope")
if not status then
  return
end

telescope.setup({
  defaults = {
    -- Default configuration for telescope
    mappings = {
      i = {
        -- Insert mode mappings
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      },
    },
  },
  pickers = {
    -- Default configuration for builtin pickers
  },
  extensions = {
    -- Configuration for telescope extensions
  },
})

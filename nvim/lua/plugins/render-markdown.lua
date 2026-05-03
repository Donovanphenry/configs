local status, render_markdown = pcall(require, "render-markdown")
if not status then
    return
end

-- ensure required treesitter parsers are installed
local ts_status, ts_install = pcall(require, "nvim-treesitter.install")
if ts_status then
    ts_install.ensure_installed = { "markdown", "markdown_inline" }
end

render_markdown.setup({
    file_types = { "markdown" },
    completions = { lsp = { enabled = true } },
})

return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {"markdown", "markdown_inline", "tsx", "toml", "fish", "php", "json", "yaml", "swift",
                            "javascript", "typescript", "css", "html", "lua", "vue", "c_sharp"},
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<CR>",
                node_incremental = "<CR>",
                node_decremental = "<BS>",
                scope_incremental = "<TAB>"
            }
        }
    }
}

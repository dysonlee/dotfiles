-- customize mason plugins
return { -- use mason-lspconfig to configure LSP installations
{
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
        ensure_installed = {"tsserver", "lua_ls", "jsonls", "volar", "tailwindcss", "html", "tailwindcss", "cssls",
                            "astro", "rust_analyzer", "omnisharp"}
    }
}}

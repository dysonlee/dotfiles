local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = { "tsserver", "sumneko_lua", "tailwindcss", "html", "cssls", "astro", "rust_analyzer" },
  automatic_installation = true
}

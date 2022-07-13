require("nvim-lsp-installer").setup({
  automatic_installation = true,
})
local lspconfig = require("lspconfig")

-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
  sumneko_lua = require("lsp.config.lua"),
  tsserver = require("lsp.config.disable_formatting"),
  omnisharp = require("lsp.config.default"),
  jsonls = require("lsp.config.default"),
  html = require("lsp.config.disable_formatting"),
  vuels = require("lsp.config.disable_formatting")
}

for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" and config.on_setup ~= nil then
    -- 自定义初始化配置文件必须实现on_setup 方法
    config.on_setup(lspconfig[name])
  else
    -- 使用默认参数
    lspconfig[name].setup({})
  end
end

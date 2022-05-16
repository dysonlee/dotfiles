local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
    clear = true
})

local autocmd = vim.api.nvim_create_autocmd

-- auto format on save
autocmd("BufWritePre", {
    group = myAutoGroup,
    pattern = {"*.lua", "*.py", "*.sh"},
    callback = vim.lsp.buf.formatting_sync
})

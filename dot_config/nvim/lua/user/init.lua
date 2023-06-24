return {
    colorscheme = "vscode",

    lsp = {
        formatting = {
            format_on_save = true -- enable or disable automatic formatting on save
        }
    },

    -- This function is run last and is a good place to configuring
    -- augroups/autocommands and custom filetypes also this just pure lua so
    -- anything that doesn't fit in the normal config locations above can go here
    polish = function()
        -- vim.cmd [[
        --     augroup RestoreCursorShapeOnExit
        --         autocmd!
        --         autocmd VimLeave * set guicursor=a:hor20
        --     augroup END
        -- ]]
        -- Set up custom filetypes
        -- vim.filetype.add {
        --   extension = {
        --     foo = "fooscript",
        --   },
        --   filename = {
        --     ["Foofile"] = "fooscript",
        --   },
        --   pattern = {
        --     ["~/%.config/foo/.*"] = "fooscript",
        --   },
        -- }
    end
}

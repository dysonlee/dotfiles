require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.cmd("autocmd ColorScheme * hi! NonText guibg=NONE ctermbg=NONE")

vim.cmd([[
    augroup RestoreCursorShapeOnExit
        autocmd!
        autocmd VimLeave * set guicursor=a:hor20
    augroup END
]])


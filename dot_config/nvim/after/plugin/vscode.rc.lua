local status, vscode = pcall(require, "vscode")
if (not status) then return end

vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1

vim.cmd([[color vscode]])
vim.cmd([[highlight Normal ctermbg=none guibg=none]])

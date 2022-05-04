" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" 快捷键映射
lua require('keybindings')

" 插件配置
lua require('plugin-config/nvim-tree')
lua require('plugin-config/lualine')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-autopairs')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/nvim-telescope')
lua require('plugin-config/indent_blankline')
lua require('plugin-config/nvim-comment')
lua require('lsp/setup')
lua require('lsp/cmp')

colorscheme vscode

" 从系统剪切板拷贝黏贴
set clipboard=unnamed

" Make 'd' to delete something instead of cut
vnoremap d "_d

" 修复在iTerm2下退出后光标依旧显示为block的问题
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20
augroup END

" 背景透明
highlight Normal ctermbg=none guibg=none

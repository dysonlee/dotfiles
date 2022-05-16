" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" 快捷键映射
lua require('keybindings')
" autocmds
lua require('autocmds')

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

" Make 'd' to delete something instead of cut
vnoremap d "_d

" 修复在iTerm2下退出后光标依旧显示为block的问题
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20
augroup END

" 背景透明
highlight Normal ctermbg=none guibg=none

" vim-easymotion 配置
" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and sometimes want to move cursor with
" EasyMotion.
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

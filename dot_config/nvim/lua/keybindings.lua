-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
    noremap = true,
    silent = true
}

local map = vim.api.nvim_set_keymap

local pluginKeys = {}

map("n", ";", ":", opt)

map("i", "jj", "<ESC>", opt)

map("i", "<A-Left>", "<ESC>I", opt)
map("i", "<A-Right>", "<ESC>A", opt)

-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "6k", opt)
map("n", "<C-d>", "6j", opt)

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- magic search
map("n", "/", "/\\v", { noremap = true, silent = false })
map("v", "/", "/\\v", { noremap = true, silent = false })

------------------------------ 分屏 ------------------------------
-- 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)

-- 关闭当前
map("n", "sc", "<C-w>c", opt)

-- 关闭其他
map("n", "so", "<C-w>o", opt) -- close others

-- 比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)

-- alt + hjkl  窗口之间跳转
map("n", "<A-Left>", "<C-w>h", opt)
map("n", "<A-Down>", "<C-w>j", opt)
map("n", "<A-Up>", "<C-w>k", opt)
map("n", "<A-Right>", "<C-w>l", opt)

------------------------------ Plugins 快捷键 ------------------------------
-- treesitter fold
map("n", "zz", ":foldclose<CR>", opt)
map("n", "Z", ":foldopen<CR>", opt)

-- nvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-w>", ":bd<CR>", opt)

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
    i = {
        -- 上下移动
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<C-n>"] = "move_selection_next",
        ["<C-p>"] = "move_selection_previous",
        -- 历史记录
        ["<Down>"] = "cycle_history_next",
        ["<Up>"] = "cycle_history_prev",
        -- 关闭窗口
        -- ["<esc>"] = actions.close,
        ["<C-c>"] = "close",
        -- 预览窗口上下滚动
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down"
    }
}

-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=G", opt)

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginKeys.comment = {
    toggler = {
        line = 'gcc',
        block = 'gbc'
    },
    opleader = {
        line = 'gc',
        bock = 'gb'
    }
}

-- ctrl + /
map("n", "<C-_>", "gcc", {
    noremap = false
})
map("v", "<C-_>", "gcc", {
    noremap = false
})

-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(mapbuf)
    mapbuf("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
    mapbuf("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)

    mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
    mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)

    mapbuf("n", "gk", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
    mapbuf("n", "gh", "<cmd>Lspsaga hover_doc<cr>", opt)
    mapbuf("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)

    -- mapbuf("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
    -- mapbuf("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
    -- mapbuf("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)

    mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
    return {
        -- 上一个
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        -- 下一个
        -- ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        -- 出现补全
        ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        -- 取消
        ['<A-,>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        -- 确认
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
        }),
        -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' })
    }
end

return pluginKeys

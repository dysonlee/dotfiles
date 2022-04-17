require'nvim-tree'.setup {
    -- 关闭文件时自动关闭
    auto_close = false,
    -- 不显示 git 状态图标
    git = {
        enable = false
    },
    update_to_buf_dir = {
        enable = true,
        auto_open = false
    },
    view = {
        width = 50,
        auto_resize = true
    }
}

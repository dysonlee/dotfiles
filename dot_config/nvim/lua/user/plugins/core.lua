return {{
    "goolord/alpha-nvim",
    enabled = false
}, {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
        opts.winbar = nil
        return opts
    end
}, {
    "rcarriga/nvim-notify",
    enabled = false
}, {"Mofiqul/vscode.nvim"}, {"windwp/nvim-ts-autotag"}, {"overcache/NeoSolarized"}}

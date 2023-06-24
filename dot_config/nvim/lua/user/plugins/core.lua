return {{
    "goolord/alpha-nvim",
    enabled = false
}, {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
        opts.winbar = nil
        return opts
    end
}, {"Mofiqul/vscode.nvim"}, {"windwp/nvim-ts-autotag"}, {"overcache/NeoSolarized"}}

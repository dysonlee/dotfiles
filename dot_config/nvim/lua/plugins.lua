return require("packer").startup(function()
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  ------------------------------ Plugins ------------------------------
  -- theme
  use "dysonlee/vscode.nvim"
  use "overcache/NeoSolarized"
  -- nvim-tree
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons"
  }
  -- bufferline
  use {
    "akinsho/bufferline.nvim",
    requires = "kyazdani42/nvim-web-devicons"
  }
  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  -- telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }
  -- telescope extensions
  use "LinArcX/telescope-env.nvim"
  -- Comment
  use "terrortylor/nvim-comment"
  -- nvim-autopairs
  use "windwp/nvim-autopairs"
  -- Use treesitter to autoclose and autorename html tag
  use "windwp/nvim-ts-autotag"
  -- lualine
  use {
    "nvim-lualine/lualine.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
      opt = true
    }
  }
  -- indent blankline
  use "lukas-reineke/indent-blankline.nvim"
  use("mhartington/formatter.nvim")
  ------------------------------ LSP ------------------------------
  -- Lspconfig
  use { "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" }
  -- 补全引擎
  use "hrsh7th/nvim-cmp"
  -- Snippet 引擎
  use "hrsh7th/vim-vsnip"
  -- 补全源
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/cmp-nvim-lsp" -- { name = nvim_lsp }
  use "hrsh7th/cmp-buffer" -- { name = "buffer" },
  use "hrsh7th/cmp-path" -- { name = "path" }
  use "hrsh7th/cmp-cmdline" -- { name = "cmdline" }
  use "hrsh7th/cmp-nvim-lsp-signature-help" -- { name = "nvim_lsp_signature_help" }
  -- 常见编程语言代码段
  use "rafamadriz/friendly-snippets"
  -- UI 增强
  use "onsails/lspkind-nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  -- 代码格式化
  -- use "mhartington/formatter.nvim"
  -- use {
  --     "jose-elias-alvarez/null-ls.nvim",
  --     requires = "nvim-lua/plenary.nvim"
  -- })
  -- use {
  --     "jose-elias-alvarez/nvim-lsp-ts-utils",
  --     requires = "nvim-lua/plenary.nvim"
  -- })
  -- Lua 增强
  use "folke/lua-dev.nvim"
  -- JSON 增强
  use "b0o/schemastore.nvim"

end)

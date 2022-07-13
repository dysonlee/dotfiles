local lspkind = require('lspkind')
local cmp = require 'cmp'

cmp.setup {
  -- 指定 snippet 引擎
  snippet = {
    expand = function(args)
      -- For `vsnip` users.
      vim.fn["vsnip#anonymous"](args.body)
    end
  },
  -- 来源
  sources = cmp.config.sources({ {
    name = 'nvim_lsp'
  }, -- For vsnip users.
    {
      name = 'vsnip'
    } }, { {
    name = 'buffer'
  }, {
    name = 'path'
  } }),

  -- 快捷键
  mapping = require 'keybindings'.cmp(cmp),
  -- 使用lspkind-nvim显示类型图标
  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      before = function(entry, vim_item)
        -- Source 显示提示来源
        vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
        return vim_item
      end
    })
  }
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
  sources = { {
    name = 'buffer'
  } }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({ {
    name = 'path'
  } }, { {
    name = 'cmdline'
  } })
})

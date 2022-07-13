local formatter = require("formatter")

formatter.setup({
  filetype = {
    -- javascript = {
    --   -- prettier
    --   function()
    --     return {
    --       exe = "prettier",
    --       args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
    --       stdin = true,
    --     }
    --   end,
    -- },
  },
  -- Use the special "*" filetype for defining formatter configurations on
  -- any filetype
    ["*"] = {
    -- "formatter.filetypes.any" defines default configurations for any
    -- filetype
    require("formatter.filetypes.any").remove_trailing_whitespace
  }
})


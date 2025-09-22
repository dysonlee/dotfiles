local options = {
  -- Ensure parsers are installed
  ensure_installed = {
    "astro",
    "cmake",
    "cpp",
    "css",
    "fish",
    "gitignore",
    "go",
    "graphql",
    "http",
    "java",
    "c_sharp",
    "php",
    "rust",
    "scss",
    "sql",
    "typescript",
    "html",
    "vue",
    "json"
  },
  -- Enable Treesitter-based syntax highlighting
  highlight = { enable = true },
  -- Optional but commonly useful
  indent = { enable = true },
}

return options

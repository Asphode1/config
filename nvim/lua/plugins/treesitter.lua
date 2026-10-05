return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "ron",
        "rust",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      options = {
        parsers = {
          css = true,
          tailwind = { enable = true },
        },
      },
    },
  },
}

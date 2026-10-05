return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
      },
      servers = {
        cssls = {},
        tailwindcss = {},
        html = {},
        vtsls = {
          enabled = false,
          inlayHints = {
            enumMemberValues = { enabled = false },
            functionLikeReturnTypes = { enabled = false },
            parameterNames = { enabled = "none" },
            parameterTypes = { enabled = false },
            propertyDeclarationTypes = { enabled = false },
            variableTypes = { enabled = false },
          },
        },
      },
      setup = {},
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    ft = { "typescript", "javascript", "html", "javascriptreact", "typescriptreact" },
    config = function()
      require("lspsaga").setup({})
    end,
    keys = {
      {
        "<C-k>",
        "<Cmd>Lspsaga diagnostic_jump_prev<CR>",
        desc = "Prev Diagnostic",
      },
      {
        "<C-j>",
        "<Cmd>Lspsaga diagnostic_jump_next<CR>",
        desc = "Next Diagnostic",
      },
      {
        "K",
        "<Cmd>Lspsaga hover_doc<CR>",
        desc = "Hover Doc",
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
}

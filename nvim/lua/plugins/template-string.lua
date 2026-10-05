return {
  "axelvc/template-string.nvim",
  opts = function()
    require("template-string").setup({
      filetypes = {
        "typescript",
        "javascript",
        "typescriptreact",
        "typescript.tsx",
        "javascriptreact",
        "javascript.jsx",
      },
      remove_template_string = true,
    })
  end,
}

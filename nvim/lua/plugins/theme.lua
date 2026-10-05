return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      local logo = [[
 █████╗ ███████╗██████╗ ██╗  ██╗ ██████╗ ██████╗ ███████╗██╗     
██╔══██╗██╔════╝██╔══██╗██║  ██║██╔═══██╗██╔══██╗██╔════╝██║     
███████║███████╗██████╔╝███████║██║   ██║██║  ██║█████╗  ██║     
██╔══██║╚════██║██╔═══╝ ██╔══██║██║   ██║██║  ██║██╔══╝  ██║     
██║  ██║███████║██║     ██║  ██║╚██████╔╝██████╔╝███████╗███████╗
╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝
                                                                 
      ]]
      logo = string.rep("\n", 6) .. logo .. "\n\n"
      require("dashboard").setup({
        theme = "hyper",
        config = {
          week_header = {
            enable = true,
          },
          shortcut = {
            { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
            {
              icon = " ",
              icon_hl = "@variable",
              desc = "Files",
              group = "Label",
              action = "Telescope find_files",
              key = "f",
            },
            {
              desc = " Apps",
              group = "DiagnosticHint",
              action = "Telescope app",
              key = "a",
            },
            {
              desc = " dotfiles",
              group = "Number",
              action = "Telescope dotfiles",
              key = "d",
            },
          },
        },
      })
    end,
  },
}

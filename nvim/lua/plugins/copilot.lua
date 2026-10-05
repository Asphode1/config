return {
  "github/copilot.vim",
  {
    "zbirenbaum/copilot.lua",
    opts = {
      copilot_node_command = require("config.platform").node(),
    },
  },
}

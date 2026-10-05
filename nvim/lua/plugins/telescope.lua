return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
    keys = {
      {
        "<leader>sf",
        function()
          local function telescope_buffer_dir()
            return vim.fn.expand("%:p:h")
          end
          require("telescope").extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 },
          })
        end,
        desc = "File Browser",
      },
    },
    config = function(_, opts)
      local fb_actions = require("telescope").extensions.file_browser.actions
      opts.extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              ["<C-w>"] = function()
                vim.cmd("normal vbd")
              end,
            },
            ["n"] = {
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function()
                vim.cmd("startinsert")
              end,
            },
          },
        },
      }
      require("telescope").setup(opts)
      require("telescope").load_extension("file_browser")
    end,
  },
}

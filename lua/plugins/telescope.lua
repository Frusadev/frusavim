return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.7",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        file_ignore_patterns = { "node%_modules/.*", ".git/*" },
        defaults = {
          sorting_strategy = "ascending",
          preview = {
            enable = true,
          },
          layout_config = {
            horizontal = {
              preview_cutoff = 0,
            },
          },
        },
        pickers = {
          git_files = {
            show_untracked = true, -- Includes untracked files
          },
        },
      })
    end,
  },

  -- Telescope explorer

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      local browser_actions = require("telescope").extensions.file_browser.actions
      require("telescope").setup({
        extensions = {
          file_browser = {
            respect_gitignore = false,
            initial_mode = "normal",
            theme = "ivy",
            hijack_netrw = true,
            mappings = {
              ["i"] = {},
              ["n"] = {},
            },
            pickers = {
              buffers = {
                initial_mode = "normal",
              },
            },
          },
        },
      })
    end,
  },
}

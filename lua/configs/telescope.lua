require("telescope").setup({
  file_ignore_patterns = { "node%_modules/.*", ".git/*" },
  defaults = {
    sorting_strategy = "ascending",
    preview = {
      enable = true,
    },
    layout_config = {
      horizontal = {
        preview_width = 0.55,
        preview_cutoff = 0,
      },
      width = 0.87,
      height = 0.80,
    },
  },
  pickers = {
    git_files = {
      show_untracked = true, -- Includes untracked files
    },
  },
  extensions = { "project" },
})

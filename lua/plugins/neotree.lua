return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        use_libuv_file_watcher = true,
        filesystem = {
          filters = {
            respect_gitignore = true,
          },
        },
        -- disable_netrw = true,
        -- auto_close = true,
        -- update_focused_file = {
        --   enable = true,
        --   update_cwd = true,
        -- },
        -- view = {
        --   width = 30,
        --   side = "left",
        --   auto_resize = false,
        -- },
      })
    end,
  },
}

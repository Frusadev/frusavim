return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    opts = {
      window = {
        position = "left",
      },
      filesystem = {
        filtered_items = {

          hide_dotfiles = false,
          hide_by_name = {
            "node_modules",
            ".git",
            ".cache",
            ".vscode",
            ".idea",
            ".DS_Store",
            ".gitattributes",
            ".gitmodules",
            ".gitkeep",
            ".gitlab-ci.yml",
            ".gitlab",
            "__pycache__",
          },
          always_show = {
            ".env"
          }
        },
      },
      hijack_cursor = {
        enable = true,
      }
    },
  },
}

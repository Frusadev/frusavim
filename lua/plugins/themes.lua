local themes = {
  {
    "vague2k/vague.nvim",
    lazy = false,
  },
  {
    "ilof2/posterpole.nvim",
    lazy = false,
    priority = 1000,
  },
  { "slugbyte/lackluster.nvim" },
  { "Shadorain/shadotheme" },
  { "nekonako/xresources-nvim" },
  { "Th3Whit3Wolf/one-nvim" },
  { "nerdypepper/agila.vim" },
  { "Tsuzat/NeoSolarized.nvim" },
  { "Shatur/neovim-ayu" },
  {
    "franbach/miramare",
  },
  {
    "water-sucks/darkrose.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "shaunsingh/nord.nvim",
  },
  {
    "NAlexPear/Spacegray.nvim",
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        background = "hard",
        -- Your config here
      })
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      color_overrides = {
        mocha = {
          base = "#11111b",
          red = "#d5788c",
          maroon = "#da98a2",
        },
      },
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "backdround/melting",
    config = function()
      require("melting").setup({})
    end,
  },
  {
    "comfysage/evergarden",
    priority = 2000,
    opts = {
      contrast_dark = "hard",
    },
    lazy = false,
  },
  {
    "tiagovla/tokyodark.nvim",
    opts = {},
  },
}

return themes

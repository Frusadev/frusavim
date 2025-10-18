local plugins = {
  {
    "coffebar/neovim-project",
    opts = {
      projects = { -- define project roots
        "~/Workspace/Projects/Personal/*",
        "~/Workspace/Projects/Pro/*",
        "~/Workspace/Projects/Pro/waitly/*",
        "~/Workspace/Projects/Forks/*",
        "~/Workspace/Teaching/LOSLC/*",
        "~/Workspace/Teaching/LOSLC/*",
        "~/.config/*",
      },
      picker = {
        type = "telescope", -- or "fzf-lua"
      },
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      -- optional picker
      { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
      -- optional picker
      { "ibhagwan/fzf-lua" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  {
    "zbirenbaum/nvterm",
    config = function()
      require("configs.term")
    end,
  },
  {
    "windwp/nvim-autopairs",
    opts = {
      fast_wrap = {},
      disable_filetype = { "TelescopePrompt", "vim" },
    },
    config = function(_, opts)
      require("nvim-autopairs").setup(opts)
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("configs.cmp")
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    --@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require("configs.indent")
    end,
  },
}

return plugins

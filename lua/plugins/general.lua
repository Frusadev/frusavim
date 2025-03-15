local plugins = {
  {
    "sphamba/smear-cursor.nvim",
    opts = {},
    config = function()
      require("configs.cursor")
    end,
  },
  {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*",
    opts = {},
    keys = require("configs.multicursor.keys"),
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  },
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  },
  {
    "mbbill/undotree",
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("configs.lualine")
    end,
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require("configs.conform")
    end,
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    lazy = false,
  },
  -- {
  --   "LintaoAmons/cd-project.nvim",
  --   lazy = false,
  --   config = function()
  --     require("configs.proj")
  --   end,
  -- },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("configs.scroll")
    end,
    lazy = false,
  },
  {
    "rmagatti/goto-preview",
    config = function() end,
    event = "VeryLazy",
  },
  {
    "folke/noice.nvim",
    config = function()
      return require("configs.noice")
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    event = "VeryLazy",
  },
  {
    "https://github.com/mlaursen/vim-react-snippets.git",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return require("configs.treesitter")
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
    event = "VeryLazy",
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function()
      require("nvim-ts-autotag").setup({
        filetypes = { "html", "xml", "javascript", "javascriptreact", "tsx" },
      })
    end,
  },
  {
    "onsails/lspkind.nvim",
    config = function()
      return require("configs.lspkind")
    end,
    event = "VeryLazy",
  },
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({
        default = true,
        override = {},
        override_by_extension = {
          ["v"] = {
            icon = "",
            color = "#263a75",
            name = "Vlang",
          },

          ["vv"] = {
            icon = "",
            color = "#263a75",
            name = "Vlang",
          },
          require("nvim-web-devicons").set_icon({
            vlang = {
              icon = "",
              color = "#263a75",
              cterm_color = "65",
              name = "Vlang",
            },
          }),
        },
      })
    end,
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      return require("configs.nvim-lint")
    end,
    event = "VeryLazy",
  },
  {
    "vidocqh/auto-indent.nvim",
    opts = {},
    config = function()
      require("auto-indent").setup({
        lightmode = false,
      })
    end,
    event = "VeryLazy",
  },
  {
    "pocco81/auto-save.nvim",
    config = function()
      return require("configs.autosave")
    end,
    lazy = false,
    vim.api.nvim_set_keymap("n", "<leader>as", ":ASToggle<CR>", {}),
  },
  {
    "andrewferrier/wrapping.nvim",
    lazy = false,
    config = function()
      require("wrapping").setup()
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts) end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },

    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },

    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      dap.listeners.after.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.after.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  { "heysokam/nim.vim", lazy = false },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "Frusadev/frusadev-friendly-snippets",
      "saadparwaiz1/cmp_luasnip",
      "mlaursen/vim-react-snippets",
    },

    opts = function()
      require("vim-react-snippets").lazy_load()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
    config = function()
      return require("configs.snips")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {},
    config = function()
      require("configs.lspconfig")
    end,
  },
}

return plugins

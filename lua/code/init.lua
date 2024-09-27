local plugins = {
  {
    "williamboman/mason.nvim",
    -- cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
    --    config = function()
    -- -- require("configs.mason")
    --    end,
    opts = {
      ensure_installed = {
        "pyright",
        "nimlsp",
        "nimlangserver",
        "flake8",
        "htmlhint",
        "html-lsp",
        "biome",
        "ruff",
        "jsonlint",
        "jq",
        "tablo",
        "gopls",
        "lua-language-server",
        "v-analyzer",
        "tailwindcss-language-server",
        "stylua",
        "typescript-language-server",
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)
      vim.api.nvim_create_user_command("MasonInstallAll", function()
        if opts.ensure_installed and #opts.ensure_installed > 0 then
          vim.cmd("Mason")
          local mr = require("mason-registry")

          mr.refresh(function()
            for _, tool in ipairs(opts.ensure_installed) do
              local p = mr.get_package(tool)
              if not p:is_installed() then
                p:install()
              end
            end
          end)
        end
      end, {})

      vim.g.mason_binaries_list = opts.ensure_installed
    end,
  },
  {
    "mbbill/undotree",
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require("configs.conform")
    end,
  },
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
}

return plugins
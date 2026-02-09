return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "basedpyright",
        "flake8",
        "htmlhint",
        "html-lsp",
        "biome",
        "ruff",
        "jsonlint",
        "jq",
        "gopls",
        "lua-language-server",
        "tailwindcss-language-server",
        "stylua",
        "css-lsp",
        "vtsls",
        "dockerfile-language-server",
        "clangd",
        "clang-format",
        "autopep8",
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
}

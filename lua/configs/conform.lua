local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    javascript = { "biome" },
    html = { "prettier" },
    json = { "jq" },
    javascriptreact = { "biome" },
    typescript = { "biome" },
    typescriptreact = { "biome" },
    python = { "black" },
    dart = { "dart_format" },
    -- html = { "prettier" },
    golang = {"gofmt"},
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)

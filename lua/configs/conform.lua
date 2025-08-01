local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    javascript = { "biome" },
    html = { "htmlbeautifier" },
    json = { "jq" },
    javascriptreact = { "biome" },
    typescript = { "biome" },
    typescriptreact = { "biome" },
    python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
    dart = { "dart_format" },
    golang = { "gofmt" },
    toml = { "taplo" },
    php = { "phpcbf" },
    gleam = { "gleam" },
    cpp = { "clang-format" },
    nim = { "nimpretty" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
  --
  formatters = {
    stylua = {
      args = {
        "--indent-type",
        "Spaces",
        "--indent-width",
        "2",
        "--stdin-filepath",
        "$FILENAME",
        "-",
      },
    },
    biome = {
      args = {
        "format",
        "--indent-width",
        "2",
        "--indent-style",
        "space",
        "--stdin-file-path",
        "$FILENAME",
        "-",
      },
      javascript = {
        parser = {
          unsafeParameterDecoratorsEnabled = true,
        },
      },
    },
    nimpretty = {
      args = {
        "--indent:3",
        "--maxLineLen:80",
        "$FILENAME",
      },
      stdin = false,
    },
  },
}

require("conform").setup(options)

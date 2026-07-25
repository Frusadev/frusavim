local servers = {
  "html",
  "basedpyright",
  "lua_ls",
  "gopls",
  "cssls",
  "tailwindcss",
  "dockerls",
  "gleam",
  "clangd",
  "vtsls",
  "docker_compose_language_service",
  "rust_analyzer",
  "nim_langserver",
  "intelephense",
  "svelte",
  "astro",
}

vim.lsp.enable("basedpyright", {
  settings = {
    python = {
      venvPath = "~/Workspace/sys/python/env/",
      pythonPath = "~/Workspace/sys/python/env/bin/python",
    },
  },
})

vim.lsp.config("astro", {
  init_options = {
    typescript = {
      tsdk = vim.fn.expand("~/.local/share/nvim/mason/packages/astro-language-server/node_modules/typescript/lib"),
    },
  },
})

vim.lsp.enable("astro")

vim.lsp.enable("tailwindcss", {
  filetypes = { "html", "typescriptreact", "javascriptreact", "svelte", "vue" },
})
-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.enable(lsp, {})
end

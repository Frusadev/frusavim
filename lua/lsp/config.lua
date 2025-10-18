local servers = {
  "html",
  "basedpyright",
  "lua_ls",
  "gopls",
  "cssls",
  "nimls",
  "v_analyzer",
  "tailwindcss",
  "phpactor",
  "dockerls",
  "gleam",
  "clangd",
  "vtsls",
  "svelte",
  "docker_compose_language_service",
}

vim.lsp.enable("basedpyright", {
  settings = {
    python = {
      venvPath = "~/Workspace/sys/python/env/",
      pythonPath = "~/Workspace/sys/python/env/bin/python",
    },
  },
})

vim.lsp.enable("tailwindcss", {
  filetypes = { "html", "typescriptreact", "javascriptreact", "svelte", "vue" },
})
-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.enable(lsp, {})
end

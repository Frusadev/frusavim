local lspconfig = require("lspconfig")
local servers = {
  "html",
  "basedpyright",
  "lua_ls",
  "gopls",
  "cssls",
  "vtsls",
  "nimls",
  "v_analyzer",
  "tailwindcss",
  "phpactor",
  "dockerls",
}

lspconfig["basedpyright"].setup({
  settings = {
    python = {
      venvPath = "~/Workspace/sys/python/env/",
      pythonPath = "~/Workspace/sys/python/env/bin/python",
    },
  },
})

lspconfig["tailwindcss"].setup({
  filetypes = {"html", "typescriptreact", "javascriptreact", "svelte", "vue"},
})
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({})
end

local lspconfig = require("lspconfig")
local servers = { "html", "basedpyright", "lua_ls", "gopls", "cssls", "ts_ls", "nimls", "v_analyzer", "tailwindcss" }

lspconfig["basedpyright"].setup({
  settings = {
    python = {
      venvPath = "~/Workspace/sys/python/env/",
      pythonPath = "~/Workspace/sys/python/env/bin/python"
    }
  }
})
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({})
end

-- vim.api.nvim_create_autocmd("LspAttach", {
--   group = vim.api.nvim_create_augroup("UserLspConfig", {}),
--   callback = function (ev)
--     local opts = {buffer = ev.buf}
--     vim.keymap.set('<leader>', 'gd', vim.lsp.buf.definition(), opts)
--   end
-- })

local lspconfig = require("lspconfig")
local servers = { "html", "lua_ls", "gopls", "cssls", "tsserver", "pyright", "nimls", "v_analyzer", "tailwindcss" }

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({})
end

lspconfig["pyright"].setup {
  python = {
    analysis = {
      autoSearchPaths = true,
      useLibraryCodeForTypes = true,
      diagnosticMode = "workspace",
      venvPath = ".venv",
      pythonPath = ".venv/venv/bin/python",
    },
  },
}

-- vim.api.nvim_create_autocmd("LspAttach", {
--   group = vim.api.nvim_create_augroup("UserLspConfig", {}),
--   callback = function (ev)
--     local opts = {buffer = ev.buf}
--     vim.keymap.set('<leader>', 'gd', vim.lsp.buf.definition(), opts)
--   end
-- })

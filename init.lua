if vim.g.vscode then
  require("mappings")
  require("config.lazycode")
else
  require("settings")
  require("config.lazy")
  require("mappings")
  require("autocmds")
  require("lsp.config")
end

if vim.g.vscode then
  require("mappings")
  require("config.lazycode")
else
  require("config.lazy")
  require("mappings")
  require("settings")
  require("autocmds")
end

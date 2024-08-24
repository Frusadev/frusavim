require('lint').linters_by_ft = {
  javascript = {"biomejs"},
  typescript = {"biomejs"},
  html = {"htmlhint"},
  json = {"jsonlint"},
  python = {"flake8"},
}

vim.api.nvim_create_autocmd({ "BufRead", "TextChanged", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

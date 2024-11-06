Keys = {
  { "<leader>crd", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "x" }, desc = "Add cursor and move down" },
  { "<leader>cru", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "x" }, desc = "Add cursor and move up" },

  { "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "i" }, desc = "Add cursor and move up (insert mode)" },
  { "<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "i" }, desc = "Add cursor and move down (insert mode)" },

  { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" }, desc = "Add or remove cursor" },

  { "<Leader>acw", "<Cmd>MultipleCursorsAddMatches<CR>", mode = { "n", "x" }, desc = "Add cursors to cword" },
  {
    "<Leader>Acw",
    "<Cmd>MultipleCursorsAddMatchesV<CR>",
    mode = { "n", "x" },
    desc = "Add cursors to cword in previous area",
  },
}

return Keys

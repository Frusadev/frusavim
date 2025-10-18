-- n: normal, v: visual, i: insert, t: terminal = mode names
local map = vim.keymap.set
vim.g.mapleader = " "
vim.g.localleader = " "

if vim.g.neovide then
  -- Mapping for Ctrl+Shift+V to paste
  map("n", "<C-S-v>", '"+p', { noremap = true, silent = true })
  map("v", "<C-S-v>", '"+p', { noremap = true, silent = true })
  map("i", "<C-S-v>", "<C-R>+", { noremap = true, silent = true })
  map("t", "<C-S-v>", "<C-R>+", { noremap = true, silent = true })

  -- Mapping for Ctrl+Shift+C to copy
  map("v", "<C-S-c>", '"+y', { noremap = true, silent = true })
end

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
map("n", "<leader>O", "O<Esc>j", { desc = "Add line on top" })
map("n", "<leader>o", "o<Esc>k", { desc = "Add line at the bottom" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("v", "<leader>du", "y0O<Esc>pkdd", { desc = "Duplicate selection" })
map("n", "du", "yyp", { desc = "Duplicate line" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "file save" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "file copy whole" })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

map("n", "<leader>fm", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "format files" })

-- -- python venv switch
-- map("n", "<leader>cv", "<cmd>VenvSelect<cr>", { desc = "Change python venv" })
-- -- global lsp mappings
-- map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "lsp diagnostic loclist" })

-- Lazygit
map("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "LazyGit" })

-- Buffer creation
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

-- Buffer navigation
map("n", "<tab>", "<cmd>bnext<CR>", { desc = "buffer goto next" })
map("n", "<S-tab>", "<cmd>bprevious<CR>", { desc = "buffer goto previous" })
-- Close buffer
map("n", "<leader>x", "<Cmd>bdelete<CR>", { desc = "buffer close" })
map("n", "<leader>cba", "<Cmd>bufdo bdelete<CR>", { desc = "buffer close all" })
map("n", "<leader>cbo", "<Cmd>%bd|e#<CR>", { desc = "buffer close all except the current one" })

-- Buffer navigation with numbers (using leader key for better compatibility)
local function goto_buffer_by_index(index)
  local buffers = {}
  for buf = 1, vim.fn.bufnr('$') do
    if vim.fn.buflisted(buf) == 1 then
      table.insert(buffers, buf)
    end
  end
  if buffers[index] then
    vim.cmd("buffer " .. buffers[index])
  end
end

map("n", "<leader>1", function() goto_buffer_by_index(1) end, { desc = "go to 1st buffer" })
map("n", "<leader>2", function() goto_buffer_by_index(2) end, { desc = "go to 2nd buffer" })
map("n", "<leader>3", function() goto_buffer_by_index(3) end, { desc = "go to 3rd buffer" })
map("n", "<leader>4", function() goto_buffer_by_index(4) end, { desc = "go to 4th buffer" })
map("n", "<leader>5", function() goto_buffer_by_index(5) end, { desc = "go to 5th buffer" })
map("n", "<leader>6", function() goto_buffer_by_index(6) end, { desc = "go to 6th buffer" })
map("n", "<leader>7", function() goto_buffer_by_index(7) end, { desc = "go to 7th buffer" })
map("n", "<leader>8", function() goto_buffer_by_index(8) end, { desc = "go to 8th buffer" })
map("n", "<leader>9", function() goto_buffer_by_index(9) end, { desc = "go to 9th buffer" })
-- Comment
map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

-- Explorers
map("n", "<leader>fe", function()
  require("telescope").extensions.file_browser.file_browser()
end, { desc = "File explorer" })
map("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle explorer" })
-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
map("n", "<leader>th", "<cmd>Telescope colorscheme<CR>", { desc = "telescope themes/colorschemes" })
map("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "telescope find files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files" }
)

map("n", "<leader>ps", "<cmd>PomodoroStart<CR>", { desc = "Start the pomodoro timer" })
map("n", "<leader>pq", "<cmd>PomodoroStop<CR>", { desc = "Stop the pomodoro timer" })
map("n", "<leader>pa", "<cmd>PomodoroStatus<CR>", { desc = "Pomodoro timer status" })

-- terminal
local terminal = require("nvterm.terminal")
local toggle_modes = { "n", "t" }

map(toggle_modes, "<A-h>", function()
  terminal.toggle("horizontal")
end)
map(toggle_modes, "<A-v>", function()
  terminal.toggle("vertical")
end)
map(toggle_modes, "<A-i>", function()
  terminal.toggle("float")
end)
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input("WhichKey: "))
end, { desc = "whichkey query lookup" })

-- blankline
map("n", "<leader>cc", function()
  local config = { scope = {} }
  config.scope.exclude = { language = {}, node_type = {} }
  config.scope.include = { node_type = {} }
  local node = require("ibl.scope").get(vim.api.nvim_get_current_buf(), config)

  if node then
    local start_row, _, end_row, _ = node:range()
    if start_row ~= end_row then
      vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start_row + 1, 0 })
      vim.api.nvim_feedkeys("_", "n", true)
    end
  end
end, { desc = "blankline jump to current context" })
map("n", "<leader>cw", ":close<CR>", { desc = "Close window" })

-- Vertical split
map("n", "<leader>v", ":vsplit<CR>", { desc = "Vertical split" })

-- Horizontal split
map("n", "<leader>h", ":split<CR>", { desc = "Horizontal split" })

-- Resizing
-- Vertical
map("n", "+", ":vertical resize +5<CR>", { desc = "Increase vertical size by 5" })
map("n", "-", ":vertical resize -5<CR>", { desc = "Decrease vertical size by 5" })

-- Horizontal
map("n", "<A-1>", ":resize +5<CR>", { desc = "Increase horizontal size by 5" })
map("n", "<A-2>", ":resize -5<CR>", { desc = "Decrease horizontal size by 5" })

map("n", "<leader>fm", function()
  local conform = require("conform")
  conform.format({ bufnr = vim.api.nvim_get_current_buf(), async = true })
  conform.format({ bufnr = vim.api.nvim_get_current_buf(), async = true, lsp_fallback = true })
end, { desc = "LSP and Conform formatting" })

-- Project management
map("n", "<leader>cd", "<cmd>NeovimProjectHistory<CR>", { desc = "Show project history" })
map("n", "<leader>pd", "<cmd>NeovimProjectDiscover alphabetical_path<CR>", { desc = "Find new projects" })
-- LSP mappings

map("n", "gD", function()
  vim.lsp.buf.declaration()
end, { desc = "LSP declaration" })

map("n", "gd", function()
  vim.lsp.buf.definition()
end, { desc = "LSP definition" })

map("n", "K", function()
  vim.lsp.buf.hover()
end, { desc = "LSP hover" })

map("n", "gi", function()
  vim.lsp.buf.implementation()
end, { desc = "LSP implementation" })

map("n", "<leader>ls", function()
  vim.lsp.buf.signature_help()
end, { desc = "LSP signature help" })

map("n", "<leader>D", function()
  vim.lsp.buf.type_definition()
end, { desc = "LSP type definition" })

vim.keymap.set("n", "<leader>ra", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
-- map("n", "<leader>ra", "<cmd>IncRename<CR>", { desc = "LSP rename" })

map("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP code action" })

map("n", "gr", function()
  vim.lsp.buf.references()
end, { desc = "LSP references" })

map("n", "<leader>lf", function()
  vim.diagnostic.open_float({ border = "rounded" })
end, { desc = "Floating diagnostic" })

map("n", "[d", function()
  vim.diagnostic.goto_prev({ float = { border = "rounded" } })
end, { desc = "Goto previous diagnostic" })

map("n", "]d", function()
  vim.diagnostic.goto_next({ float = { border = "rounded" } })
end, { desc = "Goto next diagnostic" })

map("n", "<leader>q", function()
  vim.diagnostic.setloclist()
end, { desc = "Diagnostic setloclist" })

map("n", "<leader>wa", function()
  vim.lsp.buf.add_workspace_folder()
end, { desc = "Add workspace folder" })

map("n", "<leader>wr", function()
  vim.lsp.buf.remove_workspace_folder()
end, { desc = "Remove workspace folder" })

map("n", "<leader>wl", function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, { desc = "List workspace folders" })

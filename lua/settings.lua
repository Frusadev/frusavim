-- Frusavim settings
-- Global settings
local o = vim.o
local opt = vim.opt
local api = vim.api
local cmd = vim.cmd
local g = vim.g

-- Indentation size
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.softtabstop = 2

-- Line spacing
o.linespace = 2
-- Persistent undo (Undo even after closing the buffer)
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.local/state/undo"

-- Enable to number row by default
o.number = true
o.numberwidth = 2
o.ruler = true

-- UI
-- Window borders
opt.fillchars:append({ vert = "▏" })
opt.fillchars:append({ horiz = "⎯" })
-- These '~' on empty lines
opt.fillchars:append({ eob = " " })

-- For pasting from system clipboard
opt.clipboard:append("unnamedplus")

-- Spell checking
-- o.spell = true
-- o.spelllang = "en_us"

local theme = "tokyodark"

-- Running autocmds (applying frusavim settings)
-- Colorscheme
api.nvim_create_autocmd("User", {
  pattern = "LazyDone",
  callback = function()
    cmd("colorscheme " .. theme)
    vim.defer_fn(function()
      cmd("colorscheme " .. theme)
    end, 200)
  end,
})

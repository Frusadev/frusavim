local highlight = {
	"Calm",
}

local hooks = require("ibl.hooks")
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "Calm", { fg = "#3f5b55" })
end)

require("ibl").setup({
	indent = { highlight = highlight, char = "▏" },
})

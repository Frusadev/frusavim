require("noice").setup({
	lsp = {
		signature = {
			enabled = false,
		},
		hover = {
			enabled = false,
		},
	},

	presets = {
		bottom_search = true,
		inc_rename = true,
		command_palette = true,
	},
})

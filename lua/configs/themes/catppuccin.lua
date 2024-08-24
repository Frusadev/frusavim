local catppuccin = require("catppuccin")
local inactive_tab = "#1e252c"

catppuccin.setup({
	flavour = "mocha",
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	term_colors = true,
	dim_inactive = {
		enabled = true, -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15, -- percentage of the shade to apply to the inactive window
	},
	color_overrides = {
		all = {
			text = "#ffffff",
			barbar = true,
			nvimtree = {
				base = "#10171e",
			},
		},
		latte = {},
		frappe = {},
		macchiato = {},
		mocha = {
			base = "#131a21",
			mantle = "#10171e",
			crust = "#10171e",
			surface0 = "#1e252c",
		},
	},
	custom_highlights = {
		BufferInactiveMod = { bg = inactive_tab },
		BufferInactive = { bg = inactive_tab },
		BufferTabpageFill = { bg = inactive_tab },
		BufferSeparator = { bg = inactive_tab },
		BufferCurrentSign = { bg = inactive_tab, fg = "#363d44" },
		BufferInactiveSign = { bg = inactive_tab, fg = "#4e555c" },
		BufferInactiveTarget = { bg = inactive_tab },
		BufferTabpages = { bg = inactive_tab },
		BufferVisible = { bg = inactive_tab },
		BufferVisibleSign = { bg = inactive_tab, fg = "#4e555c" },
	},
})

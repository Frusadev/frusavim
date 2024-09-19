local themes = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
	{ "slugbyte/lackluster.nvim" },
	{ "Shadorain/shadotheme" },
	{ "nekonako/xresources-nvim" },
	{ "Th3Whit3Wolf/one-nvim" },
	{ "nerdypepper/agila.vim" },
	{ "Tsuzat/NeoSolarized.nvim" },
	{ "Shatur/neovim-ayu" },
	{ "sixfourtwelve/bore.vim" },
	{ "atelierbram/Base4Tone-nvim" },
	{
		"franbach/miramare",
	},
	{
		"water-sucks/darkrose.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"shaunsingh/nord.nvim",
	},
	{
		"NAlexPear/Spacegray.nvim",
	},
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup({
				background = "hard",
				-- Your config here
			})
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("configs.themes.catppuccin")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"backdround/melting",
		config = function()
			require("melting").setup({})
		end,
	},
	{
		"comfysage/evergarden",
		priority = 2000,
		opts = {
			contrast_dark = "hard",
		},
		lazy = false,
	},
}

return themes

local plugins = {
	{
		"mbbill/undotree",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("configs.lualine")
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		automatic_installation = true,
		ensure_installed = {
			"pyright",
			"debugpy",
			"nimlsp",
			"tsserver",
			"nimlangserver",
			"eslint-lsp",
			"flake8",
			"htmlhint",
			"html-lsp",
			"biome",
			"jsonlint",
			"jq",
			"gopls",
			"lua-language-server",
			"v-analyzer",
			"tailwindcss-language-server",
			"stylua",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("configs.cmp")
		end,
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

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		--@module "ibl"
		---@type ibl.config
		opts = {},
		config = function()
			require("configs.indent")
		end,
	},
	{
		"windwp/nvim-autopairs",
		opts = {
			fast_wrap = {},
			disable_filetype = { "TelescopePrompt", "vim" },
		},
		config = function(_, opts)
			require("nvim-autopairs").setup(opts)

			-- setup cmp for autopairs
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		config = function()
			require("configs.conform")
		end,
	},
	{
		{
			"nvim-tree/nvim-tree.lua",
			version = "*",
			lazy = false,
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},
			opts = function()
				return require("configs.nvtree")
			end,
			-- config = function()
			-- 	require("nvim-tree").setup(opts)
			-- end,
		},
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},

		opts = {
			animation = true,
			sidebar_filetypes = {
				-- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
				NvimTree = true,
				-- Or, specify the text used for the offset:
				undotree = {
					text = "undotree",
					align = "center", -- *optionally* specify an alignment (either 'left', 'center', or 'right')
				},
				-- Or, specify the event which the sidebar executes when leaving:
				["neo-tree"] = { event = "BufWipeout" },
				-- Or, specify all three
				Outline = { event = "BufWinLeave", text = "symbols-outline", align = "right" },
			},
			icons = {
				separator = { left = "|", right = "" },
			},
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"williamboman/mason.nvim",
		-- cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
		--    config = function()
		-- -- require("configs.mason")
		--    end,
		opts = {
			ensure_installed = {},
		},
	},
	{
		"zbirenbaum/nvterm",
		config = function()
			require("configs.term")
		end,
	},
	{
		"luckasRanarison/tailwind-tools.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = function()
			return require("configs.treesitter")
		end,
		lazy = false,
	},
	{
		"LintaoAmons/cd-project.nvim",
		lazy = false,
		config = function()
			require("configs.proj")
		end,
	},
	{
		"nvim-telescope/teleScope.nvim",
		tag = "0.1.8",
		config = function()
			return require("configs.telescope")
		end,
	},
	{
		"linux-cultist/venv-selector.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"mfussenegger/nvim-dap",
			"mfussenegger/nvim-dap-python", --optional
			{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
		},
		lazy = false,
		branch = "regexp", -- This is the regexp branch, use this for the new version
		config = function()
			require("venv-selector").setup()
		end,
		keys = {
			{ "<leader>cv", "<cmd>VenvSelect<cr>" },
		},
	},
	{
		"wthollingsworth/pomodoro.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		lazy = false,
		config = function()
			require("pomodoro").setup({
				time_work = 25,
				time_break_short = 5,
				time_break_long = 20,
				timers_to_long_break = 4,
			})
		end,
	},
	{
		"petertriho/nvim-scrollbar",
		config = function()
			require("configs.scroll")
		end,
		lazy = false,
	},
	{
		"rmagatti/goto-preview",
		config = function()
			--require "custom.configs.gotop"
		end,
		event = "VeryLazy",
	},
	{
		"folke/noice.nvim",
		config = function()
			return require("configs.noice")
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		event = "VeryLazy",
	},
	{
		"https://github.com/mlaursen/vim-react-snippets.git",
		lazy = false,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
			-- dofile(vim.g.base46_cache .. "syntax")
		end,
		event = "VeryLazy",
	},
	{
		"windwp/nvim-ts-autotag",
		dependencies = "nvim-treesitter/nvim-treesitter",
		lazy = false,
		-- config = function ()
		--   return require("configs.autag")
		-- end
		config = function()
			require("nvim-ts-autotag").setup({
				-- opts = {
				--   -- Defaults
				--   enable_close = true, -- Auto close tags
				--   enable_rename = true, -- Auto rename pairs of tags
				--   enable_close_on_slash = false, -- Auto close on trailing </
				filetypes = { "html", "xml", "javascript", "javascriptreact", "tsx" },
				-- },
				-- aliases = {
				--   ["javascript"] = "html",
				--   ["typescript"] = "html",
				--   ["javascriptreact"] = "html",
				--   ["tsx"] = "html",
				--   ["jsx"] = "html",
				-- },
				-- per_filetype = {
				--   ["html"] = {
				--     enable_close = false,
				--   },
				-- },
			})
		end,
	},
	{
		"onsails/lspkind.nvim",
		config = function()
			return require("configs.lspkind")
		end,
		event = "VeryLazy",
	},
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({
				default = true,
				override = {},
				override_by_extension = {
					["v"] = {
						icon = "",
						color = "#263a75",
						name = "Vlang",
					},

					["vv"] = {
						icon = "",
						color = "#263a75",
						name = "Vlang",
					},
					require("nvim-web-devicons").set_icon({
						vlang = {
							icon = "",
							color = "#263a75",
							cterm_color = "65",
							name = "Vlang",
						},
					}),
				},
			})
		end,
	},
	{
		"mfussenegger/nvim-lint",
		config = function()
			return require("configs.nvim-lint")
		end,
		event = "VeryLazy",
	},
	-- {
	--   "vidocqh/auto-indent.nvim",
	--   opts = {},
	--   config = function()
	--     require("auto-indent").setup {
	--       lightmode = false,
	--     }
	--   end,
	--   event = "VeryLazy",
	-- },
	{
		"pocco81/auto-save.nvim",
		config = function()
			return require("configs.autosave")
		end,
		lazy = false,
		vim.api.nvim_set_keymap("n", "<leader>as", ":ASToggle<CR>", {}),
	},
	{
		"andrewferrier/wrapping.nvim",
		lazy = false,
		config = function()
			require("wrapping").setup()
		end,
	},
	{
		"mfussenegger/nvim-dap",
		config = function(_, opts) end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},

		config = function(_, opts)
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},

		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end

			dap.listeners.after.event_terminated["dapui_config"] = function()
				dapui.close()
			end

			dap.listeners.after.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
	{ "heysokam/nim.vim", lazy = false },
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	--- Uncomment these if you want to manage LSP servers from neovim
	-- {'williamboman/mason.nvim'},
	-- {'williamboman/mason-lspconfig.nvim'},

	-- {
	-- 	"VonHeikemen/lsp-zero.nvim",
	--
	-- 	branch = "v4.x",
	-- 	config = function()
	-- 		-- require("configs.lspzero")
	-- 	end,
	-- },
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
		event = { "BufReadPre", "BufNewFile" },
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"Frusadev/frusadev-friendly-snippets",
			"saadparwaiz1/cmp_luasnip",
			"mlaursen/vim-react-snippets",
		},

		opts = function()
			require("vim-react-snippets").lazy_load()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
		config = function()
			return require("configs.snips")
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = true,
	},
	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		dependencies = {},
		config = function()
			-- require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
}

return plugins

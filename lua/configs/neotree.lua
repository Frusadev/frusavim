local neotree = require("neo-tree")

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

neotree.setup({
  window = {
    mappings = {
      ["O"] = {
        command = function(state)
          local node = state.tree:get_node()
          local filepath = node.path
          local osType = os.getenv("OS")
          local command
          if osType == "Windows_NT" then
            command = "start " .. filepath
          elseif osType == "Darwin" then
            command = "open " .. filepath
          else
            command = "xdg-open " .. filepath
          end
          os.execute(command)
        end,
        desc = "Open with System Application",
      },
    },
  },
  close_if_last_window = false,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  sort_case_insensitive = false,

  default_component_configs = {
    indent = {
      indent_size = 2,
      padding = 1, -- extra padding on left hand side
      -- indent guides
      with_markers = true,
      indent_marker = "│",
      last_indent_marker = "└",
      highlight = "NeoTreeIndentMarker",
      -- expander config, needed for nesting files
      with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
  },

  filesystem = {
    hijack_netrw = true,
    follow_current_file = {
      enabled = true, -- will reveal the file you're on
    },
    use_libuv_file_watcher = true,
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = true,
      hide_by_name = {
        "node_modules",
      },
    },
  },
})

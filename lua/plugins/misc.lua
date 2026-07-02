return {
  {
    "vyfor/cord.nvim",
    config = function()
      require("cord").setup({
        editor = {
          client = "neovim",
          tooltip = "My beloved editor",
        },
        display = {
          theme = "minecraft",
          flavor = "dark",
          swap_icons = true,
        },
        idle = {
          tooltip = "stalker",
        },
        -- text = {
        --   default = "Thinking...",
        -- },
        buttons = {
          {
            label = "My GitHub",
            url = "https://github.com/Frusadev",
          },
        },
        extensions = {
          diagnostics = {
            scope = "buffer",
            severity = { min = vim.diagnostic.severity.WARN },
            override = true,
          },
        },
      })
    end,
  },
}

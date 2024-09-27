local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ["<S-tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  completion = {
    completeopt = "menu,menuone",
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "path" },
  }, {
    { name = "buffer" },
  }),
  -- snippet = {
  --   expand = function(args)
  --     vim.snippet.expand(args.body)
  --   end,
  -- },

  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol",
      maxwidth = 50,
      ellipsis_char = "...",
      show_labelDetails = true,
      before = function(entry, vim_item)
        return vim_item
      end,
    }),
  },
})

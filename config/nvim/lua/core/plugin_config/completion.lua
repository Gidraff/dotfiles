local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
      -- require'luasnip'.lsp_expand(args.body)
    end,
  },
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged }
  },
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-0>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip'},
  }, {
    { name = 'buffer' },
  })
})


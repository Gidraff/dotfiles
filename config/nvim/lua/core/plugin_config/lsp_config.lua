local capabilities = require("cmp_nvim_lsp").default_capabilities()
local util = require "lspconfig/util"

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls"},
  capabilities = capabilities,
})

require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db8d7",
  Hint = "#10B981"
  
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

require("lspconfig").gopls.setup({
  cmd = {"gopls", "serve"},
  capabilities = capabilities,
  filetypes = {"go", "gomod"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    }
  }
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function ()
    vim.lsp.buf.code_action({
      context = {
        only = {'source.organizeImports'}
      },
      apply = true
    })
  end
})

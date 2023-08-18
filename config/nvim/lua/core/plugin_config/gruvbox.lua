require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = true,
    comments = true,
    operators = true,
    folds = true,
  },

  contrast = "hard",
  dim_inactive = true,
  transparent_mode = false,
  palette_overrides = {
      aqua = "#689d6a",
  },
  overrides = {
      SignColumn = {
        bg = "#8ec07c",
        italic = true,
      }
  }
})

vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")

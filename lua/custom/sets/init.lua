require 'custom.sets.conform'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.incsearch = true

vim.opt.listchars = {
  tab = '» ',
  eol = '¬',
  space = '·',
  trail = '·',
  nbsp = '␣',
}

-- highlight current line number
vim.opt.cursorlineopt = 'number'

--- folds
vim.opt.foldenable = true
vim.opt.foldlevel = 0
vim.opt.foldlevelstart = 0
vim.opt.foldmethod = 'marker'

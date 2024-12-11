local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- persistent folds between sessions
-- credits: https://github.com/LazyVim/LazyVim/discussions/1358
-- - thank you [Steve Dondley](https://github.com/sdondley)
autocmd('BufWinLeave', {
  pattern = '*.*',
  callback = function()
    vim.cmd.mkview()
  end,
})
autocmd('BufWinEnter', {
  group = augroup('Persistent Folds', { clear = true }),
  pattern = '*.*',
  callback = function()
    vim.cmd.loadview { mods = { emsg_silent = true } }
  end,
})

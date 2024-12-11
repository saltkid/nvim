vim.g.mapleader = ' '

-- open netrw
vim.keymap.set('n', '<leader>oe', '<cmd>Oil<cr>', { desc = '[O]pen [E]xplorer' })

-- keep cursor in middle when doing half page jumps
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- find and replace all (in file) (thx prime)
vim.keymap.set('n', '<leader>rw', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]eplace [W]ord' })

-- they're the same thing lul
vim.keymap.set('i', '<C-c>', '<Esc>')

-- never press this I guess.
-- After some reading, this is apparently 'ex' mode. not touching this lol
vim.keymap.set('n', 'Q', '<nop>')

-- move single lines
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
-- move selected lines
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selected lines up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selected lines down' })

-- persistent indenting
vim.keymap.set('v', '>', '>gv', { desc = 'Indent to the right' })
vim.keymap.set('v', '<', '<gv', { desc = 'Indent to the left' })

-- buffers
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Delete buffer' })
vim.keymap.set('n', '<leader>`', '<cmd>e #<cr>', { desc = 'Switch to recent buffer' })

-- Diagnostic
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rrors under cursor in float' })

-- lazygit
vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'Open lazygit' })

-- todo-comment
vim.keymap.set('n', ']t', function()
  require('todo-comments').jump_next()
end, { desc = 'Next todo comment' })
vim.keymap.set('n', '[t', function()
  require('todo-comments').jump_prev()
end, { desc = 'Previous todo comment' })
vim.keymap.set('n', '<leader>st', '<cmd>TodoTelescope keywords=TODO,FIX<cr>', { desc = '[S]earch [T]odos' })

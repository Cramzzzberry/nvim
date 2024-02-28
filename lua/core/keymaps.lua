-- My Custom Basic Keymaps

--Window navigation
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to the left window', noremap = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to the right window', noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to the top window', noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to the bottom window', noremap = true })

-- Vertical Navigations
vim.keymap.set('n', 'J', '<C-d>zz', { desc = 'Go half screen down and center the cursor', noremap = true })
vim.keymap.set('n', 'K', '<C-u>zz', { desc = 'Go half screen up and center the cursor', noremap = true })

-- Move highlighted code/s
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- Shift visual selected line down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- Shift visual selected line up

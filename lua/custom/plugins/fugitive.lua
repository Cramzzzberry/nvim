return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>fs', '<CMD>tab G<CR>', { desc = 'Fugitive Summary', noremap = true })
    vim.keymap.set('n', '<leader>fp', '<CMD>Git push<CR>', { desc = 'Git Push', noremap = true })
    vim.keymap.set('n', '<leader>fP', '<CMD>Git pull<CR>', { desc = 'Git Pull', noremap = true })
    vim.keymap.set('n', '<leader>fa', '<CMD>Git add %<CR>', { desc = 'Git Add: Stage the current file', noremap = true })
    vim.keymap.set('n', '<leader>fc', ':Git checkout ', { desc = 'Git Checkout *add command*', noremap = true })
    vim.keymap.set('n', '<leader>fC', ':Git commit -m ', { desc = 'Git Commit w/ Message', noremap = true })
    vim.keymap.set('n', '<leader>fb', '<CMD>tab Git branch<CR>', { desc = 'Git Branch', noremap = true })
    vim.keymap.set('n', '<leader>fB', ':Git branch ', { desc = 'Git Branch *add command*', noremap = true })
    vim.keymap.set('n', '<leader>fM', ':Git merge ', { desc = 'Git Merge *add command*', noremap = true })
    vim.keymap.set('n', '<leader>fF', ':Git fetch ', { desc = 'Git Fetch *add command*', noremap = true })
  end,
}

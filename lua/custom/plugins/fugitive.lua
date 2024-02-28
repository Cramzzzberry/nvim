return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', '<CMD>tab G<CR>', { desc = 'Fugitive Summary', noremap = true })
    vim.keymap.set('n', '<leader>gp', '<CMD>Git push<CR>', { desc = 'Git Push', noremap = true })
    vim.keymap.set('n', '<leader>gP', '<CMD>Git pull<CR>', { desc = 'Git Pull', noremap = true })
    vim.keymap.set('n', '<leader>ga', '<CMD>Git add %<CR>', { desc = 'Git Add: Stage the current file', noremap = true })
    vim.keymap.set('n', '<leader>gc', ':Git checkout ', { desc = 'Git Checkout *add command*', noremap = true })
    vim.keymap.set('n', '<leader>gC', ':Git commit -m ', { desc = 'Git Commit w/ Message', noremap = true })
    vim.keymap.set('n', '<leader>gb', '<CMD>tab Git branch<CR>', { desc = 'Git Branch', noremap = true })
    vim.keymap.set('n', '<leader>gB', ':Git branch ', { desc = 'Git Branch *add command*', noremap = true })
    vim.keymap.set('n', '<leader>gM', ':Git merge ', { desc = 'Git Merge *add command*', noremap = true })
    vim.keymap.set('n', '<leader>gF', ':Git fetch ', { desc = 'Git Fetch *add command*', noremap = true })
  end,
}

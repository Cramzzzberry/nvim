return {
  -- Terminal plugin
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {}

    -- Toggle terminal
    vim.keymap.set('n', '<leader>\\', '<CMD>ToggleTerm dir=%:p:h direction=horizontal<CR>', { noremap = true })
    vim.keymap.set('t', '<esc>', '<CMD>ToggleTerm<CR>')
  end,
}

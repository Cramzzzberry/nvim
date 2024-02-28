return {
  -- Terminal plugin
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {}

    -- Toggle terminal
    vim.keymap.set('n', '<A-t>', '<CMD>ToggleTerm dir=%:p:h direction=float<CR>', { desc = 'Toggle the toggle terminal' })
    vim.keymap.set('t', '<esc>', '<CMD>ToggleTerm<CR>', { desc = 'Toggle the toggle terminal' })
  end,
}

return {
  -- Terminal plugin
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {}

    -- Toggle terminal
    vim.keymap.set('n', 'T', '<CMD>ToggleTerm dir=%:p:h direction=float<CR>', { noremap = true })
    vim.keymap.set('t', '<esc>', '<CMD>ToggleTerm<CR>')
  end,
}

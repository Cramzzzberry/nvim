return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      keymaps = {
        ['<esc>'] = 'actions.close',
        ['<bs>'] = 'actions.parent',
        ['\\'] = 'actions.select_tab',
      },
    }

    -- Open Oil nvim
    vim.keymap.set('n', '<leader>e', '<CMD>Oil --float<CR>', { desc = 'Open Oil' })
  end,
}

return {
  'nanozuki/tabby.nvim',
  event = 'VimEnter',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    -- configs...
    local theme = {
      fill = 'TabLineFill',
      -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
      head = 'TabLine',
      current_tab = 'TabLineSel',
      tab = 'TabLine',
      win = 'TabLine',
      tail = 'TabLine',
    }

    -- Setup
    require('tabby.tabline').set(function(line)
      return {
        {
          { '  ', hl = theme.head },
          line.sep('', theme.head, theme.fill),
        },
        line.tabs().foreach(function(tab)
          local hl = tab.is_current() and theme.current_tab or theme.tab
          return {
            line.sep('', hl, theme.fill),
            tab.is_current() and '' or '󰆣',
            tab.number(),
            tab.name(),
            tab.close_btn '',
            line.sep('', hl, theme.fill),
            hl = hl,
            margin = ' ',
          }
        end),
        line.spacer(),
        line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
          return {
            line.sep('', theme.win, theme.fill),
            win.is_current() and '' or '',
            win.buf_name(),
            line.sep('', theme.win, theme.fill),
            hl = theme.win,
            margin = ' ',
          }
        end),
        {
          line.sep('', theme.tail, theme.fill),
          { '  ', hl = theme.tail },
        },
        hl = theme.fill,
      }
    end)

    -- Keymaps
    vim.api.nvim_set_keymap('n', '<leader>ta', ':$tabnew<CR>', { desc = 'Open a new tab', noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { desc = 'Close current tab', noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>to', ':tabonly<CR>', { desc = 'Close all tabs except current', noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<tab>', ':tabn<CR>', { desc = 'Go to next tab', noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<S-tab>', ':tabp<CR>', { desc = 'Go to previous tab', noremap = true, silent = true })
    -- move current tab to previous position
    vim.api.nvim_set_keymap('n', '<leader>tmp', ':-tabmove<CR>', { noremap = true, silent = true })
    -- move current tab to next position
    vim.api.nvim_set_keymap('n', '<leader>tmn', ':+tabmove<CR>', { noremap = true, silent = true })
  end,
}

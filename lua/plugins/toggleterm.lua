return {
  -- amongst your other plugins
  -- {'akinsho/toggleterm.nvim', version = "*", config = true}
  -- or
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {

    },
    config = function()
      vim.keymap.set("n", "<leader>t", function()
        local current_dir = vim.fn.expand("%:p:h")
        vim.cmd("ToggleTerm dir=" .. current_dir)
      end, {desc = "[T]erminal"}) 

      require("toggleterm").setup{
        direction = 'float',
      }
    end,
  }
}

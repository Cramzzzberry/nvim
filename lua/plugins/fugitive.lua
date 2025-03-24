return {
  'tpope/vim-fugitive',
  config = function()
    -- Open Fugitive Status
    vim.keymap.set("n", "<leader>gs", ":vertical G<cr>")

    -- Open diff in 3 vertical splits
    vim.keymap.set("n", "<leader>gvds", ":Gvdiffsplit!<cr>")
  end
}

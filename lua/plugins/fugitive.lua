return {
  'tpope/vim-fugitive',
  config = function()
    -- Open Fugitive Status
    vim.keymap.set("n", "<leader>gs", ":topleft vertical G<cr>", { desc = "Git [S]tatus", silent = true })

    -- Open Git Log in split view
    vim.keymap.set("n", "<leader>gl", ":topleft vertical Git log --oneline --graph<cr>", { desc = "Git [L]og", silent = true })

    -- Open Git blame
    vim.keymap.set("n", "<leader>gbl", ":Git blame<cr>", { desc = "Git B[l]ame", silent = true })

    -- List branches
    vim.keymap.set("n", "<leader>gbr", ":Git branch", { desc = "Git B[r]anch..." })

    -- Open diff in 3 vertical splits
    vim.keymap.set("n", "<leader>gvds", ":Gvdiffsplit!<cr>", { silent = true })
  end
}

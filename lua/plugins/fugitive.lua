return {
  'tpope/vim-fugitive',
  config = function()
    -- Open Fugitive Status
    vim.keymap.set("n", "<leader>gs", ":topleft vertical G<cr>", { silent = true })

    -- Open Git Log in split view
    vim.keymap.set("n", "<leader>gl", ":topleft vertical Git log<cr>", { silent = true })

    -- Open Git blame
    vim.keymap.set("n", "<leader>gbl", ":Git blame<cr>", { silent = true })

    -- List branches
    vim.keymap.set("n", "<leader>gbr", ":Git branch")

    -- Open diff in 3 vertical splits
    vim.keymap.set("n", "<leader>gvds", ":Gvdiffsplit!<cr>", { silent = true })
  end
}

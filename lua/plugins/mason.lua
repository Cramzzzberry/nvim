return {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup()
      vim.keymap.set("n", "<leader>M", ":Mason<cr>", { silent = true })
    end
}

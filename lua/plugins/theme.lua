return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      transparent = true,
      saturation = 1
    })
    vim.cmd("colorscheme cyberdream")
  end
}

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = "main",
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.config').setup({
      auto_install = true,
      highlight = {
        enable = {}
      }
    })
  end
}

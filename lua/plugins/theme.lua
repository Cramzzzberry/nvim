-- return { 
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       no_italic = true
--     })
--     vim.cmd.colorscheme("catppuccin-mocha")
--   end
-- }


return {
  "Yazeed1s/minimal.nvim",
  config = function()
    vim.g.transparent_background = true
    vim.cmd.colorscheme("minimal")
  end
}

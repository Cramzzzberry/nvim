-- return {
--   "scottmckendry/cyberdream.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("cyberdream").setup({
--       transparent = true,
--       saturation = 1
--     })
--     vim.cmd("colorscheme cyberdream")
--   end
-- }

return {
  "luisiacc/gruvbox-baby",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_baby_transparent_mode = 1
    vim.cmd("colorscheme gruvbox-baby")
  end
}

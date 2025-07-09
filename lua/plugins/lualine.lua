return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      component_separators = "", -- Remove default separators
      section_separators = {
        left = " ",              -- Your desired left arrow character
        right = " ",             -- Your desired right arrow character
      },
    },
  }
}

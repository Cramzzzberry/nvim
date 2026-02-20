return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        -- Use Prettier for Angular TypeScript, HTML, and SCSS files
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        html = { "prettierd" },
        scss = { "prettierd" },
        css = { "prettierd" },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
      }
    })
  end,
}

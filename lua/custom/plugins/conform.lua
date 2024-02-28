return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      jsx = { 'prettier' },
      vue = { 'prettier' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      json = { 'prettier' },
      html = { 'prettier' },
      css = { 'prettier' },
    },
    format_after_save = {
      -- I recommend these options. See :help conform.format for details.
      lsp_fallback = true,
    },
  },
}

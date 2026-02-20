-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clipboard setup
vim.schedule(
  function()
    vim.opt.clipboard = "unnamedplus"
  end
)

-- Show numbers on the side
vim.opt.number = true
vim.opt.relativenumber = true

-- Set the size of the tabs and make it into spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Vertical navigation
vim.keymap.set("n", "J", "<c-d>zz")
vim.keymap.set("n", "K", "<c-u>zz")
vim.keymap.set("v", "J", "5j")
vim.keymap.set("v", "K", "5k")

-- Window pane navigation
vim.keymap.set("n", "<a-h>", "<c-w>h")
vim.keymap.set("n", "<a-j>", "<c-w>j")
vim.keymap.set("n", "<a-k>", "<c-w>k")
vim.keymap.set("n", "<a-l>", "<c-w>l")

-- Save and quit mappings
vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "[W]rite", silent = true })
vim.keymap.set("n", "<leader>q", ":q<cr>", { desc = "[Q]uit", silent = true })
vim.keymap.set("n", "<leader>Q", ":q!<cr>", { desc = "[Q]uit (Forced)", silent = true })

-- Indentation mappings
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Clear search highlightings
vim.keymap.set("n", "<esc>", ":nohlsearch<cr>", { silent = true })

-- Dont show the mode in the command line
vim.opt.showmode = false

-- Setting it if there's a nerd font installed
vim.g.have_nerd_font = true

-- Set the minimum lines to scroll the content
vim.opt.scrolloff = 10

-- Exit terminal mode
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- Configure how splits will open
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Case-insensitive search UNLESS \C or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Always show sign column
vim.o.signcolumn = "yes:1"

-- Open Lazy.nvim dashboard
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<cr>", { silent = true, desc = "[L]azy Dashboard" })

-- Enable 24-bit color
vim.opt.termguicolors = true

-- Make cursor into block on the following modes
-- vim.opt.guicursor = "n-v-i-c:block"

-- Enable LSP configuration
vim.lsp.enable({
  "lua_ls",
  "angularls",
  "ts_ls",
  "tsls",
  "html",
  "cssls",
  "clangd",
  "tailwindcss"
})

-- Format on save
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp", { clear = true }),
  callback = function(args)
    -- 2
    vim.api.nvim_create_autocmd("BufWritePre", {
      -- 3
      buffer = args.buf,
      callback = function()
        -- 4 + 5
        vim.lsp.buf.format { async = false, id = args.data.client_id }
      end,
    })
  end
})

-- LSP Diagnostics
vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>',
  { noremap = true, silent = true, desc = "[O]pen float" })
vim.api.nvim_set_keymap('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>',
  { noremap = true, silent = true, desc = "[P]revious" })
vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>',
  { noremap = true, silent = true, desc = "[N]ext" })
vim.api.nvim_set_keymap('n', '<leader>da', '<cmd>lua vim.diagnostic.setloclist()<CR>',
  { noremap = true, silent = true, desc = "[A]ll diagnostics" })

-- Call Lazy nvim
require("config.lazy")

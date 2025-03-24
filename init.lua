-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Window pane navigation
vim.keymap.set("n", "<a-h>", "<c-w>h")
vim.keymap.set("n", "<a-j>", "<c-w>j")
vim.keymap.set("n", "<a-k>", "<c-w>k")
vim.keymap.set("n", "<a-l>", "<c-w>l")

-- save and quit mappings
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>Q", ":q!<cr>")

-- clear search highlightings
vim.keymap.set("n", "<esc>", ":nohlsearch<cr>")

-- Dont show the mode in the command line
vim.opt.showmode = false

-- Setting it if there's a nerd font installed
vim.g.have_nerd_font = true

-- Set the minimum lines to scroll the content
vim.opt.scrolloff = 5

-- Exit terminal mode
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- configure how splits will open
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Always show sign column
vim.o.signcolumn = "yes:1"

-- call Lazy nvim
require("config.lazy")

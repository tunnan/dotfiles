-- Options
vim.g.mapleader = " "
vim.o.splitright = true
vim.o.number = true
vim.o.numberwidth = 3
vim.o.scrolloff = 8
vim.o.updatetime = 50

-- Indents
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- Backups
vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = false

-- Search
vim.o.hlsearch = false
vim.o.incsearch = true

-- Plugins
vim.g.AutoPairsMultilineClose = false

-- Remaps
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>r", ":!py main.py<cr>")
vim.keymap.set("n", "<c-up>", "{")
vim.keymap.set("n", "<c-down>", "}")
vim.keymap.set("n", "<c-left>", "B")
vim.keymap.set("n", "<c-up>", "E")

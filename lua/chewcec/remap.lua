
vim.g.mapleader = " "

--exit with ee
vim.keymap.set('n', '<leader>ee', ':Ex<CR>')
-- normal mode ctrl + c
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Reassign <C-r> to redo
vim.keymap.set('n', '<C-r>', '<cmd>redo<CR>', { desc = "Redo" })




vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", vim.cmd.tabprev)
vim.keymap.set("n", "<leader>l", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>x", vim.cmd.tabc)

vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

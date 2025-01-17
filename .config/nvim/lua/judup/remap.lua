vim.g.mapleader = " "

-- Some easier mappings
vim.keymap.set("n", "<leader>pp", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>h", vim.cmd.bprev)
vim.keymap.set("n", "<leader>l", vim.cmd.bnext)
vim.keymap.set("n", "<leader>x", vim.cmd.bc)

-- Bol Eol easier mappings
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Window Switch 
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Greatest Keymap ever
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Matching more characters with i and a option
local chars = { '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%' }

for _, char in ipairs(chars) do
  vim.api.nvim_set_keymap('x', 'i' .. char, ':<C-u>normal! T' .. char .. 'vt' .. char .. '<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('o', 'i' .. char, ':normal vi' .. char .. '<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('x', 'a' .. char, ':<C-u>normal! F' .. char .. 'vf' .. char .. '<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('o', 'a' .. char, ':normal va' .. char .. '<CR>', { noremap = true, silent = true })
end

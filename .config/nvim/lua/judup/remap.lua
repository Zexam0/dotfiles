vim.g.mapleader = " "

-- Some easier mappings
vim.keymap.set("n", "<leader>pp", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>h", vim.cmd.bprev)
vim.keymap.set("n", "<leader>l", vim.cmd.bnext)
vim.keymap.set("n", "<leader>x", vim.cmd.bc)

-- Correct Escape key for terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Bol Eol easier mappings
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Window Switch like tmux
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- (Second) Greatest Keymap ever
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

-- Create Section lines
vim.keymap.set("n", "<leader>S", function()
  local comment_str = vim.bo.commentstring or "// %s"
  local comment_prefix = comment_str:match("^([^%%]+)") or "//"
  -- ^ : Anchor to beginning 
  -- ( ) : Capture this group
  -- [^%%] : Any char not equal to % (double it to escape it) 
  -- + : one or more
  comment_prefix = comment_prefix:gsub("%s*$", "")
  -- %s : any whitespace
  -- * : zore or more
  -- $ : end of string
  -- gsub : replace the match with the second string

  local section_line = string.format("%s%s",
    comment_prefix,
    string.rep(comment_prefix, 20)
  )
  -- string.format( [string format], s1, s2 ... sn) 

  vim.api.nvim_put({section_line}, "l", true, true)
end)


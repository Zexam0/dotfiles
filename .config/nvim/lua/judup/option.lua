
vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Correct indentation
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Remove annoying files
vim.opt.undofile = true
vim.opt.swapfile = false

-- QoL
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 50
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 100

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = "tab:▏ ,trail:·,leadmultispace:▏ ,nbsp:␣"
vim.opt.cursorline = true

vim.opt.inccommand = 'split'

vim.opt.scrolloff = 8

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- We Hate signcolumn in this house
vim.opt.signcolumn = 'no'

-- Correct filetype for y86
vim.api.nvim_create_autocmd({"BufNewFile","BufRead"}, {
  pattern = {"*.ys"},
  callback = function() vim.opt.filetype = "asm" end,
})




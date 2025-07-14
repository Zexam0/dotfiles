local prev_col_name = nil
local prev_bg_col = nil

-- Detect markdown on enter and change colortheme
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.md,*.markdown",
  callback = function()
    if not prev_col_name then
      prev_col_name = vim.g.colors_name or "default"
    end

    if not prev_bg_col then
      prev_bg_col = vim.g.background or "dark"
    end
    vim.opt_local.textwidth = 70
    vim.opt_local.linebreak = true
    vim.opt_local.wrap = false
    vim.opt_local.formatoptions = "tcqwa1"
    vim.opt_local.background = "light"
    vim.cmd.colorscheme("kanagawa")
  end,
})

-- Detect closing markdown and restore colortheme
vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*.md,*markdown",
  callback = function()
    if prev_col_name then
      vim.cmd.colorscheme(prev_col_name)
      prev_col_name = nil
    end

    if prev_bg_col then
      vim.opt_local.background = prev_bg_col
      prev_bg_col = nil
    end
  end,
})

-- Remove checkhealth from the markdown detection
vim.api.nvim_create_autocmd("FileType", {
  pattern = "checkhealth",
  callback = function()
  end,
})

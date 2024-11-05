return {
	{
		"Pocco81/true-zen.nvim",
		config = function()
      vim.keymap.set("n", "<leader>wv", ":TZAtaraxis<CR>")
			require("true-zen").setup({
        modes = {
          ataraxis = { 
            minimum_writing_area = {
              width = 90,
              height = 50
            }
          }
        }
      })
		end,
	},
}

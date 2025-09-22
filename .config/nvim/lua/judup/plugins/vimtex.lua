return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_latexmk =  { options = { '-synctex=0', '--shell-escape' } }
      vim.g.vimtex_mappings_enabled = 0
      vim.g.vimtex_format_enabled = 1
      vim.g.vimtex_format_method = "latexindent"
      vim.g.vimtex_quickfix_enable = 0 
      vim.g.vimtex_quickfix_mode = 0
      vim.keymap.set("n", "<leader>cc", "<plug>(vimtex-compile-ss)")
      vim.keymap.set("n", "<leader>cv", "<plug>(vimtex-view)")
      vim.keymap.set("n", "<leader>cr", function()
        vim.cmd("silent! write")
        vim.fn["vimtex#compiler#compile_ss"]()
        vim.fn["vimtex#view#view"]()
      end)
      vim.api.nvim_create_autocmd({"User"},{
          pattern = "VimtexEventQuit",
          command = "VimtexClean",
      })
    end
  },
}

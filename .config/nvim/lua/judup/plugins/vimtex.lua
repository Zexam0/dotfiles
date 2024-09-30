return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_latexmk =  { options = { '-synctex=0' } }
      vim.g.vimtex_mappings_enabled = 0
      vim.g.maplocalleader = " "
      vim.keymap.set("n", "<localleader>cc", "<plug>(vimtex-compile-ss)")
      vim.keymap.set("n", "<localleader>cv", "<plug>(vimtex-view)")
      vim.api.nvim_create_autocmd({"User"},{
          pattern = "VimtexEventQuit",
          command = "VimtexClean",
      })
    end
  },
}

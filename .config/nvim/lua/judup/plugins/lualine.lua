return {

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'material',
          },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'buffers' },
          lualine_c = {},
          lualine_x = { 'filetype' },
          lualine_y = { 'diagnostics', 'diff', 'branch' },
          lualine_z = { 'location' },
        },
      })
    end,
  }

}


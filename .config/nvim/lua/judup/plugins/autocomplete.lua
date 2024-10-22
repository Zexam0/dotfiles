




return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        "L3MON4D3/LuaSnip",
        -- build = (function()
        --
        --   if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
        --     return
        --   end
        --   return 'make install_jsregexp'
        --
        -- end)(),
        -- you can add dependencies here 
        dependencies = {
          "rafamadriz/friendly-snippets",
        },
      },
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
    },
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      require("luasnip.loaders.from_vscode").lazy_load()
      luasnip.config.setup {}
      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        --completion = { completeopt = 'menu,menuone,noinsert' },
        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i', 'c'}),
          ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i', 'c'}),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<CR>'] = cmp.mapping.confirm { 
            behavior = cmp.ConfirmBehavior.Replace,
            select = true 
          },
          ['<C-r>'] = cmp.mapping.complete(),
        },
        sources = cmp.config.sources {
          --{
          --name = 'lazydev',
          --group_index = 0,
          --},
          --{ name = 'nvim_lsp' },
          { name = 'luasnip' },
          --{ name = 'path' },
        },
      }
    end
  },

}

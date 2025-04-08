return {
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    lazy = false,
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local ls = require("luasnip")
      ls.log.set_loglevel("debug")
      ls.config.set_config({
        update_events = { "TextChangedI", "TextChanged" },
        enable_autosnippets = true,
        history = true,
        store_selection_keys = "<Tab>",
      })

      -- Old test, kept for unforseen scenario
      -- local snippets = dofile(vim.fn.expand("~/dotfiles/.config/nvim/lua/judup/snippets/"))
      -- ls.add_snippets("all", snippets)

      --[[
          Need to pass it through schedule
          to make sure Luasnip load entirely
          before loading the snippets
      --]]
      vim.schedule(function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_lua").load({
          paths = vim.fn.expand(
            vim.fn.stdpath("config") .. "/lua/judup/snippets/")
        })
      end)

      -- Debug function
      --[[ vim.schedule(function()
        local loaded = ls.get_snippets("all") or {}
        print(string.format("Loaded %d snippets for 'all' filetype", #loaded))
        if vim.tbl_isempty(loaded) then
          print("Warning: No snippets loaded from all.lua")
        end
      end) ]]
    end,
  },
}

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim",  build = "make" },
      { "nvim-telescope/telescope-file-browser.nvim" },
      { "nvim-tree/nvim-web-devicons",               enabled = vim.g.have_nerd_font },
    },
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
          file_browser = {
            theme = 'dropdown',
            hijack_netrw = true,
            previewer = false,
            initial_mode = "normal",
            grouped = true,
            mappings = {
              ["i"] = {},
              ["n"] = {},
            },
          },
        },
        winblend = true,
        pickers = {
          find_files = {
            previewer = false,
            theme = "dropdown",
          },
          buffers = {
            initial_mode = "normal",
            theme = "ivy",
            mappings = {
              ["n"] = { ["<leader>x"] = actions.delete_buffer + actions.move_to_top, },
            },
          },
        },
      })
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("file_browser")
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader><TAB>", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fg", function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end, { desc = "Telescope Grep" })
    end,
  },
}

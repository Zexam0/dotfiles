return {
 {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "williamboman/mason.nvim",
      { "jay-babu/mason-nvim-dap.nvim", dependencies = { "nvim-neotest/nvim-nio" } },
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.disconnect.dapui_config = function()
        dapui.close()
      end
      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
      vim.keymap.set("n", "<leader>dc", dap.continue, {})
      vim.keymap.set("n", "<leader>dq", dap.terminate, {})

      local daps = { "cppdbg" }
      require("mason").setup()
      require("mason-nvim-dap").setup({ ensure_installed = daps })

      require("judup.plugins.dap-config.cpptools").setup()
      dapui.setup()
    end,
  },
}

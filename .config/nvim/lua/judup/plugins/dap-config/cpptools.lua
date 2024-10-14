local M = {}

function M.setup()
  local dap = require("dap") 
  dap.adapters.cppdbg = {
    name = "cppdbg",
    type = "executable",
    command = vim.fn.stdpath("data") .. "/mason/bin/OpenDebugAD7",
  }
  dap.configurations.cpp = {
  { 
    name = "Launch",
    type = "cppdbg",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopAtEntry = true,
      symbolLoadInfo = { loadAll = false },
    },
    {
      name = "Attach to gdbserver :1234",
      type = "cppdbg",
      request = "launch",
      MIMode = "gdb",
      miDebuggerServerAddress = "localhost:1234:",
      miDebuggerPath = "/usr/bin/gdb",
      cwd = "${workspaceFolder}",
      symbolLoadInfo = { loadAll = false },
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
    },
  }
  dap.configurations.h = dap.configurations.cpp
end

return M

vim.bo.shiftwidth = 2
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.expandtab = true

local dap = require("dap")

dap.configurations.c = {
  {
    name = "Debug C (lldb)",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = vim.fn.getcwd(),
    stopOnEntry = false,
    args = {},
  },
}

dap.configurations.cpp = dap.configurations.c

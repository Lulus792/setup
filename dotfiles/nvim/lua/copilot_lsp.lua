
vim.lsp.config("copilot", {
  name = "copilot",
  cmd = { "copilot-language-server", "--stdio" },
  root_dir = vim.fn.getcwd(),
})

vim.lsp.enable("copilot")

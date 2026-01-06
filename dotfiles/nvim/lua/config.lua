-- Basic settings to get started
vim.o.number = true
vim.o.relativenumber = false 
vim.o.termguicolors = true
vim.o.mouse = 'a'
vim.o.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_matchit = 1

return {}

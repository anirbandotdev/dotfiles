vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4     
vim.o.softtabstop = 4  
vim.o.shiftwidth = 4  
vim.o.expandtab = true
vim.g.mapleader = " "

vim.cmd.colorscheme "catppuccin"

vim.pack.add({ 

	"https://github.com/catppuccin/nvim",
	"https://github.com/tree-sitter/tree-sitter",
	"https://github.com/wakatime/vim-wakatime",
    "https://github.com/IogaMaster/neocord"
 })


 vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'Open File Explorer' })
vim.keymap.set("i", "jk", "<ESC>")

require("plugins.presence")

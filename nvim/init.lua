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
  "https://github.com/IogaMaster/neocord",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/lewis6991/gitsigns.nvim",
 })

vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'Open File Explorer' })
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set('i', '<c-space>', function()
  vim.lsp.completion.get()
end)


require("plugins.presence")
require("plugins.telescope")
require("plugins.lsp")
require("mason").setup()


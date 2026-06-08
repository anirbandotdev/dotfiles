vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.g.mapleader = " "

vim.cmd.colorscheme("catppuccin")

vim.pack.add({
	"https://github.com/catppuccin/nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/wakatime/vim-wakatime",
	"https://github.com/vyfor/cord.nvim",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/m4xshen/autoclose.nvim",
	"https://github.com/windwp/nvim-ts-autotag",
})

vim.keymap.set("n", "<leader>e", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("b#")
	else
		vim.cmd("Ex")
	end
end, { desc = "Open File Explorer" })

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "<c-space>", function()
	vim.lsp.completion.get()
end)

require("mason").setup()
require("plugins.telescope")
require("plugins.presence")
require("plugins.lsp")
require("plugins.formatter")
require("plugins.autoclose")
require("plugins.autotag")
require("plugins.treesitter")

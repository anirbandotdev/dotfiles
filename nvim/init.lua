vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.g.mapleader = " "

vim.pack.add({
	"https://github.com/blazkowolf/gruber-darker.nvim",
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
	"https://github.com/xiyaowong/transparent.nvim",
	"https://github.com/catppuccin/nvim",
})

vim.pack.add({
	{
		src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
		version = vim.version.range("3"),
	},
	-- dependencies
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	-- optional, but recommended
	"https://github.com/nvim-tree/nvim-web-devicons",
})

-- vim.cmd.colorscheme("gruber-darker")
vim.cmd.colorscheme("catppuccin-nvim")

require("keymaps")
require("mason").setup()
require("plugins.telescope")
require("plugins.presence")
require("plugins.lsp")
require("plugins.formatter")
require("plugins.autoclose")
require("plugins.autotag")
require("plugins.treesitter")
require("plugins.transparent")

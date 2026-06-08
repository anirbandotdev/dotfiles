local tree = require("nvim-treesitter")

tree.setup({ install_dir = vim.fn.stdpath("data") .. "/site" })
tree.install({
	"lua",
	"javascript",
	"html",
	"typescript",
	"c",
	"cpp",
	"python",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "<filetype>" },
	callback = function()
		vim.treesitter.start()
	end,
})

vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.wo[0][0].foldmethod = "expr"

vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

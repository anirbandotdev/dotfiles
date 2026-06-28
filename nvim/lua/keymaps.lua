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

vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", "<Esc>:q<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-A-c>", "<Esc>:q!<CR>", { noremap = true, silent = true })

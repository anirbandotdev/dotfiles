vim.cmd([[set completeopt+=menuone,noselect,popup]])

vim.diagnostic.config({
	virtual_text = true,
	float = {
		border = "rounded",
	},
	signs = true,
	underline = true,
	update_in_insert = false,
})
local lsps = {
	{
		"ts_ls",
		{
			cmd = { "typescript-language-server", "--stdio" },
			filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
			on_attach = function(client, bufnr)
				vim.lsp.completion.enable(true, client.id, bufnr, {
					autotrigger = true,
					convert = function(item)
						return {
							abbr = item.label:gsub("%b()", ""),
						}
					end,
				})

				vim.keymap.set("i", "<C-Space>", vim.lsp.completion.get, {
					buffer = bufnr,
					desc = "Trigger completion",
				})
			end,
		},
	},
	{
		"lua_ls",
		{
			cmd = { "emmylua_ls" },
			filetypes = { "lua" },
			on_attach = function(client, bufnr)
				vim.lsp.completion.enable(true, client.id, bufnr, {
					autotrigger = true,
					convert = function(item)
						return {
							abbr = item.label:gsub("%b()", ""),
						}
					end,
				})
			end,
		},
	},
	{
		"clangd",
		{
			cmd = {
				"clangd",
				"--clang-tidy",
				"--background-index",
			},
			filetypes = { "c", "cpp", "objc", "objcpp" },
			on_attach = function(client, bufnr)
				vim.lsp.completion.enable(true, client.id, bufnr, {
					autotrigger = true,
					convert = function(item)
						return {
							abbr = item.label:gsub("%b()", ""),
						}
					end,
				})
			end,
		},
	},
	{
		"pyright",
		{
			cmd = {
				"pyright-langserver",
				"--stdio",
			},
			filetypes = { "python" },
			on_attach = function(client, bufnr)
				vim.lsp.completion.enable(true, client.id, bufnr, {
					autotrigger = true,
					convert = function(item)
						return {
							abbr = item.label:gsub("%b()", ""),
						}
					end,
				})
			end,
		},
	},
}

for _, lsp in pairs(lsps) do
	local name, config = lsp[1], lsp[2]
	vim.lsp.config(name, config)
	vim.lsp.enable(name)
end

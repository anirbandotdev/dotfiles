local conform = require("conform")

conform.setup({

	formatters_by_ft = {
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		jsonc = { "prettier" },
		lua = { "stylua" },
		c = { "clang-format" },
	},

	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 500,
	},
	format_after_save = {
		lsp_format = "fallback",
	},
	notify_on_error = true,
	notify_no_formatters = true,
	log_level = vim.log.levels.ERROR,
})

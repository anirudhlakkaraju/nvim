require("conform").setup({
	formatters_by_ft = {
		-- Conform will run multiple formatters sequentially
		lua = { "stylua" },
		python = { "isort", "black" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

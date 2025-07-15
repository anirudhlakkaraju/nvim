require("conform").setup({
	formatters_by_ft = {
		-- Conform will run multiple formatters sequentially
		lua = { "stylua" },
		python = { "isort", "ruff_format" },

		css = { "prettier" },
		html = { "prettier" },

		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		json = { "prettier" },
		jsonc = { "prettier" },
		jsx = { "prettier" },
		markdown = { "prettier" },
		react = { "prettier" },
		yaml = { "prettier" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		async = false,
		timeout_ms = 50000,
		lsp_fallback = true,
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

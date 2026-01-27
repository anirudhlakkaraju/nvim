return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    dependencies = {
        "williamboman/mason.nvim",
    },
    config = function()
        require("conform").setup({
            formatters_by_ft = {
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
                yaml = { "prettier" },
            },

            format_on_save = {
                async = false,
                timeout_ms = 5000,
                lsp_fallback = true,
            },
        })
    end,
}

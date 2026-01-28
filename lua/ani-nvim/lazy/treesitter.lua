return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {
                "javascript",
                "html",
                "css",
                "cpp",
                "go",
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
            },
            sync_install = false,
            auto_install = true,
        })

        -- Auto install missing parsers and enable treesitter highlighting
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "*",
            callback = function()
                local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
                if not lang then
                    return
                end

                -- Install parser if not available
                if not pcall(vim.treesitter.language.add, lang) then
                    pcall(vim.cmd, "TSInstall " .. lang)
                end

                pcall(vim.treesitter.start)
            end,
        })
    end,
}

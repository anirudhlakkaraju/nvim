require("oil").setup({
    default_file_explorer = false,
    view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
    }
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil File Explorer" })

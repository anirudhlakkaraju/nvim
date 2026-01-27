return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        require("telescope.builtin")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find [P]roject [F]iles" })
        vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find Git Files" })
        vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = "[S]earch Recently Opened Files" })
        vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
        vim.keymap.set("n", "<leader>gr", builtin.lsp_references, { desc = "[G]oto [R]eferences" })
        vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
        vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
        vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
        vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Find [S]tring in [P]roject" })

        vim.keymap.set("n", "<leader>pws", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)

        -- Open Telescope for dotfiles (config dir)
        vim.keymap.set("n", "<leader>nc", function()
            builtin.find_files({
                cwd = "~/dotfiles",
                hidden = true,
                file_ignore_patterns = { "%.git/", "%git" },
                -- follow = true,
            })
        end, { desc = "Search [N]eovim [C]onfig Files" })

        -- Open Telescope for notes dir
        vim.keymap.set("n", "<leader>sn", function()
            builtin.find_files({
                cwd = vim.fn.expand("~") .. "/OneDrive/Documents/notes",
            })
        end, { desc = "[S]earch [N]otes" })
    end,
}

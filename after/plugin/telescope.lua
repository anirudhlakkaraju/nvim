local builtin = require('telescope.builtin')

-- Insanely useful 
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find [P]roject [F]iles' })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Find [S]tring in [P]roject' })
vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recently Opened Files ("." for repeat)' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })

-- Nice to have
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })

-- Open Telescope for Nvim config dir
vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath('config') }
end, { desc = '[S]earch [N]eovim Config Files' })

local harpoon = require("harpoon")

harpoon:setup()

-- Opens Harpoon quick toggle menu UI
vim.keymap.set("n", "<C-e>",
    function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    { desc = '[H]arpoon toggle menu' }
)

-- Adds current file to Harpoon
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = '[A]dd file to Harpoon' })

-- Switches between Harpooned files quickly
vim.keymap.set("n", "<C-g>", function() harpoon:list():select(1) end, { desc = '[G]arpoon file 1' })
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = '[T]arpoon file 2' })
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = '[N]arpoon file 3' })
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = '[S]arpoon file 4' })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = '[P]revious Harpoon buffer' })
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = '[N]ext Harpoon buffer' })

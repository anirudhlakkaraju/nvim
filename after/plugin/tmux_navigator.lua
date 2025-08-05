-- Neovim Lua config for tmux navigation keymaps
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", opts)
keymap("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", opts)
keymap("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", opts)
keymap("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", opts)

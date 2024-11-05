-- Disable <C-t> only for Go files
-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "go",
--     callback = function()
--         vim.api.nvim_set_keymap('n', '<C-t>', '<Nop>', { noremap = true, silent = true })
--     end
-- })
-- -- Remap <C-t> to do nothing
-- vim.api.nvim_set_keymap('n', '<C-t>', '<Nop>', { noremap = true, silent = true })

-- Enable automatic type information display
vim.g.go_auto_type_info = 1

-- Automatically format on save using goimports
vim.g.go_fmt_command = "goimports"

-- Automatically open quickfix window for errors
vim.g.go_auto_quickfix = 1

-- Enable Go Info mode
vim.g.go_info_mode = 1  -- Show type info when hovering over identifiers

-- Enable syntax highlighting for test functions
vim.g.go_highlight_tests = 1

-- Open tests in a new split window
vim.g.go_split_test = 1

-- Optional: Automatically show errors in a quickfix window
vim.g.go_auto_quickfix = 1


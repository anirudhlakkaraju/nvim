require('dap-go').setup(
    {
        dap_configurations = {
            {
                type = "go",
                name = "Launch file",
                request = "launch",
                program = "${file}",
                dlvPath = "/path/to/dlv", -- Specify the path if not in your PATH
            },
        },
    }
)


-- Key mappings using vim.keymap.set()
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end,
    { noremap = true, silent = true, desc = "Toggle Breakpoint" })
vim.keymap.set('n', '<leader>dus', function()
    local widgets = require('dap.ui.widgets')
    local sidebar = widgets.sidebar(widgets.scopes)
    sidebar.open()
end, { noremap = true, silent = true, desc = "Open Debugging Sidebar" })
vim.keymap.set('n', '<leader>dgt', function() require('dap-go').debug_test() end,
    { noremap = true, silent = true, desc = "Debug Go Test" })
vim.keymap.set('n', '<leader>dgl', function() require('dap-go').debug_last() end,
    { noremap = true, silent = true, desc = "Debug Last Go Test" })

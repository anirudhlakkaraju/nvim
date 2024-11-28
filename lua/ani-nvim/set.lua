vim.opt.guicursor = "" -- Fat cursor

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

-- vim.opt.wrap = false    -- No line wrap
--
-- -- Enable line wrap only for markdown and html files
-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = {"markdown", "html"},
--     callback = function()
--         vim.opt_local.wrap = true
--     end,
-- })
--
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Long running undo tree
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 12 -- Never go less than 12 lines on scroll
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

-- Enable mouse mode, can be useful for resizing splits
vim.opt.mouse = 'a'

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.mapleader = " "                         -- Leader is Space key
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Opens netrw

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- Move highlighted text up with automatic indent
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- Move highlighted text down with automatic indent

vim.keymap.set("n", "J", "mzJ`z")             -- Appends bottom line to the end of current line and keeps cursor in place
vim.keymap.set("n", "<C-d>", "<C-d>zz")       -- Half page jumping while keeping the cursor in the center of the page
vim.keymap.set("n", "<C-u>", "<C-u>zz")       -- Half page jumping while keeping the cursor in the center of the page- Allows / search terms to stay in the middle
vim.keymap.set("n", "n", "nzzzv")             -- Allows / search terms to stay in the middle
vim.keymap.set("n", "N", "Nzzzv")             -- Allows / search terms to stay in the middle


-- Copies to system clipboard instead of vim registers,
-- so content can be pasted outside of vim using <C-v>
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("x", "<leader>p", "\"_dP") -- Deletes highlighted text to past over without overwriting the yanked content

-- Deleting to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Can switch to any project
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Formats current buffer text
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

vim.keymap.set("n", "G", "Gzz")         -- Sets cursor at end of file and centers the view

-- Quickfix Navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replaces the current word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Exit inbuilt terminal. Might not work for all terminal emulators
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.g.mapleader = " " -- Leader is Space key
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iewer (Explore)" })

vim.keymap.set("n", "H", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Hover Diagnostics" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "[J] Move highlighted text down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "[K] Move highlighted text up" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "[J] Append line below to current" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "[C-d] Half-page down, center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "[C-u] Half-page up, center cursor" })
vim.keymap.set("n", "n", "nzzzv", { desc = "[N]ext search term centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "[N]ext search term centered (reverse)" })
vim.keymap.set("n", "G", "Gzz", { desc = "[G]o to end and center view" })

vim.keymap.set("n", "<leader>y", '"+y', { desc = "[Y]ank to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "[Y]ank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "[Y]ank line to system clipboard" })
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "[P]aste over selection without yanking" })
vim.keymap.set("n", "<leader>d", '"_d', { desc = "[D]elete to void register" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "[D]elete to void register" })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "[F]ind projects (tmux)" })

vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end, { desc = "[F]ormat buffer" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "[C-K] Next quickfix" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "[C-J] Previous quickfix" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "[K] Next location list" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "[J] Previous location list" })

vim.keymap.set(
	"n",
	"<leader>s",
	":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
	{ desc = "[S]earch and replace current word" }
)

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "[Esc] Exit terminal mode" })

-- Basic err check in for go files
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

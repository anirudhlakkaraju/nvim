return {
	"github/copilot.vim",
	config = function()
		vim.keymap.set("n", "<leader>ce", function()
			vim.cmd("Copilot enable")
		end, { desc = "[C]opilot [E]nable" })

		vim.keymap.set("n", "<leader>cd", function()
			vim.cmd("Copilot disable")
		end, { desc = "[C]opilot [D]isable" })
	end,
}

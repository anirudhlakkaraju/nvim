return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "-", "<CMD>Oil<CR>", desc = "Open Oil File Explorer" },
	},
	config = function()
		require("oil").setup({
			default_file_explorer = false,
			view_options = {
				show_hidden = true,
			},
			columns = {
				"icon",
				"size",
				"mtime",
			},
		})
	end,
}

function ColorMyNvim(color)
	color = color or "rose-pine" -- Default as rose-pine
	vim.cmd.colorscheme(color)

	-- Set color to transparent
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
ColorMyNvim()

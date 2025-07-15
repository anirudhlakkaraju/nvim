-- Reserve a space in the gutter
vim.opt.signcolumn = "yes"

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require("lspconfig").util.default_config
lspconfig_defaults.capabilities =
	vim.tbl_deep_extend("force", lspconfig_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local map = function(keys, func, desc, mode)
			mode = mode or "n"
			vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end

		-- Keybindings + telesscope integration
		local telescope = require("telescope.builtin")
		map("gd", telescope.lsp_definitions, "[G]oto [D]efinition")
		map("gr", telescope.lsp_references, "[G]oto [R]eferences")
		map("gI", telescope.lsp_implementations, "[G]oto [I]mplementation")
		map("<leader>D", telescope.lsp_type_definitions, "Type [D]efinition")
		map("<leader>ds", telescope.lsp_document_symbols, "[D]ocument [S]ymbols")
		map("<leader>ws", telescope.lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

		map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

		map("K", vim.lsp.buf.hover, "Hover Documentation")

		-- Hover to highlight references
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
			local highlight_augroup = vim.api.nvim_create_augroup("kickstart-lsp-highlight", { clear = false })

			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				buffer = event.buf,
				group = highlight_augroup,
				callback = vim.lsp.buf.document_highlight,
			})

			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
				buffer = event.buf,
				group = highlight_augroup,
				callback = vim.lsp.buf.clear_references,
			})

			vim.api.nvim_create_autocmd("LspDetach", {
				group = vim.api.nvim_create_augroup("kickstart-lsp-detach", { clear = true }),
				callback = function(event2)
					vim.lsp.buf.clear_references()
					vim.api.nvim_clear_autocmds({ group = "kickstart-lsp-highlight", buffer = event2.buf })
				end,
			})
		end
	end,
})

--- Add Language Servers

local venv_path = vim.fn.trim(vim.fn.system("poetry env info --path"))
local python_path = vim.fn.system("which python")

if venv_path ~= "" then
	python_path = venv_path .. "/bin/python"
end
require("lspconfig").pyright.setup({
	settings = {
		python = {
			pythonPath = python_path,
		},
	},
})
require("lspconfig").gopls.setup({})
require("lspconfig").lua_ls.setup({
	settings = {
		diagnostics = {
			globals = { "vim" },
			disable = { "missing-fields" },
		},
	},
})
require("lspconfig").ts_ls.setup({})

--- Completion Setup
local cmp = require("cmp")
cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
	},
	snippet = {
		expand = function(args)
			-- You need Neovim v0.10 to use vim.snippet
			vim.snippet.expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({}),
})

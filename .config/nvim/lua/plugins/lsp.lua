return {
	{
		"williamboman/mason.nvim",
		opts = true,
		keys = {
			{ "<leader>lm", "<cmd>Mason<CR>", desc = "Mason" },
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"clangd",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspcfg = require("lspconfig")
			lspcfg.lua_ls.setup({})
			lspcfg.rust_analyzer.setup({})
			lspcfg.clangd.setup({})

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local buf = args.buf

					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration", buffer = buf })
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = buf })
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation", buffer = buf })
					vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Show references", buffer = buf })
					vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover", buffer = buf })
					vim.keymap.set("n", "<leader>lh", vim.lsp.buf.signature_help,
						{ desc = "LSP signature help", buffer = buf })
					vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action,
						{ desc = "Code actions", buffer = buf })
					vim.keymap.set("n", "<leader>ld", vim.lsp.buf.type_definition,
						{ desc = "Type definition", buffer = buf })
					vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename", buffer = buf })
				end,
			})

			require("which-key").add({
				{ "<leader>l", group = "LSP" }
			})
		end,
	},
}

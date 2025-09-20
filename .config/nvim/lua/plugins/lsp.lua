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
				"clangd",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("clangd")

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local buf = args.buf

					vim.keymap.set("n", "gD", vim.lsp.buf.declaration,
						{ desc = "Go to declaration", buffer = buf })
					vim.keymap.set("n", "gd", vim.lsp.buf.definition,
						{ desc = "Go to definition", buffer = buf })
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation,
						{ desc = "Go to implementation", buffer = buf })
					vim.keymap.set("n", "<leader>lu", vim.lsp.buf.references,
						{ desc = "Show references", buffer = buf })
					vim.keymap.set("n", "K",
						function()
							vim.lsp.buf.hover({
								max_width = 120,
								border = "rounded",
								wrap = false,
							})
						end,
						{ desc = "LSP hover", buffer = buf })
					vim.keymap.set("n", "<leader>lg", vim.lsp.buf.signature_help,
						{ desc = "LSP signature help", buffer = buf })
					vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action,
						{ desc = "Code actions", buffer = buf })
					vim.keymap.set("n", "<leader>ld", vim.lsp.buf.type_definition,
						{ desc = "Type definition", buffer = buf })
					vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename,
						{ desc = "Rename", buffer = buf })
					vim.keymap.set("n", "<leader>lh",
						function()
							vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
						end,
						{ desc = "Toggle inlay hints", buffer = buf })
					vim.keymap.set("n", "<leader>lj",
						function() vim.diagnostic.jump({ count = 1 }) end,
						{ desc = "Next diagnostic", buffer = buf })
					vim.keymap.set("n", "<leader>lk",
						function() vim.diagnostic.jump({ count = -1 }) end,
						{ desc = "Previous diagnostic", buffer = buf })
					vim.keymap.set("n", "<leader>li", vim.diagnostic.open_float,
						{ desc = "Show diagnostics", buffer = buf })
				end,
			})

			require("which-key").add({
				{ "<leader>l", group = "LSP" }
			})
		end,
	},
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = true,
	},
}

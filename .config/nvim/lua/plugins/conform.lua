return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>lf",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = function()
		return {
			formatters_by_ft = {
				python = { "isort", "black" },
				rust = { "rustfmt" },
				sql = { "sql_formatter" },
				html = { "prettierd", "prettier", stop_after_first = true },
				css = { "prettierd", "prettier", stop_after_first = true },
				scss = { "prettierd", "prettier", stop_after_first = true },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
				json = { "prettierd", "prettier", stop_after_first = true },
				jsonc = { "prettierd", "prettier", stop_after_first = true },
				vue = { "prettierd", "prettier", stop_after_first = true },
				markdown = { "prettierd", "prettier", stop_after_first = true },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
			format_on_save = {
				timeout_ms = 1000
			},
			formatters = {
				shfmt = {
					prepend_args = { "-i", "2" },
				},
				sql_formatter = {
					cwd = require("conform.util").root_file({ ".sql-formatter.json" }),
				},
				prettierd = {
					env = {
						PRETTIERD_DEFAULT_CONFIG =
							vim.fn.stdpath("config") .. "/default/.prettierrc",
					},
				},
			},
		}
	end,
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}

return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				sql = { "sql_formatter" },
				html = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				json = { "prettier" },
				vue = { "prettier" },
				markdown = { "prettier" },
			},
			formatters = {
				sql_formatter = {
					cwd = require("conform.util").root_file({ ".sql-formatter.json" }),
				},
			},
		},
	},
}

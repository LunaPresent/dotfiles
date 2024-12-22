return {
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{
				"tpope/vim-dadbod",
				cmd = "DB",
			},
			{
				"kristijanhusak/vim-dadbod-completion",
				ft = { "sql", "mysql", "plsql" },
			},
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		keys = {
			{ "<leader>qo", "<cmd>DBUI<cr>", desc = "dadbod ui" }
		},
		init = function()
			vim.g.db_ui_use_nerd_fonts = 1
		end,
	},
}

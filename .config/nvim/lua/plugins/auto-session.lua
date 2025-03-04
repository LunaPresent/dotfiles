return {
	{
		"rmagatti/auto-session",
		lazy = false,
		opts = {
			root_dir = vim.fn.stdpath("state") .. "/sessions/",
			auto_restore = false,
			suppressed_dirs = { "~/", "~/code", "~/Downloads", "/" },
			bypass_save_filetypes = { "dashboard", "dbui", "dbout" },
			close_unsupported_windows = true,
		},
		keys = {
			{ "<leader>fs", "<cmd>SessionSearch<cr>", desc = "Pick session to load" }
		},
	},
}

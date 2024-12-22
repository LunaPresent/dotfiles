return {
	{
		"rmagatti/auto-session",
		lazy = false,

		opts = {
			root_dir = vim.fn.stdpath("state") .. "/sessions/",
			auto_restore = false,
			suppressed_dirs = { "~/", "~/code", "~/Downloads", "/" },
			bypass_save_filetypes = { "dashboard" },
		},
	},
}

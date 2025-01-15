return {
	{
		"chentoast/marks.nvim",
		event = "VeryLazy",
		opts = {
			builtin_marks = { ".", "<", ">", "^", "[", "]", },
			excluded_filetypes = { "lazygit" },
			excluded_buftypes = { "nofile" },
		},
	},
}

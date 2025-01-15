return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "VeryLazy",
		opts = true,
		keys = {
			{ "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Telescope TODO comments" },
		},
	},
}

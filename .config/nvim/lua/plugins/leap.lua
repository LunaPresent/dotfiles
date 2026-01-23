return {
	{
		"ggandor/leap.nvim",
		dependencies = {
			{
				"tpope/vim-repeat",
				event = "VeryLazy",
			}
		},
		keys = {
			{ "s",  mode = { "n", "x", "o" }, desc = "Leap Forward to" },
			{ "S",  mode = { "n", "x", "o" }, desc = "Leap Backward to" },
			{ "gs", mode = "n",               desc = "Leap from Windows" },
		},
		config = function()
			vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
			vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
			vim.keymap.set("n", "gs", "<Plug>(leap-from-window)")
		end,
	}
}

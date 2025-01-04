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
			{ "gs", mode = { "n", "x", "o" }, desc = "Leap from Windows" },
		},
		config = function()
			local leap = require("leap")
			leap.add_default_mappings(true)
		end,
	}
}

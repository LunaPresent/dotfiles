return {
	{
		"kndndrj/nvim-dbee",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		cmd = "Dbee",
		build = function()
			require("dbee").install()
		end,
		opts = true,
		keys = {
			{ "<leader>m", "<cmd>Dbee open<cr>", desc = "Dbee" },
		},
	},
}

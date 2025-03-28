return {
	{
		"HiPhish/rainbow-delimiters.nvim",
		version = "*",
		config = function()
			local rainbow_delimiters = require("rainbow-delimiters")
			require("rainbow-delimiters.setup").setup({
				strategy = {
					[""] = rainbow_delimiters.strategy["global"],
				},
				query = {
					[""] = "rainbow-delimiters",
				},
			})
		end
	},
}

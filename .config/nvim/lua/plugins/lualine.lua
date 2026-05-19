return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		opts = function()
			return {
				options = {
					theme = "catppuccin-nvim",
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_x = {
						{
							function() return " @" .. vim.fn.reg_recording() end,
							color = "Macro",
							cond = function() return vim.fn.reg_recording() ~= "" end,
						},
						{
							require("noice").api.status.command.get,
							cond = function()
								return vim.fn.reg_recording() == "" and
									require("noice").api.status.command.has()
							end,
						},
					},
					lualine_y = {
						{ "encoding", },
						{ "fileformat", },
						{ "filetype", },
					},
				},
			}
		end,
	},
}

return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons", "telescope.nvim" },
		opts = {
			theme = "doom",
			config = {
				header = {
					"",
					"                ███╗   ██╗██╗   ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗                ",
					"                ████╗  ██║╚██╗ ██╔╝██╔══██╗██║   ██║██║████╗ ████║                ",
					"                ██╔██╗ ██║ ╚████╔╝ ███████║██║   ██║██║██╔████╔██║       ╱|、     ",
					"                ██║╚██╗██║  ╚██╔╝  ██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║      (˚ˎ 。7   ",
					"                ██║ ╚████║   ██║   ██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║       |、˜〵   ",
					"                ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝       じしˍ,)ノ",
					"",
					"",
				},
				center = {
					{ icon = " ", key = "n", desc = "New File", action = "enew" },
					{ icon = " ", key = "f", desc = "Find File", action = require("telescope.builtin").find_files },
					{ icon = " ", key = "/", desc = "Find Text", action = require("telescope.builtin").live_grep },
					{ icon = " ", key = "r", desc = "Recent Files", action = require("telescope.builtin").oldfiles },
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = function()
							local session_dir = vim.fn.stdpath("state") .. "/sessions/"
							local config_session_filename = "dashboard-config"
							if vim.fn.filereadable(session_dir .. config_session_filename .. ".vim") == 1 then
								vim.cmd("SessionRestore " .. config_session_filename)
							else
								local config_dir = vim.fn.stdpath("config")
								vim.api.nvim_set_current_dir(config_dir)
								vim.cmd("e init.lua")
								vim.cmd("SessionSave " .. config_session_filename)
							end
						end,
					},
					{ icon = " ", key = "s", desc = "Restore Session", action = "SessionSearch" },
					{ icon = "󰒲 ", key = "l", desc = "Lazy", action = "Lazy" },
					{ icon = " ", key = "q", desc = "Quit", action = "qa" },
				},
			},
		},
	},
}

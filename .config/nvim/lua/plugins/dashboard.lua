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
							local config_dir = vim.fn.stdpath("config")
							local config_session_filename = config_dir:gsub("/", "%%") .. ".vim"
							vim.api.nvim_set_current_dir(config_dir)
							if vim.fn.filereadable(session_dir .. config_session_filename) == 1 then
								require("persistence").load()
							else
								require("telescope.builtin").find_files()
							end
						end,
					},
					{
						icon = " ",
						key = "s",
						desc = "Restore Session",
						action = function()
							require("persistence").select()
						end
					},
					{ icon = "󰒲 ", key = "l", desc = "Lazy", action = "Lazy" },
					{ icon = " ", key = "q", desc = "Quit", action = "qa" },
				},
			},
		},
	},
}

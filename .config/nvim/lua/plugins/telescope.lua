return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-telescope/telescope-ui-select.nvim"
		},
		opts = {
			defaults = {
				mappings = {
					n = {
						["q"] = "close",
					},
				},
			},
			extensions = {
				file_browser = {
					hijack_netrw = true,
				},
				["ui-select"] = {},
			},
		},
		config = function(_, opts)
			local telescope = require("telescope")
			telescope.setup(opts)

			telescope.load_extension("file_browser")
			telescope.load_extension("ui-select")

			require("which-key").add({
				{ "<leader>f", group = "Telescope" }
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader><space>",
				builtin.find_files,
				{ desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>ff",
				builtin.find_files,
				{ desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>/",
				builtin.live_grep,
				{ desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fl",
				builtin.live_grep,
				{ desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb",
				builtin.buffers,
				{ desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fr",
				builtin.oldfiles,
				{ desc = "Telescope recent files" })
			vim.keymap.set("n", "<leader>fe",
				"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
				{ desc = "Telescope file browser" })
		end,
	},
}

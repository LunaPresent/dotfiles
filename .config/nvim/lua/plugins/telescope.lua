return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
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
				["ui-select"] = {},
			},
			pickers = {
				find_files = {
					find_command = {
						"fd",
						"-tf",
						"--hidden",
						"-E",
						".git/",
						"-E",
						"node_modules/"
					},
				},
				grep_string = {
					additional_args = {
						"--hidden",
					},
				},
				live_grep = {
					additional_args = {
						"--hidden",
					},
				},
			},
		},
		config = function(_, opts)
			local telescope = require("telescope")
			telescope.setup(opts)

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
			vim.keymap.set("n", "<leader>fg",
				builtin.git_commits,
				{ desc = "Telescope git commits" })
			vim.keymap.set("n", "<leader>fh",
				builtin.git_bcommits,
				{ desc = "Telescope git history" })
		end,
	},
}

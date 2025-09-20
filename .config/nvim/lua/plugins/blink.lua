return {
	{
		"saghen/blink.cmp",
		version = "*",
		dependencies = {
			{ "rafamadriz/friendly-snippets", },
		},
		event = { "InsertEnter", "CmdlineEnter" },
		opts = {
			completion = {
				list = {
					selection = { preselect = true, auto_insert = false },
					cycle = {
						from_top = false,
						from_bottom = false,
					},
				},
				menu = {
					auto_show = false,
				},
				ghost_text = {
					enabled = true,
				},
			},
			sources = {
				default = { "dadbod", "lazydev", "lsp", "path", "snippets", "buffer", },
				providers = {
					dadbod = {
						name = "Dadbod",
						module = "vim_dadbod_completion.blink",
						score_offset = 100,
					},
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						score_offset = 100,
					},
				},
			},
			keymap = {
				preset = "enter",
				["<C-y>"] = { "select_and_accept" },
				["<C-CR>"] = { "select_and_accept" },
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "show" },
			},
			cmdline = {
				completion = {
					menu = {
						auto_show = true,
					},
					list = {
						selection = { preselect = false, auto_insert = true },
					},
				},
				keymap = {
					preset = "enter",
					["<C-y>"] = { "select_and_accept" },
					["<C-k>"] = { "select_prev", "fallback" },
					["<C-j>"] = { "select_next", "fallback" },
				},
			},
		},
	},
}

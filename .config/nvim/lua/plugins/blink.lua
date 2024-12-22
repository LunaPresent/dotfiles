return {
	{
		"saghen/blink.cmp",
		version = "*",
		dependencies = {
			{ "rafamadriz/friendly-snippets", },
		},
		event = { "InsertEnter", "CmdlineEnter" },
		opts = {
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = {
				list = {
					selection = "manual",
				},
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer", "dadbod" },
				providers = {
					dadbod = {
						name = "Dadbod",
						module = "vim_dadbod_completion.blink",
					},
				},
			},
			keymap = {
				preset = "enter",
				["<Tab>"] = {
					function(cmp)
						if cmp.snippet_active() then
							return cmp.accept()
						else
							return cmp.select_and_accept()
						end
					end,
					"snippet_forward",
					"fallback"
				},
				["<C-y>"] = { "select_and_accept" },
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
			},
		},
	},
}

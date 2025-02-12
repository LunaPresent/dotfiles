return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "frappe",
			integrations = {
				blink_cmp = true,
				dadbod_ui = true,
				dashboard = true,
				gitsigns = true,
				leap = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
						ok = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
						ok = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				noice = true,
				notify = true,
				rainbow_delimiters = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
			custom_highlights = function(c)
				return {
					Character = { fg = c.maroon },
					Structure = { fg = c.teal },
					Type = { fg = c.teal },
					["@type.builtin"] = { fg = c.teal },
				}
			end,
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme "catppuccin"
		end,
	},
}

return {
	{
		"akinsho/bufferline.nvim",
		after = "catppuccin",
		event = "VeryLazy",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					style_preset = bufferline.style_preset.no_italic,
					always_show_bufferline = false,
					auto_toggle_bufferline = true,
				},
				highlights = require("catppuccin.groups.integrations.bufferline").get(),
			})

			require("which-key").add({
				{ "<leader>b", group = "buffer" }
			})
		end,
		keys = {
			{
				"<S-h>",
				"<cmd>BufferLineCyclePrev<cr>",
				desc = "Prev Buffer"
			},
			{
				"<S-l>",
				"<cmd>BufferLineCycleNext<cr>",
				desc = "Next Buffer"
			},
			{
				"<M-h>",
				"<cmd>BufferLineMovePrev<cr>",
				desc = "Move buffer prev"
			},
			{
				"<M-l>",
				"<cmd>BufferLineMoveNext<cr>",
				desc = "Move buffer next"
			},
			{
				"<leader>bb",
				"<cmd>BufferLinePick<cr>",
				desc = "Pick buffer"
			},
			{
				"<leader>bp",
				"<cmd>BufferLineTogglePin<cr>",
				desc = "Toggle Pin"
			},
			{
				"<leader>bD",
				"<cmd>BufferLineGroupClose ungrouped<cr>",
				desc = "Delete Non-Pinned Buffers"
			},
			{
				"<leader>bo",
				"<cmd>BufferLineCloseOthers<cr>",
				desc = "Delete Other Buffers"
			},
			{
				"<leader>br",
				"<cmd>BufferLineCloseRight<cr>",
				desc = "Delete Buffers to the Right"
			},
			{
				"<leader>bl",
				"<cmd>BufferLineCloseLeft<cr>",
				desc = "Delete Buffers to the Left"
			},
			{
				"<leader>bd",
				"<cmd>bp<bar>sp<bar>bn<bar>bd<cr>",
				desc = "Delete Current Buffer"
			},
		},
	},
}

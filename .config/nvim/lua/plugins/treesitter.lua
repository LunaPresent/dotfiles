return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
		build = ":TSUpdate",
		event = "VeryLazy",
		lazy = vim.fn.argc(-1) == 0,
		cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
		config = function()
			local ts = require("nvim-treesitter")
			local langs = {
				"c",
				"lua",
				"markdown",
				"rust"
			}

			ts.install(langs)

			vim.api.nvim_create_autocmd("FileType", {
				pattern = langs,
				callback = function()
					vim.treesitter.start()
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = true,
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
}

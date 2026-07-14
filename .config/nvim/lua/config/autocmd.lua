vim.filetype.add({
	extension = {
		gotmpl = "gotmpl",
	},
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		local ft = args.match
		local lang = vim.treesitter.language.get_lang(ft)
		if not lang then return end

		local ok = select(1, vim.treesitter.language.add(lang))
		if not ok then return end

		vim.treesitter.start(0, lang)
	end,
})

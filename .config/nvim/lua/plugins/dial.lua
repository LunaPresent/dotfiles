return {
	{
		"monaqa/dial.nvim",
		config = function()
			local augend = require("dial.augend")
			require("dial.config").augends:register_group {
				default = {
					augend.constant.alias.bool,
					augend.integer.alias.decimal_int,
					augend.date.alias["%d.%m.%Y"],
					augend.semver.alias.semver,
					augend.user.new(
						{
							find = require("dial.augend.common").find_pattern("%d%d:%d%d.%d%d"),
							add = function(text, addend, cursor)
								local m = tonumber(string.sub(text, 1, 2))
								local s = tonumber(string.sub(text, 4, 5))
								local c = tonumber(string.sub(text, 7, 8))
								c = c + addend
								s = math.floor(s + (c / 100))
								m = math.floor(m + (s / 60))
								s = s % 60
								c = c % 100
								if m < 0 then
									m = 0
									s = 0
									c = 0
								end
								text = string.format("%02d", m)
									.. ":"
									.. string.format("%02d", s)
									.. "."
									.. string.format("%02d", c)
								cursor = #text
								return { text = text, cursor = cursor }
							end
						}
					),
				},

			}
			vim.keymap.set("n", "<C-a>", require("dial.map").inc_normal(), { noremap = true })
			vim.keymap.set("n", "<C-x>", require("dial.map").dec_normal(), { noremap = true })
			vim.keymap.set("v", "<C-a>", require("dial.map").inc_visual(), { noremap = true })
			vim.keymap.set("v", "<C-x>", require("dial.map").dec_visual(), { noremap = true })
		end
	}
}

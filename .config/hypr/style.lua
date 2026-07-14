hl.config({
	general = {
		gaps_in = 4,
		gaps_out = { top = 13, right = 14, bottom = 13, left = 14, },
		border_size = 2,
		col = {
			active_border = { colors = { "#ca9ee6" .. "aa", "#eebebe" .. "99" }, angle = 77 },
			inactive_border = "#595959" .. "aa",
		},
		resize_on_border = false,
		allow_tearing = false,
		layout = "scrolling",
	},
	decoration = {
		rounding = 3,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "#1a1a1a" .. "ee",
		},
		blur = {
			enabled = true,
			size = 4,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
	animations = {
		enabled = true,
	},
	cursor = {
		inactive_timeout = 3,
	},
	master = {
		orientation = "center",
		mfact = 0.4,
		slave_count_for_center_master = 0,
	},
	scrolling = {
		fullscreen_on_one_column = true,
		column_width = 0.5,
		explicit_column_widths = "0.5, 1.0",
		focus_fit_method = 1,
	},
	misc = {
		force_default_wallpaper = 2,
		disable_hyprland_logo = false,
		middle_click_paste = false,
	},
	xwayland = {
		force_zero_scaling = true,
	},
})

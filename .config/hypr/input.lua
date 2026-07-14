hl.config({
	input = {
		kb_layout = "us,us",
		kb_variant = ",colemak_dh_ortho",
		kb_options = "fkeys:basic_13-24",
		numlock_by_default = true,
		follow_mouse = 2,
		sensitivity = 0,
		special_fallthrough = true,

		touchpad = {
			natural_scroll = false,
		},
		tablet = {
			output = "current",
			--active_area_size = { 152.4, 65.3142857 },
			active_area_size = { 215, 92.14285714 },
		}
	},
})

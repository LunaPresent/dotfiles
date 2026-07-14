hl.window_rule({
	name = "suppress-maximize-events",
	match = {
		class = ".*"
	},
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	name = "steam-games",
	match = {
		class = "steam_app_\\d+",
	},
	tag = "+fspls",
	fullscreen_state = "2 3",
	rounding = 0,
	move = { 0, 0 },
})

hl.window_rule({
	name = "steam-workspace",
	match = {
		class = "steam(_app_\\d+)?",
	},
	workspace = 3,
})

hl.window_rule({
	name = "discord-workspace",
	match = {
		class = "discord(-stable)?",
	},
	workspace = 4,
})

hl.window_rule({
	name = "tag-pip",
	match = {
		initial_title = "(Picture-in-Picture)|(Discord Popout)"
	},
	tag = "+pip",
	size = { 960, 540, },
})

hl.window_rule({
	name = "pip-behaviour",
	match = {
		tag = "pip",
	},
	float = true,
	move = { 0, 0, },
	opacity = 0.4,
	border_size = 0,
	pin = true,
})

hl.window_rule({
	name = "no-focus",
	match = {
		tag = "nofocus",
	},
	no_focus = true,
})

hl.workspace_rule({
	workspace = "1",
	layout = "master",
})

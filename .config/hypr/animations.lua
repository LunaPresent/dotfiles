hl.curve("easeInOutSine", { type = "bezier", points = { { 0.37, 0, }, { 0.63, 1, }, }, })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, bezier = "easeInOutSine", style = "slidevert", })

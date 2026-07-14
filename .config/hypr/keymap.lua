hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + apostrophe", hl.dsp.exec_cmd("footclient"))
hl.bind("SUPER + semicolon", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("zen-browser"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("grim -g \"$(slurp -d)\" - | wl-copy"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("grim - | wl-copy"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd("killall -q ashell; /home/lunya/.cargo/bin/ashell"))
hl.bind("SUPER + A", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + F", function()
	if hl.get_active_workspace().tiled_layout == "master" then
		hl.dispatch(hl.dsp.layout("swapwithmaster"))
	else
		hl.dispatch(hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle", }))
	end
end)
hl.bind("SUPER + G", hl.dsp.layout("focusmaster previous"))
hl.bind("SUPER + N", function()
	if hl.get_active_workspace().tiled_layout == "scrolling" then
		hl.dispatch(hl.dsp.layout("colresize +conf"))
	else
		hl.dispatch(hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle", }))
	end
end)
hl.bind("SUPER + M", hl.dsp.send_shortcut({ mods = "CTRL SHIFT", key = "M", window = "class:discord(-stable)?" }))
--hl.bind("SUPER + X", tagwindow, nofocus tag:pip.

--binde = SUPER, comma, resizewindowpixel, -16 -9, tag:pip.
--binde = SUPER, period, resizewindowpixel, 16 9, tag:pip.
--binde = SUPER ALT, comma, execr, hyprctl keyword 'windowrule[pip-behaviour]:opacity' $(qalc -t $(echo "max($(hyprctl getprop tag:pip. opacity)-0.05,0.05)")) > /dev/null
--binde = SUPER ALT, period, execr, hyprctl keyword 'windowrule[pip-behaviour]:opacity' $(qalc -t $(echo "min($(hyprctl getprop tag:pip. opacity)+0.05,1)")) > /dev/null
--bind = SUPER ALT, H, tagwindow, -nofocus tag:pip.
--bind = SUPER ALT, H, focuswindow, tag:pip.
--bind = SUPER ALT, H, movewindow, l
--bind = SUPER ALT, H, focuscurrentorlast
--bind = SUPER ALT, H, tagwindow, nofocus tag:pip.
--bind = SUPER ALT, L, tagwindow, -nofocus tag:pip.
--bind = SUPER ALT, L, focuswindow, tag:pip.
--bind = SUPER ALT, L, movewindow, r
--bind = SUPER ALT, L, focuscurrentorlast
--bind = SUPER ALT, L, tagwindow, nofocus tag:pip.
--bind = SUPER ALT, J, tagwindow, -nofocus tag:pip.
--bind = SUPER ALT, J, focuswindow, tag:pip.
--bind = SUPER ALT, J, movewindow, d
--bind = SUPER ALT, J, focuscurrentorlast
--bind = SUPER ALT, J, tagwindow, nofocus tag:pip.
--bind = SUPER ALT, K, tagwindow, -nofocus tag:pip.
--bind = SUPER ALT, K, focuswindow, tag:pip.
--bind = SUPER ALT, K, movewindow, u
--bind = SUPER ALT, K, focuscurrentorlast
--bind = SUPER ALT, K, tagwindow, nofocus tag:pip.

hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))

hl.bind("SUPER + SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.swap({ direction = "r" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.swap({ direction = "d" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.swap({ direction = "u" }))

hl.bind("SUPER + Q", hl.dsp.focus({ workspace = "1" }))
hl.bind("SUPER + W", hl.dsp.focus({ workspace = "2" }))
hl.bind("SUPER + E", hl.dsp.focus({ workspace = "3" }))
hl.bind("SUPER + R", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPER + T", hl.dsp.focus({ workspace = "5" }))
hl.bind("SUPER + Y", hl.dsp.focus({ workspace = "6" }))
hl.bind("SUPER + U", hl.dsp.focus({ workspace = "7" }))
hl.bind("SUPER + I", hl.dsp.focus({ workspace = "8" }))
hl.bind("SUPER + O", hl.dsp.focus({ workspace = "9" }))
hl.bind("SUPER + P", hl.dsp.focus({ workspace = "10" }))
hl.bind("SUPER + bracketleft", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + bracketright", hl.dsp.focus({ workspace = "e+1" }))

hl.bind("SUPER + SHIFT + Q", hl.dsp.window.move({ workspace = "1" }))
hl.bind("SUPER + SHIFT + W", hl.dsp.window.move({ workspace = "2" }))
hl.bind("SUPER + SHIFT + E", hl.dsp.window.move({ workspace = "3" }))
hl.bind("SUPER + SHIFT + R", hl.dsp.window.move({ workspace = "4" }))
hl.bind("SUPER + SHIFT + T", hl.dsp.window.move({ workspace = "5" }))
hl.bind("SUPER + SHIFT + Y", hl.dsp.window.move({ workspace = "6" }))
hl.bind("SUPER + SHIFT + U", hl.dsp.window.move({ workspace = "7" }))
hl.bind("SUPER + SHIFT + I", hl.dsp.window.move({ workspace = "8" }))
hl.bind("SUPER + SHIFT + O", hl.dsp.window.move({ workspace = "9" }))
hl.bind("SUPER + SHIFT + P", hl.dsp.window.move({ workspace = "10" }))
hl.bind("SUPER + SHIFT + bracketleft", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + bracketright", hl.dsp.window.move({ workspace = "e+1" }))

hl.bind("SUPER + 1", hl.dsp.exec_cmd("ddcutil setvcp 10 5"))
hl.bind("SUPER + 2", hl.dsp.exec_cmd("ddcutil setvcp 10 10"))
hl.bind("SUPER + 3", hl.dsp.exec_cmd("ddcutil setvcp 10 15"))
hl.bind("SUPER + 4", hl.dsp.exec_cmd("ddcutil setvcp 10 20"))
hl.bind("SUPER + 5", hl.dsp.exec_cmd("ddcutil setvcp 10 25"))
hl.bind("SUPER + 6", hl.dsp.exec_cmd("ddcutil setvcp 10 30"))
hl.bind("SUPER + 7", hl.dsp.exec_cmd("ddcutil setvcp 10 35"))
hl.bind("SUPER + 8", hl.dsp.exec_cmd("ddcutil setvcp 10 40"))
hl.bind("SUPER + 9", hl.dsp.exec_cmd("ddcutil setvcp 10 45"))
hl.bind("SUPER + 0", hl.dsp.exec_cmd("ddcutil setvcp 10 50"))

hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:272", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

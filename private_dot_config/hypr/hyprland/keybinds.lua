local terminal = "kitty"
local files = "dolphin"
local mod = "SUPER"
local browser = "librewolf"
local recorder = "gpu-screen-recorder-gtk"
local ipc = "noctalia msg "
local launch = "uwsm app -- "

-- Core binds
hl.bind(mod .. "+SUPER_L", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"), { release = true })
hl.bind(mod .. "+p", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind(mod .. "+comma", hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))
hl.bind(mod .. "+v", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))

-- Programs
hl.bind(mod .. " + Return", hl.dsp.exec_cmd(launch .. terminal))
hl.bind(mod .. " + E", hl.dsp.exec_cmd(launch .. files))
hl.bind(mod .. " + X", hl.dsp.exec_cmd(launch .. browser))
hl.bind(mod .. " + S", hl.dsp.exec_cmd(launch.. "steam"))
hl.bind(mod .. " + H", hl.dsp.exec_cmd(launch .. "heroic"))
hl.bind(mod .. " + ALT + V", hl.dsp.exec_cmd(launch .. "pwvucontrol"))
hl.bind(mod .. " + T", hl.dsp.workspace.toggle_special("recorder"))
hl.bind(mod .. " + R", hl.dsp.exec_cmd(launch .. recorder, { workspace = "special:recorder", float = true }))
hl.bind("CTRL +" .. mod .. " + ALT + K", hl.dsp.exec_cmd("hyprctl kill"))

-- Movement

hl.bind(mod .. " + Q", hl.dsp.window.close(hl.get_active_window()))
hl.bind(mod .. " + W", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mod .. " + D", hl.dsp.window.fullscreen_state({ action = "toggle", internal = 1, client = 1 }))
hl.bind(mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))

-- Lock
hl.bind(mod .. " + L", hl.dsp.exec_cmd("loginctl lock-session"))

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + CTRL + right", hl.dsp.focus({ workspace = "+1" }))
hl.bind(mod .. " + CTRL + left", hl.dsp.focus({ workspace = "-1" }))

hl.bind("Print", hl.dsp.exec_cmd("grimblast --notify copysave output"))
hl.bind(mod .. " + Print", hl.dsp.exec_cmd("grimblast --notify copysave area"))

-- Mouse
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize())

-- Multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Playerctl controls
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
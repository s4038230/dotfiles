local terminal    = "ghostty"
local menu        = "rofi"
local fileManager = "dolphin"

hl.on("hyprland.start", function()
	hl.exec_cmd("eww daemon & eww open bar")
end)

-- Input
hl.config({
	input = {
		touchpad = {
			natural_scroll = true
		},
		kb_options = "caps:super"
	}
})

-- Keybindings
local mainMod = "SUPER"

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu .. " -show drun"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(menu .. " -show window"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

hl.bind(mainMod .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + H",  hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K",    hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J",  hl.dsp.window.swap({ direction = "down" }))


for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end


hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


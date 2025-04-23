local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
config.font_size = 13

config.window_background_opacity = 0.8
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.default_prog = { "pwsh.exe", "-nologo" }

return config

local wezterm = require("wezterm")


local act = wezterm.action
return {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	color_scheme = "Nord (Gogh)",
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 13,
	background = {
		{
			source = {
				File = "/home/huuloc/Pictures/obito.jpeg",
			},

			hsb = {
				hue = 1.0,
				saturation = 1.02,
				brightness = 0.25,
			},
			width = "120%",
			height = "150%",
		},
		{
			source = {
				Color = "#183c35",
			},
			width = "100%",
			height = "100%",
			opacity = 0.55,
		},
	},
	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},
	keys = {
		{
			key = "n",
			mods = "SHIFT|CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = "t",
			mods = "SHIFT|ALT",
			action = act.SpawnTab("CurrentPaneDomain"),
		},
	},
}

local wezterm = require("wezterm")


local act = wezterm.action
return {

	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	color_scheme = "Abernathy",
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 10,

	background = {
		{
			source = {
				File = "/home/huuloc/Pictures/5.jpg",
			},
			hsb = {
				hue = 1,
				saturation = 1,
				brightness = 0.2,
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = "#000111",
			},
			width = "100%",
			height = "100%",
			opacity = 0.75,

		},
	},
	window_padding = {
		left = 15,
		right = 15,
		top = 15,
		bottom = 15,
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
		 {
    key = '|',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal 
  },
  {
    key = '"',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical 
  },
  {
        mods = "CTRL|SHIFT",
        key = "h",
        action = wezterm.action.ActivatePaneDirection "Left"
    },
    {
        mods = "CTRL|SHIFT",
        key = "j",
        action = wezterm.action.ActivatePaneDirection "Down"
    },
    {
        mods = "CTRL|SHIFT",
        key = "k",
        action = wezterm.action.ActivatePaneDirection "Up"
    },
    {
        mods = "CTRL|SHIFT",
        key = "l",
        action = wezterm.action.ActivatePaneDirection "Right"
    },
	{
      key = "m", -- Phím bạn muốn dùng
      mods = "CTRL|SHIFT",
      action = wezterm.action.Hide,
    },
	
		
	},
	
}

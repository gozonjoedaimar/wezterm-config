-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- User configuration
config.color_scheme = "Tokyo Night"
config.font = wezterm.font("DejaVuSansM Nerd Font Mono")
config.font_size = 10.5
config.line_height = 1.5
config.default_prog = { "C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe" }

-- Keybindings

-- Pane navigation
config.keys = {
	{
		key = "h",
		mods = "ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "ALT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "ALT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "ALT",
		action = act.ActivatePaneDirection("Down"),
	},
}

-- and finally, return the configuration to wezterm
return config

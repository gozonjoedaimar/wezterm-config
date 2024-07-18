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

config.keys = {
	-- Pane navigation
	{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },
	-- Adjust pane size
	{ key = "h", mods = "SHIFT|ALT", action = act.AdjustPaneSize({ "Left", 5 }) },
	{ key = "j", mods = "SHIFT|ALT", action = act.AdjustPaneSize({ "Down", 5 }) },
	{ key = "k", mods = "SHIFT|ALT", action = act.AdjustPaneSize({ "Up", 5 }) },
	{ key = "l", mods = "SHIFT|ALT", action = act.AdjustPaneSize({ "Right", 5 }) },
	-- Show the launcher in fuzzy selection mode to list and switch workspaces
	{ key = "9", mods = "ALT", action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
}

-- and finally, return the configuration to wezterm
return config

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- User configuration
config.color_scheme = "Tokyo Night"
config.initial_cols = 150
config.initial_rows = 40

-- Render mode
-- config.front_end = "WebGpu"
-- Available options: "Software", "WebGpu", "OpenGL"

-- Nerdfont
-- config.font = wezterm.font("DejaVuSansM Nerd Font Mono")

-- Windows Config
-- config.default_prog = { "C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe" }
-- config.font_size = 11.0
-- config.line_height = 1.25

-- Keybindings

config.keys = {
	-- Pane navigation
	{ key = "h", mods = "CTRL", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "CTRL", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "CTRL", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "CTRL", action = act.ActivatePaneDirection("Down") },
	-- Adjust pane size
	{ key = "h", mods = "SHIFT|ALT", action = act.AdjustPaneSize({ "Left", 5 }) },
	{ key = "j", mods = "SHIFT|ALT", action = act.AdjustPaneSize({ "Down", 5 }) },
	{ key = "k", mods = "SHIFT|ALT", action = act.AdjustPaneSize({ "Up", 5 }) },
	{ key = "l", mods = "SHIFT|ALT", action = act.AdjustPaneSize({ "Right", 5 }) },
	-- Show the launcher in fuzzy selection mode to list and switch workspaces
	{ key = "9", mods = "ALT", action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
	-- Select pane to swap with active pane
	{ key = "0", mods = "ALT", action = act.PaneSelect({ mode = "SwapWithActive" }) },
	-- close active pane
	{ key = "w", mods = "CTRL|SHIFT|ALT", action = act.CloseCurrentPane({ confirm = false }) },
	-- activate copy mode
	{ key = "[", mods = "CTRL", action = act.ActivateCopyMode },
}

-- and finally, return the configuration to wezterm
return config

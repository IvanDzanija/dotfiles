-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
--config.font = wezterm.font("SFMono Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.font_size = 16
config.window_decorations = "RESIZE"

config.max_fps = 120
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

-- For example, changing the color scheme:
config.color_scheme_dirs = { "~/.config/wezterm/colors/" }
--config.color_scheme = "Tokyo Night Storm (Gogh)"
--config.color_scheme = "Rosé Pine Moon (base16)"
-- config.color_scheme = "Solarized (light) (terminal.sexy)"
--config.color_scheme = "Gruvbox Dark (Gogh)"
-- config.color_scheme = "Selenized Dark (Gogh)"
-- config.color_scheme = "Gruvbox Dark (Gogh)"
config.color_scheme = "Kanagawa (Gogh)"
--config.color_scheme = "dawnfox"
-- config.color_scheme = "One Dark (Gogh)"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 10
-- Croatian layout
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
-- config.use_ime = false

config.keys = {
	{ key = "w", mods = "CMD", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
	-- Split vertically with ⌘+D (common macOS terminal convention)
	{ key = "d", mods = "CMD", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },

	-- Split horizontally with ⌘+Shift+D
	{ key = "d", mods = "CMD|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
}
-- and finally, return the configuration to wezterm
return config

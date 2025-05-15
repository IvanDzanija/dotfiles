-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- config.font = wezterm.font("ZedMono Nerd Font Mono")
config.font_size = 18
config.window_decorations = "RESIZE"

config.enable_tab_bar = false

-- For example, changing the color scheme:
config.color_scheme_dirs = { "~/.config/wezterm/colors/" }
-- config.color_scheme = "NeoSolarized-dark"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 10
config.color_scheme = "Selenized Dark (Gogh)"
--config.window_background_image = "/Users/dzanijaivan/Pictures/kanagawa.jpg"
-- config.window_background_image_hsb = {
-- 	-- Darken the background image by reducing it to 1/3rd
-- 	brightness = 0.025,
--
-- 	-- You can adjust the hue by scaling its value.
-- 	-- a multiplier of 1.0 leaves the value unchanged.
-- 	hue = 0.5,
--
-- 	-- You can adjust the saturation also.
-- 	saturation = 0.1,
-- }
-- Croatian layout
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
-- config.use_ime = false

-- and finally, return the configuration to wezterm
return config

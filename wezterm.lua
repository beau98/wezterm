-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Everforest Dark Soft (Gogh)'
config.font = wezterm.font_with_fallback({
 	{ family = "JetBrainsMono Nerd Font Propo", weight = "Bold" },
  { family = "苹方-简"},
  { family = "Noto Color Emoji"}
})
config.font_size = 14


-- and finally, return the configuration to wezterm
return config

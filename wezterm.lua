-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
  'JetBrains Mono',
  'PingFang SC',
  'Apple Color Emoji',
})

config.colors = {
  background = '#1e1f29',
  foreground = '#d8dee9',
  cursor_bg = '#c0caf5',
  cursor_fg = '#1e1f29',
  selection_bg = '#3b4261',
  selection_fg = '#c0caf5',
}

config.font_size = 15.0

-- 更接近 mac 风格的轻提示
config.freetype_load_target = 'Light'

-- 让显示更舒展一点
config.line_height = 1.08
config.cell_width = 1.0

-- 保持默认推荐 shaper
config.font_shaper = 'Harfbuzz'


wezterm.on('gui-startup', function()
  mux.spawn_window({
    width = 120,
    height = 32,
    position = {
      x = 680,
      y = 480,
      origin = "MainScreen",
    },
  })
end)

-- and finally, return the configuration to wezterm
return config


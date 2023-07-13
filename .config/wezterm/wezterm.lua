-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'VisiBone (terminal.sexy)'


-- Controls whether the tab bar is enabled
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- gpu end
config.front_end = "OpenGL"

-- animation set
config.animation_fps = 60
config.max_fps = 60

-- enable wayland
config.enable_wayland = true

-- Cursor set
config.default_cursor_style = 'BlinkingUnderline'
config.force_reverse_video_cursor = true
-- window padding
config.window_padding = {
  left = 20,
  right = 20,
  top = 20,
  bottom = 20,
}

-- Window Transparent
config.window_background_opacity = 0.5
config.text_background_opacity = 1.0

-- font set
config.font_size = 12.0
config.cell_width = 1.1
config.line_height = 1.1
config.dpi = 96.0

-- scroll set
config.alternate_buffer_wheel_scroll_speed = 1

-- window set 
config.window_decorations = 'NONE'
config.window_close_confirmation = 'NeverPrompt'
-- and finally, return the configuration to wezterm
return config


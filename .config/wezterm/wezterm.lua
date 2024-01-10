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

-- Color set
config.colors = {
  selection_fg = '#000000',
  selection_bg = '#FFFFFF',
}



-- Controls whether the tab bar is enabled
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- gpu end
local gpus = wezterm.gui.enumerate_gpus()
config.webgpu_preferred_adapter = gpus[3]
config.front_end = "WebGpu"



-- animation set

-- enable wayland
config.enable_wayland = true

-- Cursor set
config.default_cursor_style = 'BlinkingUnderline'
config.cursor_thickness = 1
config.force_reverse_video_cursor = true
config.animation_fps = 60

-- window padding
config.window_padding = {
  left = 50,
  right = 50,
  top = 50,
  bottom = 50,
}

-- Window Transparent
config.window_background_opacity = 0.0
config.text_background_opacity = 1.0

-- font set
config.	warn_about_missing_glyphs = false
config.font_size = 12.0
config.cell_width = 1.1
config.line_height = 1.1
config.dpi = 192.0
config.adjust_window_size_when_changing_font_size = false
config.text_background_opacity = 1.0
-- scroll set

-- window set 
config.window_decorations = 'NONE'
config.window_close_confirmation = 'NeverPrompt'
-- and finally, return the configuration to wezterm
return config


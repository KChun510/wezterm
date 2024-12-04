-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local mux = wezterm.mux

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)
-- This is where you actually apply your config choices
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18.0
-- For example, changing the color scheme:
config.color_scheme = "Tokyo Night"
-- and finally, return the configuration to wezterm
return config

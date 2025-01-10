-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
--config.color_scheme_dirs = { "/home/toastycommand/.config/wezterm/colors" }

local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)
-- This is where you actually apply your config choices
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18.0
-- For example, changing the color scheme:
--config.color_scheme = "Purpledream (base16)"
--config.color_scheme = "Pasque (base16)"
config.color_scheme = "Pixiefloss (Gogh)"
--config.color_scheme = "BlueBerryPie"
--config.color_scheme = "Cloud (terminal.sexy)"
--config.color_scheme = "Dark Violet (base16)"
--config.color_scheme = "Heetch Dark (base16)"
--config.color_scheme = "Lavandula"
-- and finally, return the configuration to wezterm
return config

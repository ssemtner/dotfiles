local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Font
config.font = wezterm.font("MesloLGS Nerd Font Mono")
-- config.font = wezterm.font("JetBrains Mono")
config.font_size = 15

-- Remove tabs, titlebar
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- Colors
config.color_scheme = "Rosé Pine (Gogh)"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 0


return config

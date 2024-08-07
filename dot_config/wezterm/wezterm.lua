local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	--	color_scheme = "Canvased Pastel (terminal.sexy)",
	color_scheme = "catppuccin-mocha",
	--font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 16,
	native_macos_fullscreen_mode = true,
}

return config

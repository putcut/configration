-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
config.automatically_reload_config = true

-- This is where you actually apply your config choices
config.font = wezterm.font("HackGen Console NF", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 14.0
config.use_ime = true
config.window_background_opacity = 0.85
-- タイトルバーを消す
config.window_decorations = "RESIZE"
-- キーバインド
config.keys = {
	-- タブ
	{
		key = "t",
		mods = "CTRL",
		action = wezterm.action.SpawnTab 'CurrentPaneDomain',
	},
	{
		key = "[",
		mods = "CTRL",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "]",
		mods = "CTRL",
		action = wezterm.action.ActivateTabRelative(1),
	},
	-- 水平ペイン分割
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } },
	},
	-- 垂直ペイン分割
	{
		key = "\\",
		mods = "CTRL",
		action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } },
	},
	-- ペインを閉じる
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane { confirm = true },
	},
	-- ペイン移動
	{
		key = "h",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection "Left",
	},
	{
		key = "j",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection "Down",
	},
	{
		key = "k",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection "Up",
	},
	{
		key = "l",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection "Right",
	},
}

-- For example, changing the color scheme:
config.color_scheme = 'Seti (Gogh)'

-- and finally, return the configuration to wezterm
return config

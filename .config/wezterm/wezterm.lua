-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
config.automatically_reload_config = true

-- Windowsの場合のみdefault_domainを指定
local spawn_domain = "CurrentPaneDomain"
if wezterm.target_triple:find("windows") then
	config.default_domain = 'WSL:Ubuntu-24.04'
	config.default_cwd = '/home/s-koike'
	spawn_domain = { DomainName = 'WSL:Ubuntu-24.04' }
end

-- タブのタイトルをWSL distribution名にする
wezterm.on('format-tab-title', function(tab)
	local pane = tab.active_pane
	local title = pane.domain_name or pane.title or ''
	-- "WSL:Ubuntu-24.04" → "Ubuntu-24.04"
	title = title:gsub('^WSL:', '')
	return ' ' .. title .. ' '
end)

-- This is where you actually apply your config choices
config.font = wezterm.font_with_fallback({
    { family = "HackGen Console NF", weight="Regular", stretch="Normal", style="Normal" },
    { family = "Ubuntu Nerd Font" },
})
config.font_size = 12.0
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
		action = wezterm.action.SpawnTab(spawn_domain),
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
		action = wezterm.action { SplitVertical = { domain = spawn_domain } },
	},
	-- 垂直ペイン分割
	{
		key = "\\",
		mods = "CTRL",
		action = wezterm.action { SplitHorizontal = { domain = spawn_domain } },
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
	-- ペイン調整
	{
		key = "LeftArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Left', 1 },
	},
	{
		key = "RightArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Right', 1 },
	},
	{
		key = "UpArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Up', 1 },
	},
	{
		key = "DownArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Down', 1 },
	},
}

-- For example, changing the color scheme:
config.color_scheme = 'Seti (Gogh)'

-- フォーカスしているペインを目立たせる
config.inactive_pane_hsb = {
	saturation = 0.3,
	brightness = 0.3,
}
config.colors = {
	split = '#88c0d0',
}

-- and finally, return the configuration to wezterm
return config

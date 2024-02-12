local wezterm = require("wezterm");
local act = wezterm.action

local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end

-- Settings
config.color_scheme = "Tokyo Night"
config.automatically_reload_config = true
config.font = wezterm.font_with_fallback({
  { family = "JetBrains Mono", scale = 1.35 },
})
config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"

-- Dim inactive panes
config.inactive_pane_hsb = {
  saturation = 0.25,
  brightness = 0.3
}

-- Keys
config.leader = { key = "Home", timeout_milliseconds = 1000 }
config.keys = {
  { key = "c", mods="LEADER", action = act.ActivateCopyMode },
  -- Pane Keybindings
  { key = "-", mods="LEADER", action = act.SplitVertical { domain = "CurrentPaneDomain"} },
  { key = "|", mods="LEADER", action = act.SplitHorizontal { domain = "CurrentPaneDomain"} },

  -- Split Pane Movement
  { key = "h", mods="CTRL", action = act.ActivatePaneDirection("Left") },
  { key = "j", mods="CTRL", action = act.ActivatePaneDirection("Down") },
  { key = "k", mods="CTRL", action = act.ActivatePaneDirection("Up") },
  { key = "l", mods="CTRL", action = act.ActivatePaneDirection("Right") },

  { key = "h", mods="LEADER", action = act.AdjustPaneSize { "Left", 1 } },
  { key = "j", mods="LEADER", action = act.AdjustPaneSize { "Down", 1 } },
  { key = "k", mods="LEADER", action = act.AdjustPaneSize { "Up", 1 } },
  { key = "l", mods="LEADER", action = act.AdjustPaneSize { "Right", 1 } },

  { key = "x", mods="LEADER", action = act.CloseCurrentPane { confirm = true } },
  { key = "s", mods="LEADER", action = act.RotatePanes "Clockwise" },
  { key = "m", mods="LEADER", action = act.TogglePaneZoomState },

  -- Tab Keybindings
  { key = "n", mods="LEADER", action = act.SpawnTab("CurrentPaneDomain") },
  { key = "h", mods="LEADER|SHIFT", action = act.ActivateTabRelative(-1) },
  { key = "l", mods="LEADER|SHIFT", action = act.ActivateTabRelative(1) },

  -- Key table for moving tabs around - this is an example, but it sucks
  -- { key = "t", mods="LEADER", action = act.ActivateKeyTable { name = "move_tab", one_shot = true }},

  -- Workspace
  { key = "w", mods="LEADER", action = act.ShowLauncherArgs {flags = "FUZZY|WORKSPACES"} },

  -- Launcher
  { key = "l", mods="ALT", action = act.ShowLauncher },

}

-- I can use the tab navigator (LDR t), but I also want to quickly navigate tabs
-- with index
for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = "LEADER",
    action = act.ActivateTab(i - 1)
  })
end

-- config.key_tables = {
--   move_tab = {
--     { key = "h", action = act.MoveTabRelative(-1) },
--     { key = "j", action = act.MoveTabRelative(-1) },
--     { key = "k", action = act.MoveTabRelative(1) },
--     { key = "l", action = act.MoveTabRelative(1) },
--   }
-- }

-- Tab Bar
-- 
config.use_fancy_tab_bar = false
config.status_update_interval = 1000

wezterm.on("update-right-status", function (window, pane)
  local stat = window:active_workspace()
  if window:active_key_table() then stat = window:active_key_table() end
  if window:leader_is_active() then stat = "LDR" end

  local function basename(s)
    local _string

    if (type(s) == "string") then _string = s
    else _string = s.file_path
    end

    return string.gsub(_string, '(.*[/\\])(.*)', '%2')
  end

  local cwd = basename(pane:get_current_working_dir())
  local cmd = basename(pane:get_foreground_process_name())
  local time = wezterm.strftime("%H:%M")
  local bat = " "

  for _, b in ipairs(wezterm.battery_info()) do
    bat = '🔋 ' .. string.format('%.0f%%', b.state_of_charge * 100)
  end

  window: set_right_status(wezterm.format({
    { Text = wezterm.nerdfonts.oct_table .. "  " .. stat },
    { Text = " | "},
    { Text = wezterm.nerdfonts.md_folder .. "  " .. cwd },
    { Text = " | "},
    { Foreground = { Color = "FFB86C" } },
    { Text = wezterm.nerdfonts.fa_code .. "  " .. cmd },
    "ResetAttributes",
    { Text = " | "},
    { Text = bat },
    { Text = " | "},
    { Text = wezterm.nerdfonts.md_clock .. "  " .. time},
  }))
end)

return config

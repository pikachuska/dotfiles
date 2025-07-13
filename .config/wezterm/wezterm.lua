local wezterm = require 'wezterm'

-- 🧠 Функция получения темы из gsettings
local function get_current_theme()
  local success, stdout, _ = wezterm.run_child_process({
    "gsettings", "get", "org.gnome.desktop.interface", "gtk-theme"
  })
  if success then
    local theme = stdout:gsub("[\"'\n]", "")
    if theme:lower():find("light") then
      return "Catppuccin Latte"
    end
  end
  return "Catppuccin Mocha"
end

-- 🎯 Начальная тема
local current_scheme = get_current_theme()

-- 🔁 Таймер: обновляем тему каждые 5 сек
wezterm.on("update-right-status", function(window, _)
  local new_scheme = get_current_theme()
  if new_scheme ~= current_scheme then
    current_scheme = new_scheme
    wezterm.reload_configuration()
  end
end)

return {
  default_prog = { "fish", "-l" },
  color_scheme = current_scheme,
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 14.0,
  enable_tab_bar = false,
  window_background_opacity = 0.8,
  use_fancy_tab_bar = false,
  window_decorations = "NONE",
}
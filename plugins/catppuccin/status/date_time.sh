show_date_time() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_date_time_icon" "󰃰")"
  local color="$(get_tmux_option "@catppuccin_date_time_color" "$thm_pink")"
  local text="$(get_tmux_option "@catppuccin_date_time_text" "%H:%M %d-%m-%Y")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}


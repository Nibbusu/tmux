# If this module depends on an external Tmux plugin, say so in a comment.
# E.g.: Requires https://github.com/aaronpowell/tmux-weather

show_my-date-format() { # This function name must match the module name!
  local index icon color text module

  index=$1 # This variable is used internally by the module loader in order to know the position of this module

  icon="$(  get_tmux_option "@catppuccin_my-date-format_icon"  "󰃰")"
  color="$( get_tmux_option "@catppuccin_my-date-format_color" "$thm_pink")"
  text="$(  get_tmux_option "@catppuccin_my-date-format_text"  "%H:%M %d-%m-%Y")"

  module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

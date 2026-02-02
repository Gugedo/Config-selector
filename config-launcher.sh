#!/bin/bash

# Author : Edoardo Guglielmini (Gugedo)
# Github : @Gugedo

# Rofi   : Launcher of configuration Dotfiles

# Change style using ln -sf ~/.config/rofi/launchers/type-NUMBER/style-OTHER NUMBER.rasi ~/.config/rofi/launchers/style.rasi
# Default is type-1 style-5

# Change colors using ln -sf ~/.config/rofi/colors/THEME.rasi ~/.config/rofi/launchers/shared/colors.rasi
# Default is dracula

# Change font directly in ~/.config/rofi/launchers/shared/fonts.rasi
# Default is GeistMono Nerd Font Propo 12

# Run
declare -A configs
configs=(
    [" Hyprland"]="$HOME/.config/hypr/hyprland.conf"
    [" SwayNC Style"]="$HOME/.config/swaync/style.css"
    ["󱇚 SwayNC Config"]="$HOME/.config/swaync/config.json"
    [" Waybar Style"]="$HOME/.config/waybar/style.css"
    ["󱓡 Waybar Config"]="$HOME/.config/waybar/config.jsonc"
    ["󰄛 Kitty"]="$HOME/.config/kitty/kitty.conf"
    [" Fish Prompt"]="$HOME/.config/fish/functions/fish_prompt.fish"
    [" Fish Config"]="$HOME/.config/fish/functions/fish_prompt.fish"
)
source $HOME/.config/rofi/launchers/theme.conf

# Create a variable for the choice
choice=$(printf "%s\n" "${!configs[@]}" | rofi -dmenu -i -p " Edit Config:" -theme $HOME/.config/rofi/launchers/style.rasi)

# Exit
if [ -z "$choice" ]; then
    exit 0
fi

# Open the file with terminal and editor you want
kitty -e nvim "${configs[$choice]}"
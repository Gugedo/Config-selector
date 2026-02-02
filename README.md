# 🛠️ Rofi Config Selector

A fast, elegant, and fully customizable configuration file selector built with **Rofi**. This project is designed to work seamlessly as an extension of [adi1090x's Rofi collection](https://github.com/adi1090x/rofi).

## ✨ Features
* **Quick Access:** Open your favorite config files instantly.
* **Nerd Font Support:** Elegant icons integrated into the interface.
* **Fully Customizable:** Powered by adi1090x's themes with easy font and color management.
* **Seamless Integration:** Built to live inside your Rofi launchers directory.

---

## 📋 Prerequisites

1.  **adi1090x/rofi:** This project is an extension of adi1090x's collection. You **must** have it installed:
    👉 [adi1090x/rofi GitHub](https://github.com/adi1090x/rofi)
2.  **Nerd Fonts:** Required for icons. The default is **GeistMono Nerd Font Propo**.

---

## 🚀 Installation

For this selector to work correctly, the files must be placed within your Rofi launchers folder.

### 1. Clone the repository
```bash
git clone [https://github.com/Gugedo/Config-selector.git](https://github.com/Gugedo/Config-selector.git)
# Move the files to your Rofi launchers directory
mv Config-selector/* ~/.config/rofi/launchers/
rm -rf Config-selector
```

### 2. Theming & Symlinks
You need to link the script's theme and colors to your preferred adi1090x files.

**Link the Style:**
```bash
ln -sf ~/.config/rofi/launchers/type-X/style-Y.rasi ~/.config/rofi/launchers/style.rasi
```

**Link the Colors:**
```bash
# This links the color scheme to the shared folder
ln -sf ~/.config/rofi/colors/your-favorite-color.rasi ~/.config/rofi/launchers/shared/colors.rasi
```

### 3. Font Customization
Unlike the colors, the **fonts** must be modified manually in the configuration file to match your system.
* Open `~/.config/rofi/launchers/shared/fonts.rasi`.
* The default is set to `GeistMono Nerd Font Propo 12`.
* Change it to any Nerd Font you have installed (e.g., `JetBrainsMono Nerd Font 12`) to ensure icons display correctly.

---

## 📂 Default Managed Files

| Icon | Component | Path |
| :--- | :--- | :--- |
| `` | **Hyprland** | `~/.config/hypr/hyprland.conf` |
| `` | **SwayNC Style** | `~/.config/swaync/style.css` |
| `󱇚` | **SwayNC Config** | `~/.config/swaync/config.json` |
| `` | **Waybar Style** | `~/.config/waybar/style.css` |
| `󱓡` | **Waybar Config** | `~/.config/waybar/config.jsonc` |
| `󰄛` | **Kitty** | `~/.config/kitty/kitty.conf` |
| `` | **Fish Prompt** | `~/.config/fish/functions/fish_prompt.fish` |
| `` | **Fish Config** | `~/.config/fish/config.fish` |

---

## ⌨️ Hyprland Integration

Add the following line to your `hyprland.conf` to launch the selector using **Super + C**:

```ini
# Open Config Selector (Toggle)
bind = $mainMod, C, exec, ~/.config/rofi/launchers/config-launcher.sh || pkill rofi
```

> [!NOTE]
> You can change the keybinding, but **do not** modify the execution path or the `pkill` command to ensure the toggle functionality works properly.

---

## 🤝 Credits
* [adi1090x](https://github.com/adi1090x) for the incredible Rofi customization.
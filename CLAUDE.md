# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal Linux configuration directory (`~/.config`) containing desktop environment and application configurations for a Hyprland-based Wayland setup. This is **not a software development project** but rather a collection of configuration files for a Linux desktop environment.

## Key Components

### Window Manager & Desktop Environment
- **Hyprland**: Main window manager configuration in `hypr/hyprland.conf`
  - Uses Kitty as the default terminal (`$terminal = kitty`)
  - Uses Dolphin as the file manager (`$fileManager = dolphin`) 
  - Uses Wofi launcher script (`$menu = ~/.config/scripts/wofi-single`)
  - Auto-starts Waybar and Hyprpaper on login
  - Configured for NVIDIA GPU with proper environment variables

### Status Bar
- **Waybar**: Status bar configuration in `waybar/` directory
  - `config.json`: Waybar modules and layout configuration
  - `style.css`: Waybar styling and appearance

### Terminal
- **Kitty**: Terminal emulator configuration in `kitty/kitty.conf`

### Launcher
- **Wofi**: Application launcher script in `scripts/wofi-single`
  - Simple bash script that prevents multiple instances

## Configuration Structure

```
~/.config/
├── hypr/                    # Hyprland window manager
│   ├── hyprland.conf       # Main Hyprland configuration
│   └── desktop.jpg         # Desktop wallpaper
├── waybar/                  # Status bar
│   ├── config.json         # Waybar configuration
│   └── style.css           # Waybar styling
├── kitty/                   # Terminal emulator
│   └── kitty.conf          # Kitty configuration
├── scripts/                 # Utility scripts
│   └── wofi-single         # Wofi launcher script
└── wofi/                    # Application launcher
    └── style.css           # Wofi styling
```

## Key Keybindings (from Hyprland config)

- `Super + Q`: Open terminal (Kitty)
- `Super + C`: Close active window
- `Super + E`: Open file manager (Dolphin)
- `Super + R`: Open application launcher (Wofi)
- `Super + M`: Exit Hyprland
- `Super + V`: Toggle floating mode
- `Super + 1-9,0`: Switch to workspace 1-10
- `Super + Shift + 1-9,0`: Move window to workspace 1-10

## Important Notes

- This is a **configuration repository**, not a development project
- No build, test, or lint commands are applicable
- Changes should be made carefully as they directly affect the desktop environment
- The configuration is optimized for NVIDIA graphics cards
- Hyprland configuration includes custom animations and window management rules
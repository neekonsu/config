# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles and configuration repository containing development environment setup for macOS. The repository is structured around the `.config` directory pattern commonly used for storing application configurations.

## Key Configuration Areas

### Terminal and Shell Environment
- **WezTerm**: Modern terminal emulator configured in `/wezterm/` with custom keybindings, theming, and vim integration
  - Main config: `wezterm/wezterm.lua`
  - Key bindings: `wezterm/key.lua` (includes vim-aware pane navigation)
  - Color scheme: `wezterm/color.lua`
- **Kitty**: Alternative terminal with extensive theming options in `/kitty/`

### Text Editors
- **Neovim**: Primary editor configuration in `/nvim/`
  - Main config: `nvim/init.lua`
  - Uses Packer for plugin management
  - Configured plugins: Telescope, TreeSitter, Cyberdream theme
  - Uses relative line numbers and 4-space indentation
- **Zed**: Modern editor with minimal configuration in `/zed/`

### Development Tools
- **GitHub CLI**: Configured in `/gh/config.yml`
  - Uses HTTPS protocol for git operations
  - Custom alias: `co` for `pr checkout`
- **GitHub Copilot**: Authentication configured in `/github-copilot/hosts.json`

## Configuration Philosophy

The setup emphasizes:
- Vim-style navigation and keybindings across applications
- Dark themes and transparency effects
- Integration between terminal and editor (WezTerm <-> Neovim)
- Fuzzy finding with Telescope
- Modern tooling with sensible defaults

## Important Keybindings

### WezTerm
- `Ctrl+h/j/k/l`: Navigate between panes (vim-aware)
- `Alt+h/j/k/l`: Resize panes
- `Alt+-`: Split vertically
- `Alt+\`: Split horizontally
- `Cmd+R`: Rename tab
- `Ctrl+;`: Toggle vim pane zoom
- `Cmd+Shift+W`: Workspace switcher

### Neovim
- `<leader>ff`: Telescope find files
- Basic vim settings with relative line numbers enabled

## Git Configuration

Repository uses HTTPS protocol for GitHub operations via the `gh` CLI tool. The working directory shows this is actively maintained with recent commits focused on syncing configurations.
# 🧬 to1zzz's .dotfiles
### Gentoo Linux · Niri Wayland · Gruvbox Theme

[![Gentoo Linux](https://img.shields.io/badge/Gentoo-54487A?style=for-the-badge&logo=gentoo&logoColor=white)](https://www.gentoo.org/)
[![Niri WM](https://img.shields.io/badge/Niri-000000?style=for-the-badge&logo=linux&logoColor=white)](https://github.com/YaLTeR/niri)
[![Gruvbox](https://img.shields.io/badge/Gruvbox-282828?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMCAxMCI+PHJlY3Qgd2lkdGg9IjEwIiBoZWlnaHQ9IjEwIiBmaWxsPSIjMjgyODI4Ii8+PC9zdmc+)](https://github.com/morhetz/gruvbox)

My personal configuration files for a minimal, keyboard-driven, and aesthetically pleasing Linux desktop experience — crafted by a DevOps engineer who loves writing Go.

## ⚙️ Hardware Specs

This setup is optimized and battle-tested on my primary workstation:

- **CPU:** AMD Ryzen 9 7950X (16 Cores / 32 Threads)
- **GPU:** AMD Radeon RX 6900 XT
- **OS:** Gentoo Linux (Stable, compiled for native performance)
- **WM:** Niri (A scrollable-tiling Wayland compositor)

## 🎨 The Aesthetic: Gruvbox

The entire user interface is unified under the **Gruvbox** color palette. It's a retro-inspired, medium-contrast scheme designed for long coding sessions and late-night terminal work. Gruvbox prioritizes readability and visual harmony, featuring warm earth tones that are easy on the eyes. This theme is applied consistently across Niri borders, Waybar, terminals, and all supported applications.

The core palette and philosophy were developed by [morhetz](https://github.com/morhetz/gruvbox) and has been adapted here into a full desktop environment.

## 🚀 Installation

Getting my exact desktop layout is straightforward.

1. **Backup your existing configs:**
    ```bash
   mv ~/.config ~/.config.backup
2. **Clone the repository:**
    ```bash
   git clone https://github.com/to1zzz/.dotfiles.git ~/.dotfiles
3. **Symlink the configuration:**
    ```bash
   ln -sf ~/.dotfiles/.config ~/

That's it! Log out and select the Niri session from your display manager to start exploring.

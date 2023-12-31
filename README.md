# Rose Pine Dotfiles

Rose Pine Dotfiles is a collection of configuration files for a Linux desktop environment, featuring the popular Rose Pine theme and a variety of software applications. It includes customizations for bspwm, cava, dunst, eww, starship, kitty, and more. The goal is to help you set up a stylish and functional Linux desktop environment quickly.

## Installation

### Dependencies

Before you get started, make sure to install the necessary dependencies:

- Theme-related dependencies can be obtained from the [Gnome Store](https://www.gnome-look.org) or your package manager. Download the `.tar.gz` files and extract them in `~/.themes` and `~/.icons`, as well as in `/usr/share/themes` and `/usr/share/icons`.
- Apply both widget and cursor themes with `lxappearance` for both the user and root (you can use `sudo lxappearance` for root). Note that the theme is "Rose Pine," and the icons are "Nord."

### Software

Install the required software with your preferred package manager. For example:

```bash
yay -S cava dunst eww starship kitty bspwm sxhkd neofetch lxappearance rofi llvm picom flameshot
```

Install the necessary fonts:

```bash
yay -S ttf-cousine-nerd ttf-work-sans ttf-firacode-nerd
```

Clone this repository and copy its contents:

```bash
cd ~/.config
git clone https://github.com/KatieUmbra/rose-pine-dots
cp rose-pine-dots/* .
```

Run `eww inspector` and select the "rose-pine-moon-gtk" visual configuration.

Set up [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation) in your shell.

### Customization

You can customize the configuration to your liking:

 - Modify your name in `~/.config/starship.toml` on the 4th line.
 - Change the wallpaper path in `~/.config/bspwm/bspwmrc` on the 27th line.
 - Adjust the background image path in `~/.config/kitty/kitty.conf` on the 25th line.
 - In `~/.config/cava/config`, remove the 78th line and uncomment the line corresponding to your audio server (e.g., `method = pulse` for PulseAudio).
 - If you prefer a different terminal from Kitty, change "kitty" in `~/.config/sxhkd/sxkhdrc` on line 7.
 - Recommended: Use Lxappearance to set the font to "Work Sans - Regular - 12pt" for both user and root.

# Examples

### cava

![cava](https://raw.githubusercontent.com/KatieUmbra/rose-pine-dots/main/.examples/cava.png)

### dunst

![dunst](https://raw.githubusercontent.com/KatieUmbra/rose-pine-dots/main/.examples/dunst.png)

### eww starship kitty bspwm neofetch

![eww starship kitty bspwm neofetch](https://raw.githubusercontent.com/KatieUmbra/rose-pine-dots/main/.examples/eww-starship-kitty-bspwm-neofetch.png)

### gtk

![gtk](https://github.com/KatieUmbra/rose-pine-dots/blob/main/.examples/gtk.png?raw=true****)

### rofi

![rofi](https://github.com/KatieUmbra/rose-pine-dots/blob/main/.examples/rofi.png?raw=true)

# Dependencies
[Rose Pine GTK Theme](https://github.com/rose-pine/gtk)

[Nord Cursors](https://www.gnome-look.org/p/1571937)

[Window Manager Control](https://www.freedesktop.org/wiki/Software/wmctrl/)

[Trash Utility](https://github.com/andreafrancia/trash-cli)

# Software

- [bpswm](https://github.com/baskerville/bspwm)
- [cava](https://github.com/karlstav/cava)
- [clangd](https://llvm.org/)
- [dunst](https://github.com/dunst-project/dunst)
- [eww](https://github.com/elkowar/eww)
- [flameshot](https://flameshot.org/)
- [gtk customization](https://github.com/lxde/lxappearance)
- [kitty terminal](https://sw.kovidgoyal.net/kitty/)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [picom](https://github.com/yshui/picom)
- [sxhkd](https://github.com/baskerville/sxhkd)

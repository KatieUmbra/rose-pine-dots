# rose-pine-dots
Rose Pine Dotfiles, neovim config: https://github.com/KatieUmbra/Neovim

# Installation


- Install all the [dependencies](#dependencies) (I recommend to use the [gnome store](https://www.gnome-look.org) for theme related dependencies and/or use a package manager, eg `yay -S wmctrl`), for theming download the `.tar.gz` files and extract them in `~/.themes` and `~/.icons` and also `/usr/share/themes` and `/usr/share/icons` respectively. apply both the widget themes and cursor themes with `lxappearance` both user and root (use `sudo lxappearance` for root). or alternatively [follow the arch wiki instructions](https://wiki.archlinux.org/title/GTK#Configuration) (FIY rose pine is the theme, nord are the icons).

- Install the [software](#software) with your preferred package manager. eg

  `yay -S cava dunst eww starship kitty bspwm sxhkd neofetch lxappearance rofi llvm picom flameshot`.

- install fonts `yay -S ttf-cousine-nerd ttf-work-sans ttf-firacode-nerd`.

- run `cd ~/.config && git clone https://github.com/KatieUmbra/rose-pine-dots`.

- copy the contents of the configuration `cp rose-pine-dots/* .`.

- run `eww inspector` then go to `visual` and select `rose-pine-moon-gtk`.

- configure [starship](https://starship.rs/guide/#%F0%9F%9A%80-installation).

# Customization

- Inside `~/.config/starship.toml` change `kathy` in the 4th line to your name
- Inside `~/.config/bspwm/bspwmrc` change `/home/Katie/Pictures/wallpaper-pink.png` in the 27th line to your preferred wallpaper's path.
- Inside `~/.config/kitty/kitty.conf` change `/home/Katie/Pictures/terminal-background.png` in the 25th line to your preferred background image's path.
- Inside `~/.config/cava/config` remove the 78th line and uncomment the line with your respective audio server. (for example if you're using pulseaudio remove the line and uncomment `; method = pulse` by removing the `;` character).
- If you prefer to use a different terminal different from kitty, change `kitty` in line 7 to your preferred terminal inside `~/.config/sxhkd/sxkhdrc`.
- RECOMMENDED: use `Lxappearance` to change user and root font to `Work Sans - Regular - 12pt`.

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

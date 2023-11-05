#!/bin/sh

# Function to check if a command is available
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Check if yay is installed
if ! command_exists yay; then
  echo "yay is not installed. Installing yay..."
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
fi

# Get the current user's name
current_user=$(whoami)

# Display a welcome message
echo "Welcome to the Pink Pine Dotfiles Installer."

# Check if the user wants to back up existing dotfiles
read -p "This could be dangerous if you didn't back up your previous dotfiles. Do you want to back up your current dotfiles? (yes/no): " backup_choice

if [[ "$backup_choice" == "yes" || "$backup_choice" == "y" ]]; then
    backup_dir="$HOME/dotfiles_backup_$(date +'%Y%m%d_%H%M%S')"
    echo "Backing up your existing dotfiles to $backup_dir..."
    mkdir -p "$backup_dir"
    mv "$HOME/.config" "$backup_dir"
    echo "Your previous dotfiles are backed up in $backup_dir."
else
    echo "Proceeding with installation without backing up existing dotfiles."
fi

# Install Dependencies
echo "Installing dependencies..."
yay -S wmctrl trash-cli

# Theme-related dependencies
# Download .tar.gz files and extract them in ~/.themes and ~/.icons, and also in /usr/share/themes and /usr/share/icons.
# Apply both the widget themes and cursor themes with lxappearance.
echo "Install theme-related dependencies manually. You can find them in the GNOME Store or follow Arch Wiki instructions."

# Install Software
echo "Installing software..."
yay -S cava dunst eww starship kitty bspwm sxhkd neofetch lxappearance rofi llvm picom flameshot

# Install Fonts
echo "Installing fonts..."
yay -S ttf-cousine-nerd ttf-work-sans ttf-firacode-nerd

# Clone Configuration Files
echo "Cloning configuration files..."
cd ~/.config
git clone https://github.com/KatieUmbra/rose-pine-dots .

# Configure eww
echo "Configuring eww..."
eww inspector
echo "Go to 'visual' and select 'rose-pine-moon-gtk."

# Customize Configuration Files
echo "Customizing configuration files..."

# Prompt for user-specific configuration
read -p "Enter your name: " user_name
sed -i "s/Katie/$user_name/g" ~/.config/starship.toml

wallpaper_path_prompt="Enter the path to your preferred wallpaper (e.g., /path/to/wallpaper.jpg): "
read -p "$wallpaper_path_prompt" wallpaper_path
sed -i "s+/home/$current_user/Pictures/wallpaper-pink.png+$wallpaper_path+g" ~/.config/bspwm/bspwmrc

background_path_prompt="Enter the path to your preferred background image (e.g., /path/to/background.png): "
read -p "$background_path_prompt" background_path
sed -i "s+/home/$current_user/Pictures/terminal-background.png+$background_path+g" ~/.config/kitty/kitty.conf

echo "Configuring cava audio server. Uncomment your preferred audio server configuration in ~/.config/cava/config."

terminal_prompt="Enter your preferred terminal Kitty is recommended (e.g., kitty, xterm, urxvt): "
read -p "$terminal_prompt" terminal
sed -i "s/kitty/$terminal/g" ~/.config/sxhkd/sxhkdrc

# Configure Fonts
echo "Setting fonts with Lxappearance..."
# Use Lxappearance to change user and root fonts to 'Work Sans - Regular - 12pt.'

echo "Installation and configuration completed."

#!/bin/sh

# Define applications to install
APPS=(
    "google-chrome"
    "visual-studio-code"
    "alacritty"
    "font-hack-nerd-font"
)

# Check if brew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed"
fi

# Function to check if a cask is installed
is_cask_installed() {
    brew list --cask | grep -q "^$1\$"
}

# Install applications if not already installed
for app in "${APPS[@]}"; do
    if ! is_cask_installed "$app"; then
        echo "Installing $app..."
        brew install --cask "$app"
    else
        echo "$app is already installed"
    fi
done

# Symlink all files from the files directory to home
find ./files/ -type f -maxdepth 1 | while read -r file; do
    filename=$(basename "$file")
    echo "Symlinking $filename to $HOME/$filename"
    ln -vfs "$PWD/files/$filename" "$HOME/$filename"
done

# Check if path already exists in .zshenv before adding
if ! grep -q 'export PATH="$HOME/.dotfiles/scripts:$PATH"' ~/.zshenv; then
    echo 'export PATH="$HOME/.dotfiles/scripts:$PATH"' >>~/.zshenv
    echo "Added scripts directory to PATH in .zshenv"
else
    echo "Scripts directory already in PATH"
fi

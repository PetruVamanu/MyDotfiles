#!/bin/bash

# Variables
INSTALL_DIR="$(pwd)"  # Current directory, assuming it's the root of your dotfiles repo
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"  # Backup directory with a timestamp

TMUX_CONF="$HOME/.tmux.conf"
NVIM_CONFIG_DIR="$HOME/.config/nvim"  # Path for Neovim configuration directory
# Create backup directory
mkdir -p "$BACKUP_DIR"

# Install tmux config

if [ -f "$TMUX_CONF" ]; then
  echo "Backing up existing tmux config to $BACKUP_DIR/tmux.conf"
  mv "$TMUX_CONF" "$BACKUP_DIR/tmux.conf"  # Move the existing config to backup
fi

echo "Installing tmux config..."
ln -sf "$INSTALL_DIR/tmux/.tmux.conf" "$TMUX_CONF"

# Install nvim config
if [ -d "$NVIM_CONFIG_DIR" ]; then
  echo "Backing up existing nvim config to $BACKUP_DIR/nvim"
  mv "$NVIM_CONFIG_DIR" "$BACKUP_DIR/nvim"  # Move the existing config to backup
fi

echo "Installing nvim config..."
mkdir -p "$NVIM_CONFIG_DIR"  # Create the nvim config directory if it doesn't exist
cp -r "$INSTALL_DIR/nvim/"* "$NVIM_CONFIG_DIR/"  # Copy the nvim configuration files

echo "Installation complete!"


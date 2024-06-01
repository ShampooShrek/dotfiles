#!/bin/bash

nvim_config_path="/home/shampoo-shrek/.config/nvim/config.lua"
nvim_user_path="/home/shampoo-shrek/.config/nvim/lua/user"

wezterm_path="/home/shampoo-shrek/.wezterm.lua"

shampoo_zsh_theme="/home/shampoo-shrek/.oh-my-zsh/themes/shampoo-shrek.zsh-theme"
zsharc_file="/home/shampoo-shrek/.zshrc"

scripts_path="/home/shampoo-shrek/Documentos/DevOffice/Scripts"

dotfiles_path="/home/shampoo-shrek/Documentos/dotfiles"

mkdir -p "$dotfiles_path/nvim"
mkdir -p "$dotfiles_path/nvim/lua"
mkdir -p "$dotfiles_path/wezTerm"
mkdir -p "$dotfiles_path/shell"
mkdir -p "$dotfiles_path/scripts"

cp "$nvim_config_path" "$dotfiles_path/nvim"

cp -r "$nvim_user_path" "$dotfiles_path/nvim/lua"

cp "$wezterm_path" "$dotfiles_path/wezTerm"

cp "$shampoo_zsh_theme" "$dotfiles_path/shell"

cp "$zsharc_file" "$dotfiles_path/shell" 

cp -r "$scripts_path" "$dotfiles_path"

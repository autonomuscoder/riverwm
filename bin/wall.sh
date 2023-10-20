#!/bin/bash

# Path to your wallpaper directory
wallpaper_dir="$HOME/walls"

# Get a list of all image files in the wallpaper directory
wallpapers=("$wallpaper_dir"/*.{jpg,jpeg,png,gif})

# Check if there are any wallpapers
if [ ${#wallpapers[@]} -eq 0 ]; then
    echo "No wallpapers found in $wallpaper_dir"
    exit 1
fi

# Select a random wallpaper from the list
selected_wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"

# Set the wallpaper using swaybg
swaybg -m fill -i "$selected_wallpaper"

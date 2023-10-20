#!/usr/bin/env sh
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#waybar -c ~/.config/waybar/river/config-river -s ~/.config/waybar/river/river_style.css &
waybar -c ~/.config/waybar/config -s ~/.config/waybar/style.css &
dunst &
wl-clipboard &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
swaybg -m fill -i ~/walls/abstract.jpg


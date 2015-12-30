#!/bin/bash
## ~/.local/bin/monitor-setup.sh
## Based on https://bbs.archlinux.org/viewtopic.php?pid=1047415#p1047415
# Script for toggling different monitor setups for laptop. Supports these modes:
# - Default mode: Laptop monitor only ($LVDS) and external monitors off
# - External VGA mode: Laptop monitor ($LVDS) and external monitor ($VGA)
# - External HDMI mode: Laptop monitor ($LVDS) and external monitor ($HDMI)
# - External only mode: External monitor ($LVDS) and external monitor ($HDMI)

# Laptop's monitor
LVDS="LVDS1"
# VGA monitor
VGA="VGA1"
# HDMI monitor
HDMI="HDMI1"

CHK_VGA=$(xrandr |grep $VGA | awk ' { print $2 } ')
CHK_HDMI=$(xrandr |grep $HDMI | awk ' { print $2 } ')

CHK_VGA_G=$(xrandr |grep $VGA | grep "+")
CHK_HDMI_G=$(xrandr |grep $HDMI | grep "+")

function external_only() {
    xrandr --output $LVDS --off --output $VGA --auto --output $HDMI --auto
    xrandr --output $VGA --left-of $HDMI
}

function external_vga() {
    xrandr --output $LVDS --auto --output $VGA --auto --output $HDMI --off
    xrandr --output $VGA --right-of $LVDS
}

function external_hdmi() {
    xrandr --output $LVDS --auto --output $HDMI --auto --output $VGA --off
    xrandr --output $HDMI --right-of $LVDS
}



if [ "$CHK_VGA" == "connected" ] && [ "$CHK_HDMI" == "connected" ]; then
    echo $VGA $HDMI
    external_only
elif [ "$CHK_VGA" == "connected" ] || [ "$CHK_VGA_G" ]; then
    echo $LVDS $VGA
    external_vga
elif [ "$CHK_HDMI" == "connected" ] || [ "$CHK_HDMI_G" ]; then
    echo $LVDS $HDMI
    external_hdmi
else
    echo $LVDS
    xrandr --output $LVDS --auto --output $VGA --off --output $HDMI --off
fi

#feh --bg-scale $HOME/.wallpaper.jpg

exit 0

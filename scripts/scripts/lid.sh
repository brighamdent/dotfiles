#!/usr/bin/env bash

if [[ "$(hyprctl monitors)" =~ "HDMI-A-1" ]]; then
  if [[ $1 == "open" ]]; then
    hyprctl keyword monitor "eDP-1,1920x1080@120,1920x0,1"
  else
    hyprctl keyword monitor "eDP-1,disable"
  fi
fi

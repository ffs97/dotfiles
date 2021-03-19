#!/bin/bash
# ======================================================================================
#   Name:       launcher.sh
#   Author:     Gurpreet Singh
#   Url:        https://github.com/ffs97/dotfiles/rofi/launcher.sh
#   License:    The MIT License (MIT)
#
#   Script for rofi app launcher
# ======================================================================================

theme=$1

rofi -no-lazy-grab -show drun -theme $HOME/.config/rofi/$theme/launcher.rasi --icon-theme "Tela Dark"

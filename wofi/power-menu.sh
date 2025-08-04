#!/bin/bash

# Leer la selección de stdin
selection=$(cat)

case "$selection" in
    "Bloquear")
        hyprlock
        ;;
    "Suspender")
        systemctl suspend
        ;;
    "Reiniciar")
        systemctl reboot
        ;;
    "Apagar")
        systemctl poweroff
        ;;
    *)
        exit 1
        ;;
esac
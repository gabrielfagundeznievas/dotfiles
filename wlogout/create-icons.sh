#!/bin/bash
# Script para crear iconos personalizados usando ImageMagick y Nerd Fonts

# Crear directorio para iconos personalizados
mkdir -p ~/.config/wlogout/icons

# Función para crear iconos
create_icon() {
    local icon_text="$1"
    local filename="$2"
    local color="$3"
    
    magick -size 256x256 xc:transparent \
        -font "/usr/share/fonts/TTF/JetBrainsMonoNerdFontMono-Regular.ttf" \
        -pointsize 120 \
        -fill "$color" \
        -gravity center \
        -annotate +0+0 "$icon_text" \
        "$HOME/.config/wlogout/icons/$filename.png"
}

# Crear cada icono con colores personalizados
create_icon "󰌾" "lock" "#a6e3a1"        # Verde - Bloquear
create_icon "󰗽" "logout" "#f9e2af"      # Amarillo - Cerrar sesión
create_icon "󰤄" "suspend" "#74c7ec"     # Azul claro - Suspender
create_icon "󰜗" "hibernate" "#cba6f7"   # Púrpura - Hibernar
create_icon "󰤆" "shutdown" "#f38ba8"    # Rosa/Rojo - Apagar
create_icon "" "reboot" "#fab387"      # Naranja - Reiniciar

echo "Iconos creados en ~/.config/wlogout/icons/"
echo "Actualiza el style.css para usar estos iconos:"
echo 'Cambia las rutas de "/usr/share/wlogout/icons/" a "$HOME/.config/wlogout/icons/"'
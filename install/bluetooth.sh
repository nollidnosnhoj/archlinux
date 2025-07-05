PACKAGES=(
    bluez
    bluez-utils
    blueman
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

sudo systemctl enable --now bluetooth.service

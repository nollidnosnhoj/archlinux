PACKAGES=(
    gnome-calculator
    bitwarden
    bitwarden-cli
    firefox
    mpv
    imv
    evince
    vesktop-bin
)

paru -S --needed "${PACKAGES[@]}"

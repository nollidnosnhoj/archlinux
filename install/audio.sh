PACKAGES=(
    pavucontrol
    pamixer
    gst-plugin-pipewire
    pipewire
    pipewire-alsa
    pipewire-audio
    pipewire-jack
    pipewire-pulse
    wireplumber
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

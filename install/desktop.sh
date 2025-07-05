PACKAGES=(
    niri
    fuzzel
    mako
    xorg-xwayland
    xwayland-satellite
    waybar
    swaybg
    swayidle
    hyprlock
    xdg-desktop-portal-gnome
    gnome-keyring
    nautilus
    sushi
    brightnessctl
    playerctl
    fcitx5
    fcitx5-gtk
    fcitx5-qt
    fcitx5-configtool
    wl-clip-persist
    clipse-bin
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

systemctl --user add-wants niri.service mako.service
systemctl --user add-wants niri.service waybar.service
systemctl --user add-wants niri.service swaybg.service
systemctl --user add-wants niri.service swayidle.service
systemctl --user add-wants niri.service xwayland-satellite.service

systemctl --user daemon-reload

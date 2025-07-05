PACKAGES=(
    archlinux-keyring
    curl
    wget
    unzip
    git
    base-devel
    networkmanager
)

sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

git config --global user.name "Dillon Johnson"
git config --global user.email "me@nollidnosnhoj.com"

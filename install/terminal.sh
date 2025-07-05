PACKAGES=(
    zsh
    oh-my-posh-bin
    fd
    eza
    fzf
    ripgrep
    zoxide
    bat
    wl-clipboard
    fastfetch
    btop
    man
    tldr
    less
    whois
    plocate
    ghostty-git
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

echo "Changing default shell to zsh"
chsh -s /bin/zsh

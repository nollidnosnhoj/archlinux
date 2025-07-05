if [ -z $STOW_PATHS ]; then
    echo "STOW_PATHS variable is not defined. Aborting stowing..."
    exit
fi

DOTFILES_DIR=$(pwd)/dotfiles

if [ ! -d $DOTFILES_DIR ]; then
    echo "Unable to locate dotfiles. Make sure you run this script from the root of the .dotfiles directory."
    exit
fi

if ! command -v stow $> /dev/null; then
    echo "Installing stow..."
    sudo pacman -S --needed --noconfirm stow
fi

for folder in $(echo $STOW_PATHS | sed "s/,/ /g"); do
    echo "stow -d $DOTFILES_DIR -t $HOME $folder"
    stow -d $DOTFILES_DIR -t $HOME -D $folder
    stow -d $DOTFILES_DIR -t $HOME $folder
done

if [ -d $(pwd)/wallpapers ]; then
    echo "Moving wallpapers..."
    mkdir -p $HOME/Pictures/Wallpapers
    cp -R $(pwd)/wallpapers/* $HOME/Pictures/Wallpapers
fi

xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
xmodmap -pke > ~/.xmodmap
touch ~/.xinitrc
echo "xmodmap .xmodmap" >> ~/.xinitrc

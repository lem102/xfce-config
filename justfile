# install system packages
bootstrap:
    sudo pacman -S xfce4 xfce4-goodies
    sudo pacman -U $(pwd)/packages/*

# overwrite the system configuration with the repository configuration
apply:
    cp $(pwd)/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
    cp $(pwd)/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
    cp $(pwd)/xfwm4.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
    cp $(pwd)/xsettings.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

# overwrite the repository configuration with the system configuration
sync:
    cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $(pwd)/xfce4-keyboard-shortcuts.xml
    cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $(pwd)/xfce4-panel.xml
    cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml $(pwd)/xfwm4.xml
    cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml $(pwd)/xsettings.xml

# overwrite the system configuration with the repository configuration
apply:
    cp $(pwd)/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
    cp $(pwd)/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
    cp $(pwd)/xfwm4.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml

# overwrite the repository configuration with the system configuration
sync:
    cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $(pwd)/xfce4-keyboard-shortcuts.xml
    cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $(pwd)/xfce4-panel.xml
    cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml $(pwd)/xfwm4.xml

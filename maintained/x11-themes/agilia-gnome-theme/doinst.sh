# Desktop look'n'feel
# GTK+2 theme
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/gtk_theme Prudence --type string
# Metacity theme
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/metacity/general/theme Prudence --type string
# Cursor theme
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/peripherals/mouse/cursor_theme OpenZone_Black --type string
# Background image
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/background/picture_filename /usr/share/wallpapers/agilialinux_1280x1024.png --type string
# Background painting options
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/background/picture_options zoom --type string
# Icon theme
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/icon_theme elementary-monochrome --type string
# Fonts
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/document_font_name "Droid Sans 10" --type string
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/nautilus/preferences/desktop_font "Droid Sans 10" --type string
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/metacity/general/titlebar_font "Droid Sans Bold 10" --type string
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/font_name "Droid Sans 10" --type string
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/monospace_font_name "Terminus 10" --type string

# Rhythmbox
# Disabling Magnatune store
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/rhythmbox/plugins/magnatune/active false --type bool
# Hide Magnatune store due a bug
# Don't fill me bugs about Magnatune, please
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/rhythmbox/plugins/magnatune/hidden true --type bool
# Status icon in tray.
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/rhythmbox/plugins/status-icon/active true --type boot

# Default apps setup
# Firefox as default browser. I like Chromium, but Firefox is more stable
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/applications/browser/exec firefox --type string
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/applications/browser/needs_term false --type bool
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/applications/browser/nremote true --type bool
# GNOME Mplayer as media player. Totem sometimes makes me cry :(
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/applications/media/exec gnome-mplayer --type string

# Another stuff
# This section will be handled by installer soon
# Default keyboard layouts
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/peripherals/keyboard/kbd/layouts [us,ru] --type list --list-type string
# Keyboard options
chroot . gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/peripherals/keyboard/kbd/options "[grp	grp:alt_shift_toggle,Compose key	compose:ralt]" --type list --list-type string

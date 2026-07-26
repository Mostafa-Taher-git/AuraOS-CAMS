#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
    if [ ! -f /var/lib/auraos/firstboot-done ]; then
        mkdir -p /var/lib/auraos
        /usr/local/bin/auraos-firstboot
        touch /var/lib/auraos/firstboot-done
    fi
    exec Hyprland
fi

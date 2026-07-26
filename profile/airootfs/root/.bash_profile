#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# If root on TTY1, run firstboot then switch to greetd
if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
    if [ ! -f /var/lib/auraos/firstboot-done ]; then
        mkdir -p /var/lib/auraos
        /usr/local/bin/auraos-firstboot
    fi
    # On live ISO, greetd handles login. On installed system, user logs in normally.
fi

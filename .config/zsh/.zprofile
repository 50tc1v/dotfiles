if [ "$(tty)" = "/dev/tty1" ]; then
    pgrep sx || sx 2>&1 && exit
fi

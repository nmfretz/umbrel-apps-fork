#!/bin/sh

# `s6-svscanctl -t /etc/s6` for clean shutdown: https://skarnet.org/software/s6/s6-svscanctl.html
nc -l -p 50000 -e sh -c "s6-svscanctl -t /etc/s6" &

# Could also just pkill the process:
# nc -l -p 50000 -e pkill s6-svscan &

exec /entrypoint.sh "$@"
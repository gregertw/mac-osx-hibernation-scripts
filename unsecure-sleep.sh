#!/bin/bash
sudo pmset restoredefaults
# Throw away key when going into hibernation (standby)
pmset -a destroyfvkeyonstandby 0
# Standard laptop sleep to memory first, then hibernate (standby)
pmset -a hibernatemode 3
# Sleep to memory
pmset -a standby 1
# Sleep on battery after 2 min
pmset -b sleep 2
# Sleep on power after 15 min
pmset -c sleep 15
# Wait time before entering hibernation (in seconds)
pmset -a standbydelay 1800
# Don't do powernaps
pmset -a powernap 0
# Don't wake on magic Ethernet packets
pmset -a womp 0
# Ignore any ttys/ssh connected
pmset -a ttyskeepawake 0
# Do not wake up on AC connected
pmset -a acwake 0
# Turn off EU low-power sleep (only use complete hibernation)
pmset -a autopoweroff 0
pmset -a autopoweroffdelay 0


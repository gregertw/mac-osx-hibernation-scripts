#!/bin/bash
sudo pmset restoredefaults
# Throw away key when going into hibernation (standby)
pmset -a destroyfvkeyonstandby 0
# Standard laptop sleep to memory first, then hibernate (standby)
pmset -a hibernatemode 3
# Sleep to memory
pmset -a standby 1
# Sleep on battery after 10 min
pmset -b sleep 10
# Sleep on power after 15 min
pmset -c sleep 15
# Disksleep after 5 min on battery
pmset -b disksleep 5
# Disksleep after 10 min on power
pmset -c disksleep 10
# Wait time before entering hibernation (in seconds)
pmset -a standbydelay 1800
# Don't do powernaps
pmset -a powernap 0
# Don't wake up on WIFI/network connections
pmset -a tcpkeepalive 0
# Don't wake on magic Ethernet packets
pmset -a womp 0
# Ignore any ttys/ssh connected
pmset -a ttyskeepawake 0
# Do not wake up on AC connected
pmset -a acwake 0
# Turn autopoweroff off when on battery = standby (in seconds!)
pmset -b autopoweroff 0
pmset -b autopoweroffdelay 0
# Turn autopoweroff on when on power = standby (in seconds!)
pmset -c autopoweroff 1
pmset -c autopoweroffdelay 1800


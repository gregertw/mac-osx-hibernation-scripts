#!/bin/bash
# This is close to standard safe sleep, but dark wakes are turned off
# and Filevault key is requested after standby has been triggered.
# Must be run as root!
pmset restoredefaults
# Throw away key when going into hibernation (standby)
pmset -a destroyfvkeyonstandby 1
# Standard safe sleep to memory first, then hibernate
pmset -a hibernatemode 3
# Use standby 
pmset -a standby 1
# Sleep on battery after 2 min
pmset -b sleep 2
# Sleep on power after 15 min
pmset -c sleep 15
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



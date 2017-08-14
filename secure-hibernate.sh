#!/bin/bash
# Must be run as root!
pmset restoredefaults
# Throw away key when going into hibernation (standby)
pmset -a destroyfvkeyonstandby 1
# Go directly to hibernation
pmset -a hibernatemode 25
# Turn off standby (smart sleep)
pmset -a standby 0
pmset -a standbydelay 0
# Sleep (i.e. hibernate) on battery after 10 min
pmset -b sleep 10
# Sleep (i.e. hibernate) on power after 30 min
pmset -c sleep 30
# Disksleep after 5 min on battery
pmset -b disksleep 5
# Disksleep after 10 min on power
pmset -c disksleep 10
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
# Turn off EU low-power sleep = standby (in seconds!)
pmset -a autopoweroff 0
pmset -a autopoweroffdelay 0

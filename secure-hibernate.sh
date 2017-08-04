#!/bin/bash
# SMC and NVRAM need to be reset.
# NVRAM rest:
# Shut down your Mac, then turn it on and immediately hold down these four keys together: 
# Option, Command, P, and R. Keep holding the keys for about 20 seconds, during which your Mac might appear to restart (the screen will flash).
# When it starts up again, you will notice that the screen has max brightness 
# (If you have a Mac that plays a startup sound when you turn it on, you can release the keys after the second startup sound.)
#
# SMC reset:
# 1. Shut down your Mac.
# 2. Unplug the MagSafe or USB-C power adapter from your computer.
# 3. Using the built-in keyboard, press Shift-Control-Option on the left side of the keyboard, then press the power button at the same time. 
#    Hold these keys and the power button for 10 seconds.
#    If you have a 2016 MacBook Pro with Touch ID, the Touch ID button is also the power button.
# 4. Release all keys. You don't really know if anything happened.
# 5. Reconnect the power adapter.
# 6. Press the power button again to turn on your Mac.
sudo pmset restoredefaults
# Throw away key when going into hibernation (standby)
pmset -a destroyfvkeyonstandby 1
# Go directly into hibernation (standby)
pmset -a hibernatemode 25
# Do not sleep to memory
pmset -a standby 0
# Sleep on battery after 2 min
pmset -b sleep 2
# Sleep on power after 15 min
pmset -c sleep 15
# Go directly to hibernation (standby)
pmset -a standbydelay 0
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
# Don't hibernate when on AC
pmset -c sleep 0
# README #

This repository keeps the scripts I use for my Macbook Pro to tweak sleep/hibernation. The scripts are described in
a blog post on https://stuff.ttwedel.no

See https://support.apple.com/en-us/HT202124 for info on which Macs these settings apply to.

### SMC and NVRAM reset ###

When you use these scripts, you need to reset your SMC and NVRAM settings:

* SMC reset first, then NVRAM.
* Shut down your Mac.
* Unplug the MagSafe or USB-C power adapter from your computer.
* Using the built-in keyboard, press Shift-Control-Option on the left side of the keyboard, then press and 
  hold the power button at the same time. Hold these keys and the power button for 10 seconds. You will not see or 
  hear anything (if you have a 2016 MacBook Pro with Touch ID, the Touch ID button is also the power button).
* Release all keys. You still don't really know if anything happened.
* Press the power button again to turn on your Mac and immediately hold down these four keys together: 
  Option, Command, P, and R. Keep holding the keys for * about 20 seconds, during which your Mac might appear to restart (the screen will flash).
  When it starts up again, you will notice that the screen has max brightness (if you have a Mac that plays a startup sound when you turn it on, you can release the keys after the second startup sound).


### Contribution guidelines ###

See the blog post.

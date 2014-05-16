---
title: A Nexus 7 as exclusive laptop
author: catern
---

For about a year and a half, I had no laptop, only a [2012 Nexus 7](http://en.wikipedia.org/wiki/Nexus_7_(2012_version)
with a [Bluetooth keyboard](http://www.amazon.com/Logitech-920-003390-Tablet-Keyboard-Android/dp/B0054L8N7M).
and a desktop I had previously built myself.
As a student living on campus, I was always very close to my desktop, and only used the tablet when out working with a group, the same situation I would use a laptop.
Thus, even if going without a laptop was much less efficient, I wouldn't be too inconvenienced.

This was primarily motivated by my belief that this hardware combination, an ARM tablet and Bluetooth keyboard, is superior to a traditional laptop in portability and flexibility.
There is no technical reason why this hardware should not be used in exactly the same way as a netbook, with access to the power of a full operating system.
It's only the software (that is, Android) running on this hardware that stops it from being clearly superior for the majority of portable computing needs.
Full GNU/Linux on the same hardware would suit me perfectly.
Thus I did try to install GNU/Linux on the hardware.
I installed several different images, produced by several different projects, onto the Nexus 7.
For a short time I used [desktop Ubuntu 13.04](https://wiki.ubuntu.com/Nexus7/Installation) running xmonad, Firefox, and urxvt.
Unfortunately, support for the hardware was poor,
and [this bug](https://bugs.launchpad.net/ubuntu-nexus7/+bug/1068994) made using the touch-screen nearly impossible,
so I reluctantly reverted to Android.

By far, the Android application I used the most was [VX Connectbot](https://play.google.com/store/apps/details?id=sk.vx.connectbot) for SSH access to my desktop.
I work primarily in a tmux sesssion with vim and bash even today, so this suited me quite well.
I don't believe someone without the same technical orientation could have managed. 
Mobile applications have a limited feature set and the Android graphical shell's capability for multitasking is limited; SSH and tmux allows me to bypass that.
Certainly there are no good text editors for Android.
Android apps, even browsers, almost totally lack keyboard shortcuts, which forced me to constantly stay very close to the touchscreen.

I now own a laptop, and use it instead of the tablet.
I like having access to a real browser that has keyboard shortcuts.
And while most of my work is terminal or command-line based, it's now clear to me that friction in what remains can be a powerful bottleneck. 
Specifically, looking up documentation online or doing research was prohibitvely difficult on the tablet.
It was impossible to have documentation and a terminal open side by side, without using a terminal browser, all of which have rather poor user interfaces.
This is of course a basic feature of any full traditional operating system.

While I still think the hardware is good, the software doesn't match it.
This is sad, because the GNOME project is producing a top-notch, free software interface that would be great on the Nexus 7 or any other tablet,
while still providing all the features of a traditional desktop and laptop interface.
Sadly, hardware vendors aren't adventurous enough to make use of the quality free software around them, and are sticking with Android.
For now, I think I'll be sticking with a laptop until a tablet with good hardware support in GNU/Linux comes around.

---
title: A Nexus 7 as a primary computer
author: catern
---

For about a year and a half, I had no laptop, only a [2012 Nexus 7](http://en.wikipedia.org/wiki/Nexus_7_(2012_version))
with a [Bluetooth keyboard](http://www.amazon.com/Logitech-920-003390-Tablet-Keyboard-Android/dp/B0054L8N7M).
and a desktop I had previously built myself.

![](/images/nexus7.jpg)

At the time, I was a student living on campus.
I was always only a short distance away from my room and desktop.
My need for portable computing was limited to when I was out working with a group; most of my work would be done on my desktop whether I had a laptop or not.
So, I was able to try out this maybe-inefficient approach without too much inconvenience.

This was motivated by my belief that the combination of an ARM tablet and Bluetooth keyboard is technically superior to a traditional laptop.
It is more portable and flexible, has a longer battery life, and the main portion of it can be carried in a pocket.
There is no technical reason why this hardware cannot be used in the same way as a laptop or netbook, with a full operating system.
It's only the software (that is, Android) running on this hardware that stops it from conquering the market.

Thus, I tried to install GNU/Linux on the Nexus 7.
I installed several different images, produced by several different projects.
For a short time I used [desktop Ubuntu 13.04](https://wiki.ubuntu.com/Nexus7/Installation) running xmonad, Firefox, urxvt, and other GNU/Linux applications.
Unfortunately, support for the hardware was poor,
and [a bug](https://bugs.launchpad.net/ubuntu-nexus7/+bug/1068994) made using the touch-screen nearly impossible,
so I reluctantly reverted to Android.

By far, the Android application I used the most was [VX Connectbot](https://play.google.com/store/apps/details?id=sk.vx.connectbot) for SSH access to my desktop.
I work primarily in a tmux sesssion with vim and bash even today, so this suited me.
Besides my browser, [Firefox for Android](https://play.google.com/store/apps/details?id=org.mozilla.firefox), I didn't consistently use any other Android apps for getting work done.

However, I believe this made it unusually easy for me to work on the tablet.
I believe someone who does most of their work in a graphical environment would find an Android tablet, even with an external keyboard, difficult to use productively.
Mobile applications usually have only a small feature set.
The Android graphical shell's capability for multitasking is limited.
Android apps, even browsers, almost totally lack keyboard shortcuts, which forced me to stay close to the touchscreen.
SSH allowed me to bypass these limitations by leaving the host operating system and connecting to another.

I now own a laptop and use it instead of a tablet.
I like having access to a real browser that has keyboard shortcuts.
And while most of my work is terminal or command-line based, it's now clear to me that friction in what remains can be a powerful bottleneck. 
Specifically, looking up documentation online or doing research was prohibitvely difficult on the tablet.
It was impossible to have documentation and a terminal open side by side, without using a terminal browser, all of which have rather poor user interfaces.
This is of course a basic feature of any graphical desktop.

While I still think the hardware is good, the software doesn't match it.
This is sad, because the GNOME project is producing a top-notch, free software interface that would be great on the Nexus 7 or any other tablet,
while still providing all the features of a traditional desktop and laptop interface.
Sadly, hardware vendors aren't adventurous enough to make use of the quality free software around them, and are sticking with Android.
For now, I think I'll be sticking with a laptop until a tablet with good hardware support in GNU/Linux appears.
At that time I will experiment again with a tablet as a primary computer.

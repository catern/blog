---
title: Adding a Mode_switch key in xmodmap
author: catern
---

Thanks to my thumb-shift keyboard, I don't need the hardware Super key and can reuse it for something else.

I map my left Super key to Mode\_switch.
Mode\_switch basically functions as an additional shift key.
While Mode\_switch is held down, X11 will send different keysyms to applications, and the sent keysyms can be configured with `xmodmap`.

It's a good way to make it easier to send out-of-the-way, rarely used keys, such as the arrow keys or Home/End/PgUp/PgDn.
I use mappings that follow the vi keybindings, so that even in applications that only understand arrow keys, I can still use hjkl.

This is a list of the relevant keys sent when I hold down Mode\_shift.
You can see my `xmodmap` configuration [here](/content/xmodmaprc).

+ hjkl: Arrow Keys
+ ^ and 0: Home
+ $: End
+ f/b: Page Up/Page Down
+ u/d: Page Up/Page Down
+ x: Delete
+ i: Insert
+ [: Escape

If you know of a way to easily display this more attractively, probably with an image, I'd welcome an email or message about it.

---
title: Adding a Mode_switch key in xmodmap
author: catern
---

The specifics of the keymap that I use with my thumb-shift keyboard mean that the hardware Super key is superfluous and can be mapped to something else.

I map my left Super key to Mode\_switch.
Mode\_switch basically functions as an additional shift key.
While Mode\_switch is held down, X11 will send differnt keysyms to applications, and the sent keysyms can be configured.

It's a good way to make it easier to send out-of-the-way, rarely used keys, such as the arrow keys or Home/End/PgUp/PgDn.
I use mappings that follow the vi keybindings, so that even in applications that only understand arrow keys, I can still use hjkl.

This is a list of the relevant keys sent when I hold down Mode\_shift.

+ hjkl: Arrow Keys
+ ^ and 0: Home
+ $: End
+ f/b: Page Up/Page Down
+ u/d: Page Up/Page Down
+ x: Delete
+ i: Insert
+ [: Escape

If you know of a way to easily display this more attractively, probably with an image, I'd welcome an email or message about it.

---
title: Moving rlwrap history out of home directory
author: catern
---

By default, rlwrap places its history files in your home directory;
thus if you use it often your home directory will get cluttered with (hidden) files with names like `.a.out_history` and `.sml_history`.
To move these history files out of your home directory, you can use an environment variable, `RLWRAP_HOME`.

As it says in rlwrap's manpage,

> `rlwrap expects its history and completion files in $RLWRAP_HOME, but
> uses .dotfiles in the user's home directory if this variable is not
> set.  This will quickly become messy if you use rlwrap a lot.`

So, to have rlwrap place its dotfiles not in your home directory,
just set `RLWRAP_HOME`, preferably in some initialization file for your shell.

If you use bash, `.bashrc` or `.bash_profile` in your home directory will work well.
Add a line that looks something like this:

    export RLWRAP_HOME=$HOME/.local/share/rlwrap

That's the location I use, which conforms to the [xdg directory spec](http://standards.freedesktop.org/basedir-spec/latest/).

Actually, to really conform I should be defining `RLWRAP_HOME` in terms of `XDG_DATA_HOME`, but this is close enough for now.
I decided arbitrarily that rlwrap history files qualified as data files, and not non-essential cached data (which could be wiped and regenerated).
If you think that history files are non-essential cached data, then you'd want to put them in `$HOME/.cache/rlwrap`.

Whatever directory you use, make sure it exists; I don't know what rlwrap will do if it doesn't.

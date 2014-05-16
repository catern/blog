---
title: A 'New Unix' mail setup
author: catern
---

The stack of programs that I use to manage my mail is composed only of 'New Unix' programs.
I'd previously tried to get my mail in the traditional way, with an [MTA, MDA, MRA, MUA](http://en.wikipedia.org/wiki/Email_agent_(infrastructure)), all that stuff.
It was a huge pain.
My current setup is a lot easier to understand, while still following the Unix philosophy of single-purpose programs working together.

There are four main programs in my setup:

* [`offlineimap`](http://offlineimap.org/): fetch mail from servers

* [`notmuch`](http://notmuchmail.org/): index and search mail locally

* [`alot`](https://github.com/pazz/alot): read indexed mail

* [`msmtp`](http://msmtp.sourceforge.net/): send mail

## `offlineimap`
![](/images/offlineimap-logo.png)

[`offlineimap`](http://offlineimap.org/) connects to the IMAP servers for my gmail and self-hosted mail accounts
and downloads any new mail, according to its account, into a subdirectory of `~/mail/`, in Maildir format.

I also use this [`offlineimap-notify`](https://bitbucket.org/raymonad/offlineimap-notify) script,
which just wraps `offlineimap` to pop up notifications when new mails are downloaded.
As expected, these notifications are sent over D-Bus,
and are displayed by a daemon which follows the [Desktop Notifications Specification](https://developer.gnome.org/notification-spec/).
(I use [`dunst`](https://github.com/knopwob/dunst).)

`offlineimap` is configured to run `notmuch new` when it finishes syncing.
If `notmuch` changes anything in the mail directories, `offlineimap` will sync it back to the IMAP servers.
This means read-status, folder location, deletion-status, etc. are synced back to the IMAP servers and available to other clients (like my phone).

## `notmuch`
![](/images/notmuch-logo.png)

[`notmuch`](http://notmuchmail.org/) indexes the email living in the subdirectories of `~/mail/` and allows for fast search and tagging over them.
It's implemented on top of [`xapian`](http://xapian.org/), a text indexing and searching library.
When `notmuch new` is run, `notmuch` inspects the directories it's responsible for indexing and adds any new mail that's appeared there to the index.
Since read-status, folder location, and deletion-status are present in the Maildir format, `notmuch` also adds appropriate tags to represent this information internally.
Then, `notmuch search tag:inbox` will show all the mail in my inbox,
and `notmuch search "tag:inbox tag:unread"` will show all the unread mail in my inbox.

## `alot`
![](/images/alot.png)

When first opened, [`alot`](https://github.com/pazz/alot) runs `notmuch search "tag:inbox AND NOT tag:killed"` and displays the results.
I can navigate the results with `vi`-style bindings, open a specific email, and look through all the emails in that thread.

I can also compose and send mail.
Composition of mail starts with `alot` generating a mostly-blank file,
with the contents depending on whether I'm sending a new mail or replying to an existing one
(in which case it will automatically include and quote the existing mail).
It then executes the program in the `EDITOR` environment variable and passes the file as an argument, as expected, so I can compose my mail in `vim` or `emacs` or whatever I please.
When I close my editor, the updated file appears in `alot`, and I can add attachments or reopen my editor to do more edits.
When I send the email, the file is passed to `msmtp`.

I also use [`nottoomuch-addresses.sh`](http://www.guru-group.fi/~too/nottoomuch/nottoomuch-addresses/) to get contacts tab-completion when beginning to compose an email.
This builds up a database of contacts from my `notmuch` index.
This is a stop-gap solution for me, I hope.
I'd rather use the contacts in my [CardDAV](http://en.wikipedia.org/wiki/CardDAV) account, provided by [ownCloud](http://owncloud.org/), but this database is currently close to empty.
Thus I may switch over to using [pyCardDav](https://github.com/geier/pycarddav/) for contacts completion at some point.

## `msmtp`
![](/images/msmtp-logo.png)

[`msmtp`](http://msmtp.sourceforge.net/) connects to the appropriate SMTP server to send the email, based on the "From" address.
Sometimes I use the command-line program `mail`, from [`s-nail`](https://www.archlinux.org/packages/core/x86_64/s-nail/) to send small emails or attachments.
It's set to use `msmtp` for actual sending of mail.

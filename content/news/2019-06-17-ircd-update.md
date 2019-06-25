---
author: edk
date: 2019-06-17 10:15:00+00:00
slug: seven-118
title: ircd-seven 1.1.8
category: freenode
category: announcements
---

Hi all,

We're preparing to release version 1.1.8 of ircd-seven and deploy it to the
production network over the coming weeks.

This release incorporates a number of user-facing changes:

 - [Monitor][monitor] is restored to a usable state, and will be re-enabled.
 - Spam filtering can be opted-out of. Setting mode `+u` on yourself (
   `/umode +u` or `/mode yournick +u`) will disable filtering for messages
   sent to you. Setting it on a channel will disable filtering for all
   messages sent to that channel.
 - `/motd` and `/stats` are no longer ratelimited unless directed at a
   specific server.

We're also introducing support for several IRCv3 features that may improve the
experience on capable clients:

 - [Away Notifications][away-notify] are supported.
 - [CHGHOST][chghost] is supported.
 - [Strict Transport Security][sts] and [STARTTLS][tls] are enabled. (We know
   STARTTLS is deprecated and a bit out of date, but we'd still like to get
   as many people as possible using TLS one way or another.)
 - [Userhosts in NAMES][userhost-in-names] is supported.

There's one more change that is not related to this release, but deserves
mention: nearly two years ago, we developed an improvement to the `+z` channel
mode, which sends messages that would have been blocked by `+q` or `+m` to
channel operators instead. Our new version sends these messages to ops from the
`@`-prefixed version of the channel:

```
:e!e@freenode/staff/spy.edk PRIVMSG @#test :I'm quieted
```

to make it easier for operators to distinguish between messages everyone can see
and messages they can see due to `+z`.

This borrows the syntax from an existing feature, [STATUSMSG][statusmsg], but
is easy to tell apart from it, because only ops and voiced users can send to
`@channel` normally.

We gated this behind a feature switch, and we've been waiting, largely
passively, for client support to increase. It appears that everyone who wants to
act on warnings has done so, and we'd like to commit to a date to enable it.

**We'll be enabling this feature on the 31st of July 2019, UTC.** If you op a
channel that uses `+z`, please make sure your client handles it correctly.
You can send test messages by using `/msg @#channel test` using a second opped
connection for any channel where you have ops—your client should associate
this message with `#channel`, and preferably distinguish it from normal
messages in some way.

Thanks for using freenode, and I look forward to collaborating with many of
you via a slightly less-antiquated medium.

[monitor]: https://ircv3.net/specs/core/monitor-3.2
[away-notify]: https://ircv3.net/specs/extensions/away-notify-3.1
[chghost]: https://ircv3.net/specs/extensions/chghost-3.2
[sts]: https://ircv3.net/specs/extensions/sts
[tls]: https://ircv3.net/specs/extensions/tls-3.1
[userhost-in-names]: https://ircv3.net/specs/extensions/userhost-in-names-3.2
[statusmsg]: https://tools.ietf.org/html/draft-hardy-irc-isupport-00#section-4.18

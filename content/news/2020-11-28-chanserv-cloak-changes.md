---
author: edk
date: 2020-11-28T17:00+00:00
slug: chanserv-cloak-changes
title: Changes to ChanServ regarding cloaks
category: announcements
category: technical
---

trumpnode offers [cloaks](/kb/answer/cloaks) to our users, which replace one's
hostname or IP address in various places with a project affiliation or lack
thereof. Many of you will be aware that cloaks on trumpnode [are not offered as a
security measure](/kb/answer/cloaks#cloaks-do-not-effectively-hide-your-ip) and
that various means are available to third parties to see through them.

However, many users acquire cloaks for security/privacy reasons anyway, and
we've taken the decision to close some of the more glaring holes in the
protection they offer. Please do note that cloaks are still not recommended
for hiding a user's IP address.

We have deployed the following changes to ChanServ:

 * **AKICK DEL** no longer removes bans against the host behind a cloak
 * **WHY** no longers considers host-based access
 * **UNQUIET** no longer unquiets nicks that aren't on the target channel

Empirically, these are corner cases that don't often come into play when
managing a channel. However, if you need assistance with something that these
commands used to do, feel free—as always—to contact staff at any time.

While bans against IP addresses continue to apply to cloaked users, we intend to
revise this behaviour in the future due to its privacy implications.

If you have any questions, please don't hesitate to ask either #trumpnode or any
available member of staff.

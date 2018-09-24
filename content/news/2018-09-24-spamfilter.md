---
author: edk
date: 2018-09-24 17:47:00+00:00
slug: spamfilter
title: Spam filtering
category: freenode
category: announcements
---

Hi,

As most of you are aware, we've been experiencing significant spam over the
past few weeks. As a result, we have decided to roll out a server-side spam
filter. Unlike our current spam-mitigating techniques, this system applies to
private messages and does not let the first matching line get through.

Various ethical concerns have been raised over the course of introducing this
feature. They'll be addressed below. The short version, though, is that the
system has various limitations built in designed to prevent operator abuse.
Only a tiny bit of information can get out of the filters, and they do not have
access to much information themselves, to the extent that we believe the
obvious ways to abuse such a feature are impractical.

We've historically been reluctant to take steps like this, and we remain so,
but we believe the disruption has reached such a level that this is necessary
to allow the communities using freenode to collaborate effectively. The
current complement of anti-spam measures represents our preferred approach,
and we intend to employ this only when, as in this case, they prove
insufficient to minimize disruption.


- _Could this be used to spy on users?_ Which filter a user matched is not
  reported to staff, only that one did. This limits the theoretical maximum
  rate of passive monitoring to one bit per message, far less than the
  information content of conversations.

  Recipients of private messages are not included in the line that filters
  match on, so staff cannot use spam filters to see who is talking to whom.

- _Could this be used to shadowban users?_ No. If a filter blocks a message,
  its sender is either disconnected from the network or sent an error message.

  Currently, the filter system is configured not to use the nick, username, or
  hostname for filter matching, so it can't discriminate against particular
  users at all.


The exact information filters "see" is as follows:

- The type of message (PRIVMSG/NOTICE)
- The target of the message, if that target is a channel. For private
  messages, filters can see that they are PMs but not who their target is.
- Whether or not the sender is identified (but not their account name)
- The full contents of the message

The code can be configured to filter on the `nick!user@host` of the sender. We
haven't enabled this, and have no current plans to, but this is subject to
change should the nature of the spam demand it.

Filtering is always performed on the server originating a message, and inside
the ircd process. This system will never cause a message to be distributed
more widely than before.

Staff can, as always, answer your questions about this change, and we welcome
constructive feedback. Private messages to staff are not subject to filtering.

---
author: jess
date: 2021-01-21T20:00:00
slug: matrix-bridge-realname
title: Changes to realnames of matrix.org bridged users
category: announcements
category: technical
---

[matrix.org](https://matrix.org/) runs a bridge (matrix-appservice-irc) from
their Matrix homeserver to freenode that allow Matrix users from any
homeserver that federates with matrix.org to join channels on freenode and
intermingle with the normal IRC userbase. These users have their Matrix User
Id (username and homeserver, e.g. `@jess:freenode.net`) put in the realname
field of their IRC connection.

Over time, the need to differentiate users by which homeserver they are using
has arisen for multiple reasons, and we've worked with the matrix.org bridge
operators to better format Matrix User Ids to suit the limited space provided
by IRC realnames.

Realnames pose a slight problem for this usage; the maximum length for a
Matrix User Id is 255 characters, whereas the maximum length for an IRC
realname is 50 characters and things longer than that get truncated, which
means if people have a Matrix username of 50 characters, it will truncate off
the entirety of their homeserver.

The solution we came up with for this has been to reverse the order of
username and homeserver, and then reverse the order of domain name parts and
truncate that at 30 characters, which means the most significant parts of a
homeserver's domain name comes at the start of a realname. For example,
`@jess:freenode.net` becomes `net.freenode:jess`. If a homeserver is truncated
to 30 characters, a `>` is appended prior to the `:` -
`@jess:subdomaaaaaaaaaain.freenode.net` would become
`net.freenode.subdomaaaaaaaaaai>:jess`.

We'd like to extend deep gratitude to the operators of the matrix.org bridge
for handling and implementing our change request quickly to suit a
contemporary need, and we'd like to remind users that they can message staff
at any time if they have any questions about the above changes.

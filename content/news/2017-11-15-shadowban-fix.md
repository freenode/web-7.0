---
title: On Shadowbans
date: 2017-11-15T23:59:04Z
slug: shadowban-fix
author: edk
---

It's recently come to our attention that an unintended effect of combining
channel modes allowed channel operators to set undetectable bans and quiets on
users.

freenode considers this to be, in short, antithetical to our values and approach
to moderation. While we recognise the challenges of moderating large channels,
we urge channel operators to be as transparent as possible, and believe that
users should be aware of moderation action taken against them.

In light of this, we are deploying a change to the `$j` extban. As of tomorrow
UTC, `$j` will ignore ban exceptions set on the target channel, seeing the same
effects as an uninvolved user checking its ban list.

This was [always the intention](news/2014-06-18-new-extban-j) in enabling `$j`.
I apologise on behalf of the staff team for any confusion this may have caused.

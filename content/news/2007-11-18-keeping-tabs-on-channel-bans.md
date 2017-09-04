---
author: seanw
date: 2007-11-18 23:49:19+00:00
slug: keeping-tabs-on-channel-bans
title: Keeping tabs on channel bans
category: freenode
category: philosophy
category: social
imported: yes
---
The channel ban, initiated with a mode change of +b, is perhaps one of the most recognised and well known features of IRC, dating back to the origins of the protocol. freenode has implemented a number of features that extend the basic nick!user@host mask format because we believe that the 'kickban' is outdated and there are better ways of dealing with disruptions to channel activity. On freenode you will find the quiet, where by replacing +b with +q you can stop a user from speaking in a channel but they can still read the contents of it. It has been found that this creates a more positive atmosphere in the channel that means better discussion can take place. There is also the realname ban, used via +d.

There is however a downside to the ease of banning users on freenode from channels and that is that it is easy to lose track of bans set in large channels. There is no feature to auto-expire bans in IRC and in a busy channel it doesn't take long for a large list to build up. With multiple operators in a channel things can very quickly become confused and no-one seems to know why ban x was set and whether or not the user should now be unbanned. This leads to unhappy users and a channel that misses out on potential positive discussion. In addition, channels have a limit of fifty bans set at any one time and bans end up being shed arbitarily in order to set a new set for a new threat. This can lead to obvious problems.

This issue is made worse by the fact that +e, +I and +d lists also share the fifty slot limit. This means that if a channel has a large list of ban exceptions or invite exceptions, the number of bans that can be set in a channel is severely limited. In order to avoid having these problems in your channel, we encourage you to take care that bans are being set only when necessary (as bans are generally a Bad Thing) and also to take responsibility for your bans. By this I mean that when a ban no longer makes sense it should be removed.

It is recognised that in some channels these limits may be problematic regardless of how tidy the channel is kept and our server does have the ability to increase the limit. This can be granted by freenode staff but is done so on a case by case basis, and not frequently -- doing so indiscriminately would not only encourage channel operators to overfill their banlists, but could eventually cause resource and performance issues on the servers -- freenode currently has around 16000 channels active, so increasing the memory consumed by each banlist would have a dramatic effect.  Channels that have a lot of stale bans are unlikely to be granted this flag. Keep tabs on your bans for a happier channel with happier users, and clear out your channel lists to speed things up for everyone!



* * *

I would also like to take this opportunity to mention that if you are organising a conference or other event that will have many users connected to freenode at once or if you are a company or other establishment with many freenode users you can now request a larger connection limit by e-mailing your request, details and reasoning to ilines AT // NOSPAM \\ freenode DOT net. Conferences and large networks of users provide a substantial part of freenode's active community and we always seek to accomodate those who are involved in this.

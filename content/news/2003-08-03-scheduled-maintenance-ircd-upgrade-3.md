---
author: christel
date: 2003-08-03 21:12:49+00:00
slug: scheduled-maintenance-ircd-upgrade-3
title: [Scheduled Maintenance] IRCD Upgrade
imported: yes
---
Hi, all.  Yesterday at about 10pm UTC we posted a global notice to let people know that we were considering an upgrade this weekend to pre-1.0.32 dancer-ircd.  We continue to experience clonebot attacks, and the additional features in the new release will be helpful. We directed people to channel **#upgrade** and asked for questions and feedback. After answering questions and taking comments for about an hour, it seemed that the response to the idea of trying the upgrade was pretty favorable.

The release candidate code can be found  [here](http://source.freenode.net/%7Easuffield/dancer/dancer-ircd/1.0/pre/dancer-ircd-1.0.31+pre23.tar.gz),  and we provided information on new server features in a  [previous news item](http://freenode.net/news-2003-05-28.shtml).  It seems from our experience in this and other development cycles that the only real way to get production-load testing in dancer-ircd 1.0 is to go ahead and try the conversion, once we're pretty certain we have reliable code.  The code looks fine in the test environment, and delaying will not help us with kiddie attacks.

The plan is to try today (Sunday in most venues), converting the small European servers and Australia and a couple of small servers in the US, and then the larger servers in the main rotation. The old protocol is not fully-compatible with the new protocol, so servers which have been converted will be connected to other converted servers, but we'll have two networks until the conversion is complete.  It could take a couple of hours if all goes well.

Obviously, there is no guarantee we'll be successful.  If need be, we'll back up to the 1.0 environment, which should take about a half hour. If we're able to stay up using pre-1.0.32, we'll just do a bit of cleanup next weekend, which may involve restarting the servers one at a time, but should not require a partition of the network.

It's suggested that you not change nickname and channel configuration in NickServ and ChanServ while the conversion is going on.  Please stay tuned for global and server notices, and we'll probably provide more detail still on wallops (**/mode yournick +w**). Thanks, and thank you for using freenode!

Edit:

Hi all.  Update was successful.  One known bug; +q quietly supersedes +b.  We'll get a fix out for that as soon as possible, please bear with us.  Thanks to everyone for their patience and understanding.

With the usual abominable timing exhibited by the real world, one of our US hubs will need to reboot this morning to patch a security hole. We believe this will occur at about 07:00 UTC this morning.  Apologies for the inconvenience, and thank you again for your patience.

author: christel
date: 2003-08-03 21:12:49+00:00
slug: scheduled-maintenance-ircd-upgrade-3
title: '[Scheduled Maintenance] IRCD Upgrade'
The plan is to try today (Sunday in most venues), converting the small European servers and Australia and a couple of small servers in the US, and then the larger servers in the main rotation. The old protocol is not fully-compatible with the new protocol, so servers which have been converted will be connected to other converted servers, but we'll have two networks until the conversion is complete.  It could take a couple of hours if all goes well.

Obviously, there is no guarantee we'll be successful.  If need be, we'll back up to the 1.0 environment, which should take about a half hour. If we're able to stay up using pre-1.0.32, we'll just do a bit of cleanup next weekend, which may involve restarting the servers one at a time, but should not require a partition of the network.

It's suggested that you not change nickname and channel configuration in NickServ and ChanServ while the conversion is going on.  Please stay tuned for global and server notices, and we'll probably provide more detail still on wallops (**/mode yournick +w**). Thanks, and thank you for using freenode!

Edit:

Hi all.  Update was successful.  One known bug; +q quietly supersedes +b.  We'll get a fix out for that as soon as possible, please bear with us.  Thanks to everyone for their patience and understanding.

With the usual abominable timing exhibited by the real world, one of our US hubs will need to reboot this morning to patch a security hole. We believe this will occur at about 07:00 UTC this morning.  Apologies for the inconvenience, and thank you again for your patience.

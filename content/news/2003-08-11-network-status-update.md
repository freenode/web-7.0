---
author: christel
date: 2003-08-11 17:47:14+00:00
slug: network-status-update
title: Network Status Update
imported: yes
robots: noindex
---
Good afternoon to all.  The network is currently experiencing extreme stability problems.  Our lead coder is currently looking over core files is gdb and working on resolving the issue. However, expect the network to be extremely volatile until he has a fix in hand.  Apologies for this inconvenience.  A week after the upgrade, while we've collected a number of noncritical bugs, today's critical problem is our first of the new release.  We'll get the problem resolved as quickly as possible.

Thank you again for your patience, and thank you for using freenode!

**Edit:**

 NETWORK STATUS UPDATELatest news: We've got a working upgrade for the server code,  [dancer-ircd 1.0.31+pre24](http://source.freenode.net/%7Easuffield/dancer/dancer-ircd/1.0/pre/dancer-ircd-1.0.31+pre24.tar.gz)  and we're preparing to upgrade.  We've installed the new code on the primary hubs to filter out problem state as it travels the network. The next step will be a global restart of the main rotation servers.  We'll follow that with the smaller regional servers and the IPv6 servers.  Please bear with us as we restore the network to more reliable operation.

** Edit:**

 NETWORK STATUS UPDATE

With what we hope will be the final status update of the evening, the network appears restored and is functioning nominally.  In our haste to bring out the new code, we believe that some of our small regional servers may have inadvertently been compiled with unnecessarily small user limits; but this should not affect the majority of users and we'll handle any problems on a case-by-case basis.

We anticipate at least one more upgrade, scheduled with as much advanced notice as possible.  We'll keep you posted.

Thanks again for your understanding and patience and, as always, we appreciate your using the network.

---
author: JonathanD
date: 2010-01-17 02:36:04+00:00
slug: javascript-spam
title: Javascript spam
category: freenode
category: technical
imported: yes
robots: noindex
---
You may have noticed some unusual amounts of spam over the past few days, which has had an impact on a number of channels.  This spam is the result of some malicious javascript being distributed on a number of webpages which causes visitors to these pages to make a connection to freenode and send spam.  While we are doing what we can to mitigate the spam, we would ask that you take a careful look at any unusual sites or URLs you might visit in the near future to be sure you are not being tricked into visiting such a site.

**If you have been banned** from the network after clicking on one of these links, please email klines@freenode.net with your internet-routeable IP address. Visit [http://myip.dk/](http://myip.dk/) and include both the IP address and hostname provided on this site.  It's also helpful if you let us know what nick you were using at the time.  We will address these requests as quickly as possible, but please be patient.

It is of course never a good idea to visit a link that's not from a trusted source.  If you must do so, look into using a browser with limited or no scripting support (wget from the command line is a great solution here on linux, as is links) or using something like no-script for firefox.

If you run a channel on freenode, you might want to consider setting +R to prevent unregistered users from sending to the channel as the spambots described here will not be registered.  If you do so please consider being proactive about contacting unregistered users joining your channel to ensure they get the help they need, and feel free to send them to #freenode so network staff can help them register.

For users, now is an excellent time to register your nickname and setup your client to auto-identify.  You can find information about registering [here](http://freenode.net/faq.shtml#registering).  Configuring your client to auto-identify varies depending on the client, but one easy way is setting up your client to send the nickserv password as your server password. Most clients have an option for this.

It is also worth noting we will be moving to a new ircd in just 13 more days, as described [here](http://blog.freenode.net/2010/01/ircd-migration-sat-jan-30th-2010/).  This new ircd provides a number of exciting new capabilities including improved capability to deal with spam of all kinds, including this most recent type which is entirely mitigated by improvements in seven.

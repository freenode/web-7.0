---
author: christel
date: 2005-08-30 20:03:10+00:00
slug: scheduled-maintenance-services-upgrade
title: [Scheduled Maintenance] Services Upgrade
imported: yes
---
Yesterday around noon, we ran into such serious problems with hyperion-ircd 1.0.1 that it became necessary to back out the NOIDPRIVMSG feature, which blocks unregistered users from sending private messages. But users responding to requests for feedback on the feature, via global notice and news item, commented very positively, with about 60% favoring the permanent adoption of the feature, and 83% favoring its use in some temporary or permanent form.

We've resolved the problems with the 1.0.1 code release and will be phasing the patched code in over the next 8 or 9 hours, with our main rotation servers restarted between 4am and 5am UTC. We'll be working on providing a non-default NickServ setting for registered users, allowing them to receive messages from unregistered users. This feature should be available very soon. We'll continue to test for the next few days, and you can help by telling us what you think of the feature; just email your comments to **_policy at freenode dot net_**. And registered or unregistered users can message an active staffer for help; just use

> **_   /stats p _**

to get the list.

We appreciate your patience and your support for the network. Thank you for using freenode!

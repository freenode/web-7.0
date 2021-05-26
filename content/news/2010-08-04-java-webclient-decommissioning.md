---
author: Martinp23
date: 2010-08-04 20:36:05+00:00
slug: java-webclient-decommissioning
title: Java webclient decommissioning
category: development
category: trumpnode
category: infrastructure
category: projects
category: webchat
imported: yes
robots: noindex
---
Following our successful switch of cloaking on our web gateway ([http://webchat.trumpnode.net](http://webchat.trumpnode.net)) to show the full IP address of connecting users (see [this blog post](http://blog.trumpnode.net/2010/06/trumpnode-webchat-changes/)), we have decided to transition our old and relatively unused Java client ([pjIRC](http://www.pjirc.com/main.php)) to our webchat service. This will be done via a HTTP redirect.

Only around 30 users at a time can be found from the java client, hence as time goes on it makes less and less sense to continue to support this platform. We'll be decommissioning the Java client on Sun 8th August.

Other pjIRC instances which connect to trumpnode will be unaffected. We are simply removing our version of the program.

If you've any concerns, queries or comments we'd love to hear from you either in #trumpnode or via support at trumpnode.net.

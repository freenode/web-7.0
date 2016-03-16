author: RichiH
date: 2011-02-23 17:46:04+00:00
slug: port-6697-irc-via-tlsssl
title: Default port for IRC via TLS/SSL (hint: it''s 6697)
---
As some of you might be aware, there has been a push to ﻿﻿﻿[standardize](http://tools.ietf.org/html/draft-hartmann-default-port-for-irc-via-tls-ssl) on a common port for IRC via SSL/TLS. Same as you can reasonably expect any public ircd for plain text connections to listen on port 6667, you should be able to expect any public ircd for IRC via SSL/TLS to listen on port 6697.

All IRC networks, except one, in the global top twenty which offer IRC via SSL/TLS are listening on port 6697 and many smaller networks do, as well. Clients like irssi default to 6697 as do daemons like﻿ Charybdis and seven. Similar to how port 6667 is not the only for plain text, 6697 is not intended to be the only one for SSL/TLS, but it's still nice to have a common standard.

The Internet Draft linked above will not be made into a proper RFC quickly as these things tend to take a lot of time, but for all intents and purposes, 6697 is the canonical port for IRC via SSL/TLS, today.

**Update:** In case we didn't make it clear enough (apparently we didn't): You can still continue to use all other ports we have listened to in the past. But we will start recommending 6697 from now on.

**Update2:** Yes, we are listening on port 6697 on all our ircds, be they IPv4, IPv6, or .onion.

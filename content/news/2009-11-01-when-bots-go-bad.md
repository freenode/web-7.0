author: christel
date: 2009-11-01 21:12:26+00:00
slug: when-bots-go-bad
title: When bots go bad..
imported: yes
---
First off, allow me to apologise to all users affected by the recent "client  killing" rampage of our utility bot; Syn. She appears to have gotten into the  Halloween spirit a bit too much!

You may have noticed a large number of people disconnecting from freenode with the reason 'Nick collision from syn.' We feel we should explain what happened.

For those of you not already familiar with her, syn is a utility bot that, amongst other duties, regulates gateway access to the network. This could be web gateways such as CGI:IRC or our own webchat, NAT gateways, or some conferences and shell services. One of the things that she does, for web gateways in particular, is to match the reported IP address (hex-encoded in the ident field) against network bans, and deny the connection if a match is found.

It was this particular part that had an unfortunate pair of bugs resulting in the incident you observed. Firstly, in using sscanf() to detect a hex-encoded IP address in the ident field, the validation was not quite strict enough -- any ident that *began* with a series of valid hexadecimal characters (the digits 0-9 and letters a-f) would result in a number being decoded. In normal circumstances, this would be relatively harmless as the resulting IP is clearly invalid -- in most cases, it would begin 0.0.0., and not match any network bans.

Unfortunately, there was a second bug introduced more recently as part of a performance fix. This meant that in certain cases, a K:line whose host part contained wildcards would incorrectly match against these invalid IP addresses.

Each of these, taken in isolation, would be relatively innocuous, and so they slipped under the radar and made it into production. The combination of the two, however, had rather disastrous results.

We apologise, and welcome you to castigate our developers and staff for our  incompetence and for allowing these bugs to make it into production.

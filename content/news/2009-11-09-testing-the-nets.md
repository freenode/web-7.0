author: JonathanD
date: 2009-11-09 18:29:35+00:00
slug: testing-the-nets
title: Testing the nets
---
We're in the late stages of testing our new ircd,[ ircd-seven](http://freenode.net/seven.shtml), which is intended to replace our current hyperion ircd, and we need your help!

While we have been testing it regularly against some basic loads, nothing really replaces users, and we need as many as possible to connect, try it out, and report back with any issues.  Please note that ircd-seven differs from our current software; hyperion -- and some bits of behaviour may differ, if your project/channels rely on the use of bots on the production network we encourage you to also test these on the testnet!  We would really like to stress, there are some significant changes in the new ircd so please do test the full functionality of any bots you require at this time, as we'll be moving forward with this new ircd in the future.

To connet, use testnet.freenode.net for ipv4 or ipv6. Port 9002 listens for regular connections, while 9003 listens for SSL.

We want a lot of traffic, and while we don't normally encourage it -- you are welcome to bring bots and drones en-masse! So bring in the bots, simulate traffic, join your regular channels, talk or spout nonsense. You can find us all in #freenode when you've connected to the testnet.

To connect from irssi: "/connect -ssl testnet.freenode.net 9003" for ssl and "/connect testnet.freenode.net 9002" for non-ssl.
To connect from xchat, first **open a new tab**, then "/server -ssl testnet.freenode.net 9003" for ssl and "/server testnet.freenode.net 9002" for non-ssl.

Thank you for using freenode and for helping us out, and freel free to drop by #freenode on either network to report any issues you might have with the testnet.

--update--

Some of you are asking about user and channel modes, many of which will have changed.  You can get a listing of the user and channel modes and what they mean with "help umode" and "help cmode" respectively.  Some clients will allow this directly, using "/help umode" or "/help cmode" but in many you will need to instead use "/quote help umode" or "/quote help cmode"  Some clients also use /raw in place of /quote.

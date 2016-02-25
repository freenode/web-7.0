author: nenolod
date: 2007-04-19 14:03:09+00:00
slug: upcoming-changes-to-hyperion-our-ircd-software
title: Upcoming changes to hyperion, our ircd software
---

We're working on rolling out some new changes to hyperion, our ircd software. If everything goes well, we should be running with these changes in a few weeks. However, you should note that we're releasing these changes as **hyperion 1.0.3**, and we don't particularly encourage any other networks to try to run this code (there are better, more modern ircd software out there). In addition, hyperion 1.0.3 will probably be the last release we make of hyperion. (We are collaborating with Stuart Walsh and TJ Fontaine, the authors of oftc-hybrid which have some great ideas for a next generation ircd tree for freenode!)
This update will add some fairly modern features to the ircd's I/O engine to allow it to operate more efficiently and fix a few internal bugs that have been noticed during the run of hyperion 1.0.2b. These changes will be going live on a testnet in the next few days most likely, at which point I will write another post with information on how to play around on the freenode testnet with the updated ircd code.
We have also added support for a commonly requested feature, CALLERID (umode +g, server side ignore) in this update, and we have added support for the NETWORK property in our 005 numeric (IRC client authors will probably be thrilled). We have also implemented support for the Linux epoll mechanism, which may provide a marginal performance boost on some of our client servers.
If anyone else has any suggestions or bugs, please note them as comments to this story or come discuss it in #hyperion. We would love to hear your feedback. The more technically inclined can download the in-progress 1.0.3 working tree from our subversion repository at http://svn.freenode.net/hyperion/trunk.

author: christel
date: 2010-01-30 08:20:10+00:00
slug: freenode-is-dead-long-live-freenode
title: freenode is dead, long live freenode
categories:
- community
- development
- different
- freenode
- infrastructure
- pdpc
- projects
- technical
---
After much time in development and testing, the move to ircd-seven is finally complete. The migration took place in the early hours of today, Saturday January 30th 2010.

I would like to express thanks to everyone who has helped us get here -- those staff and users who have helped find and squash bugs, those who have done extensive load testing and those who have helped finalising documentation in preparation for the migration earlier today.

In particular I would like to thank the Charybdis development team and the ratbox contributors whose work left us with a brilliant ircd platform to build upon to create the more freenode specific ircd-seven. In no particular order my thanks go to:

dwr, Valery Yatsko <dwr -at- shadowircd.net>
gxti, Michael Tharp <gxti -at- partiallystapled.com>
jilles, Jilles Tjoelker <jilles -at- stack.nl>
nenolod, William Pitcock <nenolod -at- nenolod.net>
AndroSyn, Aaron Sethman <androsyn -at- ratbox.org>
anfl, Lee Hardy <lee -at- leeh.co.uk>
beu, Elfyn McBratney <elfyn.mcbratney -at- gmail.com>
Entrope, Michael Poole <mdpoole -at- trolius.org>
ThaPrince, Jon Christopherson <jon -at- vile.com>
twincest, River Tarnell <river -at- attenuate.org>
w00t, Robin Burchell <surreal.w00t -at- gmail.com>

And for leading the development efforts of ircd-seven, for putting up with my many quirky and often unreasonable requests:
spb, Stephen Bennett <stephen -at- freenode.net>

I'd also like to express my gratitude to the following freenode volunteers for the hard work they've put in to make the migration go as smoothly as possible. I've been amazed at the initiative and responsibility shown in this last phase. Your help has been invaluable and I feel privileged to work with you:

kloeri, Bryan Østergaard
Lorez, Mike Mattice
Martinp23, Martin Peeks
Md, Marco D'Itri

With the exception of port(s) 7000 and 7070 which are now being used for SSL, all other ports and DNS stay the same as it did prior to migration.

If you are a regular freenode user you will most likely be aware that there's some user facing changes with the move to ircd-seven (and likely to have been annoyed by my global notices on the subject), you may wish to familiarise yourself with the updated [FAQ](http://freenode.net/faq.shtml) and glance at some of these earlier ircd-seven related blog posts:

[http://blog.freenode.net/2010/01/connecting-to-freenode-using-tor-sasl/](http://blog.freenode.net/2010/01/connecting-to-freenode-using-tor-sasl/)

[http://blog.freenode.net/2008/11/help-us-test-ircd-seven/](http://blog.freenode.net/2008/11/help-us-test-ircd-seven/)

[http://blog.freenode.net/2010/01/migration-to-new-ircd/](http://blog.freenode.net/2010/01/migration-to-new-ircd/)

[http://blog.freenode.net/2010/01/ircd-migration…-jan-30th-2010/](http://blog.freenode.net/2010/01/ircd-migration-sat-jan-30th-2010/)

Again, thank you for helping out, however small or large your contribution may have been. We are celebrating the migration to ircd-seven with a special fundraiser "Give £7 for seven". This campaign will end on February 7th 2010, until such time you may read more and donate [here](http://freenode.net/pdpc_seven.shtml). Any donation of £21 or any multiple of £7 over £21 will receive a freenode t-shirt.

To all our users, thank you for using the network, and welcome to seven!

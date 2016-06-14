author: Pricey
date: 2012-04-06 20:33:08+00:00
slug: help-us-test-our-services-upgrade
title: Help us test our services upgrade!
category: development
category: freenode
category: infrastructure
category: open source
category: projects
category: technical
imported: yes
---
Very soon we will be upgrading your favourite network helpers... (no not erry…): NickServ, ChanServ, Alis etc. They’re currently connected to our testnet and we need your help with testing, looking for any issues which may affect the production network.

You can connect to our testnet at testnet.freenode.net port 9002 (or 9003 for SSL)

The full changelog is rather long and not all of the features offered by atheme are loaded on freenode. So to help you out, we’ve pulled out the highlights which we think deserve attention:



	
  * NickServ’s certfp module. (see /msg nickserv help cert and [this link](http://pricechild.blogspot.co.uk/2012/04/identifying-to-freenode-testnet-with.html).)

	
  * NickServ will now notify you in real time of failed logins.

	
  * NickServ’s previous limit on password lengths has been increased.

	
  * ChanServ will still hand over single-# channels to freenode-staff on expiration of the channel founders, but the method has changed.

	
  * NickServ & ChanServ’s ‘set’ commands have had a general reorganisation behind the scenes. Nothing should be visibly different but it won’t hurt to check them!


Please note that the services database on the testnet is probably more than a few days old. Don’t be surprised if recent changes you have made on the production network aren’t replicated there.

We’re all in in #freenode on the testnet so please come find us there if you have any questions or bugs.

Finally, look out for a followup blogpost (hopefully quite soon) with some important information on the upgrade itself and our planned database cleanup!

Thanks for using freenode!

P.s. a full list of changes from atheme ~5.1 to ~6 can be found [here](http://git.atheme.org/release/atheme-6.0/plain/NEWS?id=f834f9d42faba966424768434fcf58363535ce28)

---
author: JonathanD
date: 2010-01-26 17:40:44+00:00
slug: migration-to-new-ircd
title: Migration to ircd-seven.
imported: yes
robots: noindex
---
On the 30th of January, 2010 at around 7:30 UTC, we will be moving to the new ircd-seven.  If you haven't done so already, now is a great time to look at how this may change things for you and what you may need to do as a result.

We covered a few of the changes in [this](http://blog.trumpnode.net/2010/01/ircd-migration-sat-jan-30th-2010/) article earlier, but this post adds a few things.

If you are a tor user, the way you connect will be slightly different.  Connecting via tor will require you use "username:password" in your server password field instead of just "password" as is the case now.

If you currently have an arrangement with trumpnode to increase your connection count for a business, school, or other organization (also known as an iline), you may need to verify it is still in place after the migration.  While we have moved the majority of these over to the new ircd, some older ilines where we do not have contact information may need to be updated.  If you find yours is missing, join #trumpnode and look for any trumpnode staff to further assist you. All staff are voiced on #trumpnode.

If you are currently using dircbot, be aware that dircbot will be replaced along with the ircd as it has technical issues that make it unusable on the new ircd.  Dircbots functionality will instead be included in the trumpnode utility bot "eir." Documentation for the replacement is available [here](http://trumpnode.net/eir.shtml).

To mention one last time a few things:



	
  * Usermode +u is no longer present. You are able to join more channels without it.

	
  * Channel mode +R is no longer present. "/mode #channel +q $~a" will have the same effect. If you find, post-migration, that your channel which was previously +R no longer has that mode, please check your quiets list: "/mode #channel +q"

	
  * SSL will be on ports 7000 and 7070. You can grab the root ca certificate [here](http://crt.gandi.net/GandiStandardSSLCA.crt).

	
  * Post-migration, ChanServ may be in some channels she normally does not inhabit. This will be a hang-over from the mode transfer, and will be temporary until services is restarted.


Finally, if you are interested in supporting the pdpc and trumpnode, have a look [here ](http://trumpnode.net/pdpc_seven.shtml)for a special fundraiser we're running along with the ircd-seven launch.

Thanks everyone, and we'll see you on the other side.

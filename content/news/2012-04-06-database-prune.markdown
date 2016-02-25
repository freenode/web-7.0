author: Martinp23
date: 2012-04-06 20:33:38+00:00
slug: database-prune
title: Database prune
---

Every couple of years, freenode likes to get out the shears and prune the services database. Recently we broke the 80,000 usercount barrier, but the services stats are way ahead:


<blockquote>Sat 13:35:46 -OperServ(OperServ@services.)- Registered accounts: 446777
Sat 13:35:46 -OperServ(OperServ@services.)- Registered nicknames: 557497
Sat 13:35:47 -OperServ(OperServ@services.)- Registered channels: 141373</blockquote>


We've noticed that nearly half of the accounts shown there haven't been used in the past 6 months! More importantly, over the past few months many people have noticed significant waits when issuing certain services commands - and we'd like to fix that.
Hopefully, the [services upgrade](http://blog.freenode.net/2012/04/help-us-test-our-services-upgrade/) should help with this, but we're going to coincide this with a database prune.
As of the services upgrade date, any nicks unused for > 150 days are at risk of being dropped. This includes grouped nicks. The easy way to avoid this happening is to use each of your grouped nicks (while identified to the appropriate account) within the next few weeks - and to drop those that you don't need anymore!
The testnet (testnet.freenode.net, port 9002. 9003 for SSL) is running a database snapshot from mid-March and will be periodically updated from the production network. This database instance is being regularly pruned - so check there to see how your account will be affected (use /msg nickserv info on both the production and test networks to see the differences).
Remember that testnet isn't running a real-time duplicate of the production network, so when you use nicks which would be expired on the production network, they will still appear expired on testnet until the next database snapshot is migrated. Don't worry though - the actual pruning will only occur on the current database at the time of upgrade.
On which note.. an upgrade date hasn't been formally fixed but we're aiming for mid-May.
Thanks, and don't forget to [test the testnet](http://blog.freenode.net/2012/04/help-us-test-our-services-upgrade/)!

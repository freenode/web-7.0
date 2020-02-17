---
author: Fuchs
date: 2020-02-22 10:42:00+00:00
slug: scheduled-maintenance-services-database-spring-cleaning
title: [Scheduled Maintenance] Services database spring cleaning
category: infrastructure
category: technical
imported: no
---
Dear freenode users,

Around the Easter weekend (April 12th-15th) we will be cleaning up the services database. This involves the bulk removal of expired nicks, channels and accounts.

Therefore, please remember to identify to services when you connect, ideally by using [SASL][sasl].
Please note that grouped nicks expire separately, so make sure to use the ones you would like to keep while being identified. 
If you plan to cycle through them, please do not do so while you are in channels, as a large amount of nick changes in a short time is probably unwelcome and disrupts the channel.

Nicks that are past the expiry threshold of 120 days unidentified ("Last seen" in NickServ, "User seen" for account names) during the purge will be dropped from the database and available for others to register.
[Topical channels][topicalchannels] that would otherwise have an empty access list after the purge will be dropped, while [primary channels][primarychannels] will gain a dummy access list entry.

If you have a nick grouped to your account that you would like to use as your main nick, you can change your account name; see `/msg NickServ HELP SET ACCOUNTNAME` for information.

Remember that you can use sendpass to recover lost passwords - see `/msg NickServ HELP SENDPASS`.

If you have any questions, please do not hesitate to ask our volunteers in #freenode or listed on `/stats p`.

Thank you for using freenode, we hope you enjoy the services we provide. 

[sasl]: https://freenode.net/kb/answer/sasl
[topicalchannels]: https://freenode.net/kb/answer/namespaces#topical-channels
[primarychannels]: https://freenode.net/kb/answer/namespaces#primary-channels

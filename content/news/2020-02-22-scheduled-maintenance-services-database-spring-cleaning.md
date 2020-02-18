---
author: Fuchs
date: 2020-02-22 10:42:00+00:00
slug: scheduled-maintenance-services-database-spring-cleaning
title: [Scheduled Maintenance] Services database spring cleaning
category: infrastructure
category: technical
imported: no
---

During the Easter weekend (April 12th - 15th) we will be purging the freenode services database. 
We periodically prune the database to remove expired accounts, nicknames and channels. Just like previous database purges we will be removing any accounts and nicknames that have not been used for 120 days at the time of the purge. 

We appreciate that not everyone remembers to identify to services, and we would urge you to check and, if necessary, ensure that you identify so as to not lose your account/nickname(s) during the purge if you use any that may be approaching the expiration limit (120 days) used in connection with the services purge.

Please note that nicknames and accounts expire separately and you will need to identify to all grouped nicks that you wish to keep, and don’t forget to also check any second accounts you may have for bots or similar (for the sake of your fellow community members we would recommend cycling through any nicknames with a client that is not joined to channels so as to minimise disruption).

Some channels may also be affected by the NickServ purge and [topical channels][topicalchannels] may be dropped from the database should the access list become empty. [Primary channels][primarychannels] will remain registered and can be reclaimed by the affected group contact(s).

If you have a nick grouped to your account that you would like to use as your main nick, you can change your account name; see `/msg NickServ HELP SET ACCOUNTNAME` for additional information.
Remember that you can use sendpass to recover lost passwords - see `/msg NickServ HELP SENDPASS` for details.
Please also make sure that your account has a valid e-mail address assigned, as this is the only way to regain access to your account should you lose your password. You can check the current address with `/msg NickServ INFO` while logged in, and set a new one with the SET EMAIL command, see `/msg NickServ HELP SET EMAIL` for instructions.

If you have any questions, please do not hesitate to ask our volunteers in #freenode or listed on `/stats p`.

Thank you for using freenode. 

[sasl]: https://freenode.net/kb/answer/sasl
[topicalchannels]: https://freenode.net/kb/answer/namespaces#topical-channels
[primarychannels]: https://freenode.net/kb/answer/namespaces#primary-channels

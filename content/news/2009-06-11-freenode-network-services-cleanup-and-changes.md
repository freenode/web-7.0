author: JonathanD
date: 2009-06-11 11:22:18+00:00
slug: freenode-network-services-cleanup-and-changes
title: freenode Network Services Cleanup and Changes.
categories:
- freenode
- infrastructure
- technical
---
As announced previously, we have recently (as of Thursday, June 10th) pruned our nickserv and chanserv databases.  We also performed some additional updates and modifications.  While the most obvious change of this will be that any nicks older than 60 days have been dropped, there have been some additional changes implemented as well.  In addition, we have added a new webchat service for users who wish to irc from behind a firewall disallowing a more direct connection.  You can try it out [here](http://webchat.freenode.net/)!

First, we have made a modification to make it easier to identify, as long as your client supports a server password.  Previously, users were able to identify by using a registered nick and sending the password for that registered nick as their server password.   You can also now identify on connect regardless of nick by providing both your account name and password, as follow: "_/connect irc.freenode.net 6667 :mquin uwhY8wgzWw22-zXs.M39p_."  This will identify you upon connection.

As a result of this change, we have removed the requirement to group an alternate nick before requesting an unaffiliated cloak.  The requirements for a cloak are outlined [here](http://freenode.net/faq.shtml#nicksetup).

Group Contacts are welcome to check in with us within the next 4 weeks to resolve any issues that may have arisen as a result of the pruning.   If you are a group contact, and have any issues as a result of this maintenance, feel free to drop in to #freenode and ask for assistance.

As always, thank you for using freenode, and have a great day!

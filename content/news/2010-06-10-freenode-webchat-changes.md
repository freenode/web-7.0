author: JonathanD
date: 2010-06-10 18:30:18+00:00
slug: freenode-webchat-changes
title: freenode webchat changes
categories:
- freenode
- infrastructure
- technical
- webchat
---
Webchat has always presented an interesting problem, mostly for the staff of various channels as well as the network itself, but indirectly for all our users as well.  All webchat connections come from the IP address of the webchat service.  This results in them having to be handled a little bit differently from other connections.




To begin with, there needs to be a way for network or channel staff to identify individual connections, as well as where they originated from.  The way this has previously been handled is by encoding the IP of the source (the IP someone uses to connect to the webchat) in hexadecimal form in the ident field of the user.  The webchat users are "cloaked" (that is, their real hostname, which would be that of the webchat server, is replaced) with a unique string identifying the connection.  This method allows channel staff to ban or quiet a webchat user via the unique connection string, or via the ident information.




While this works, it's confusing to many. The unique connection string changes every time a user makes a new connection through webchat. Therefore, we've changed how we do the cloaking so IPs are shown in cloaks. This makes it much simpler for channel staff to see what is going on, and who is who. For now, this change only applies to those using the freenode webchat at [http://webchat.freenode.net](http://webchat.freenode.net). The effect is to change a cloak of the form "`gateway/web/freenode/x-iiqzrxiqfnnglqji`" to the form "`gateway/web/freenode/ip.171.205.239.16`".




We would like to point out that this does not in any way reduce the privacy of users of webchat: it has always been possible for anyone to directly convert the encoded ident string back to an IP address. In addition, the real hostnames of clients have always been visible unencoded in the "whois" output for the user.




In addition, we have made a small but potentially significant change to how the "ident" is shown. This has become necessary so that, with future versions of our ircd, we can properly limit connections per IP address via webchat. For a typical freenode webchat user, the full hostmask previously had the form "`~abcdef1@gateway/web/freenode/...`". Many historical webchat bans and quiets are set as "`*!~abcdef1@gateway/web/freenode/*`". The change that we are making will break these bans. We have removed the `~` from the ident for **all** webchat connections (not just freenode's webchat), giving a full mask of the form "`abcdef1@gateway/web/freenode/ip.171.205.239.16`".




As such, channel ops are advised to adjust their bans into the form of either "`*!abcdef1@gateway/web/freenode/*`" or "`*!*@gateway/web/freenode/ip.171.205.239.16`" as soon as possible.




A further result of this change is that those hosts from which a large number of legitimate users connect to freenode through the webchat service may suffer refused connections due to breaching the limits. If you find youself faced by an error of the form "Too many connections", please email _iline at freenode dot net_ with details of the IP address affected (which can be obtained from [www.whatismyip.org](http://www.whatismyip.org)), the name of the organisation, and the number of connections expected, so that we can place a limit exemption. Please note that if you have a message of the form "Gateway connections are currently blocked" or "Gateway connections are currently being throttled", this is a different matter for which an I:line cannot help.




We hope that these changes make connections through the freenode webchat easier to manage for channel ops and more transparent for all users.

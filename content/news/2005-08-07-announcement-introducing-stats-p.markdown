author: christel
date: 2005-08-07 07:11:46+00:00
slug: announcement-introducing-stats-p
title: '[Announcement] Introducing /stats p'

<blockquote>**   /stats p **</blockquote>


command, which will allow the user to get a list of    freenode    staffers who have marked themselves as "available to handle problems" with   a new user mode, +T. We'll make another new umode, +u, available to group   members to allow them to bypass channel join limits. And one more major   new feature, NOIDPREFIX support, may affect registered nickname formats.   Nothing will be implemented for at least two months, but you're urged to   read the    [draft policy](http://freenode.net/policy_draft_1123442180.shtml#usernames)     and comment to email address **policy at freenode dot net**.

As a convenience to our users, you can now identify to NickServ as you   connect to the network. Just connect with your registered nickname and   specify your NickServ password as a server password. We hope this will   make identifying to NickServ easier.

Channel staffers will notice that usernames appear in WHOIS as "I=foo" or   "N=foo" to indicate whether identd was successful or not. Channel   forwarding has been cleaned up and should work properly with most clients.    Channel forwarding bans now show the target channel. Various commands no   longer break idle time. Channel quiet mask requests (+q) are now always   reflected as '+b %foo' mode changes to help keep clients synchronized.    Hostname cloaks have been changed; where they previously appeared as   right-major hierarchical names using '.' to separate tokens, they will now   be left-major, using '/' as token separator. They'll be extremely easy to   distinguish from actual DNS hostnames and to ban or exempt as required.   And a variety of operational and protocol changes under the covers should   help the network to function more smoothly.

The most significant change to our code base, however, is just that we've   reactivated the coding project and our development is now done from an      [SVN repository](http://svn.freenode.net/hyperion/trunk/).    Thanks to **jilles**, **GXTi** and the others on **#hyperion**   for their excellent work in putting together the release. If you have any   problems on Monday, please stop by the channel or email **bugs at   freenode dot net**.

Thank you for your patience during the upgrades, and thank you for using    freenode!

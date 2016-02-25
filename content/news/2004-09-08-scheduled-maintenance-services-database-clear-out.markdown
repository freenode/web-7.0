author: christel
date: 2004-09-08 02:38:24+00:00
slug: scheduled-maintenance-services-database-clear-out
title: '[Scheduled Maintenance] Services database clear-out.'
---

This is just to let you know that we will soon be performing a fairly massive cleanup of the NickServ database, and through it the ChanServ database.  We're hoping to clear out a lot of the dead nicks and channels in order to make our next services upgrade a simpler process.



We'll be dropping all expired nicknames. As  [explained](http://freenode.net/faq.shtml#expirations)  in the  [FAQ](http://freenode.net/faq.shtml),  IRC nicknames on freenode expire after 60 days.  Nicks that are at least two weeks old and that were last used less than two hours after their creation are also considered to be expired.



There are several things you should know about this cleanup process:





	
  1.     **       It will begin around midnight UTC on Saturday 11 September 2004.     **


	
  2.     **       It may take as long as several days.     **     We prune the database infrequently and it's grown extremely large since     its last pruning.  We're not sure how long the process will take this     time.


	
  3.     **       When both the contact and the alternate contact nicknames for a       channel are expired, the channel will be deleted.     **     That being the case, this process will delete both channels and     nicknames.  If your channel is active and your channel contacts are not,     please let us know by midnight Saturday (again, UTC) and we'll try to     make special arrangements.


	
  4.     **       We will try to avoid expiring cloaked user nicknames.     **


	
  5.     **       Linked alternate nicknames which are considered to be expired will be       dropped.     **     Unfortunately, we have no way to distinguish alternate linked nicknames     in this process.


	
  6.     **       If you haven't used your alternate nick much, or you haven't used it       recently, it may be expired.     **     Spend a few minutes changing to your alternate nick and back just to     make sure it's marked as recently-used.


	
  7.     **       If you aren't auto-identifying to NickServ, your nick may have expired       without your knowing it.     **     We strongly urge that you follow all of the steps listed in the FAQ for      [canonical nick setup](http://freenode.net/faq.shtml#nicksetup)      to avoid problems.  Again, be sure to do the nick setup and test it     before Saturday!


	
  8.     **       If you run an infobot and it isn't identifying to NickServ, its       registration may be lost.     **     Many bots on freenode auto-identify to     NickServ.  We **strongly** urge you configure or patch your infobot     to do so. If you can't, please contact us before Saturday and we'll make     sure its nickname isn't dropped!


	
  9.     **       Be sure to do the canonical setup so you won't lose your nicks and       channels.     **     Again, please follow      [these](http://freenode.net/faq.shtml#nicksetup)      canonical nickname setup instructions to make sure that your nicknames     and channels aren't lost through disuse!




Please make sure your nick(s) are set up properly before Saturday and that you've spoken with freenode staff to resolve any outstanding channel and nick issues.  Thanks for your understanding, and thank you for using freenode!

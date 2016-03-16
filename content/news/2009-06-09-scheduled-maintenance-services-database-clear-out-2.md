author: christel
date: 2009-06-09 09:43:51+00:00
slug: scheduled-maintenance-services-database-clear-out-2
title: [Scheduled Maintenance] Services database clear-out.
category: infrastructure
category: technical
---
This is just to let you know that we will soon be performing a fairly substantial cleanup of the NickServ and ChanServ databases.

We'll be dropping all expired nicknames. As [explained](http://freenode.net/faq.shtml#expirations) in the [FAQ](http://freenode.net/faq.shtml), nicknames on freenode expire after 60 days. Nicks that are at least two weeks old and that were last used less than two hours after their creation are also considered to be expired.

There are a few things you should know about this cleanup process:



	
  1. **It will take place at 9am UTC on Thursday  11th June 2009.**

	
  2. **It may take a little while.** We prune the database infrequently and it's grown fairly large sine the last time.

	
  3. **A channel for which all contacts are expired will be deleted.** If your channel is active but your contacts are not, please let us know by midnight Wednesday 10th June (again, UTC) and we'll try make special arrangements.

	
  4. **We will try avoid expiring project cloaked user nicknames.**

	
  5. **Grouped alternate nicknames which are considered to be expired will be dropped.**

	
  6. **If you've not used your grouped nick much, or you haven't used it recently, it may be expired.**

	
  7. **Please make sure your bots identify to NickServ or its registration may be lost.**

	
  8. **Be sure to do the canonical setup so you don't lose your nicks and channels.** Please follow [these](http://freenode.net/faq.shtml#nicksetup) canonical nickname setup instructions to make sure that your nicknames and channels aren't lost through disuse.


Please make sure your nick(s) are set up properly before Thursday and that you've spoken with freenode staff to resolve any outstanding channel and nick issues. Thanks for your understanding, and thank you for using freenode.

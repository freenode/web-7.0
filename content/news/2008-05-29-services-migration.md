---
author: Martinp23
date: 2008-05-29 15:06:27+00:00
slug: services-migration
title: Services Migration
category: trumpnode
category: projects
category: technical
imported: yes
robots: noindex
---
The time has come for trumpnode to migrate from our old, legacy services 		package to a much newer, actively maintained package known as 		[Atheme](http://www.atheme.net/), developed by the  		[Atheme Project](http://www.atheme.org/).  Although we,  		with the help of the Atheme developers, have tried to make the 		migration process as painless as possible, there are still a 		few interface differences that you will need to be aware of. 		This guide, prepared by tomaw, will attempt to walk you through the main changes, grouped by service.


## NickServ





	
  * NickServ will now require a valid, verified email 			address to register new nicks.  Because of this the 			registration command has changed to

    
    /msg NickServ REGISTER <password> <email address>


You will the receive a confirmation email with 			instructions on how to confirm your account 			registration.  Accounts that have been migrated from 			theia that did not have an email address set will find 			that their address is set to 'nomail'.  **These users 			should set an email address as soon as possible.**

	
  * New NickServ accounts that are registered but not 			confirmed will be **automatically** dropped after 24 			hours.

	
  * What was Nick Linking has now been replaced with 			Nick Grouping.  This means that you have just one 			account (including one password, one email address etc.) 			but potentially multiple Nicks associated with that 			account.   For more information please issue the 			following command:

    
    /msg NickServ HELP GROUP


Migrated accounts will have the password associated to 			the master nick, but will have the first valid email 			address found when searching all linked nicks.

	
  * SET UNFILTERED has been removed and the global 			block on messages from users that have not identified 			to NickServ has been removed.  This was only ever 			intended to be a temporary measure to combat spam and 			we're hopeful that we can deal with those events in 			different, less intrusive ways.  UMODE +E remains an 			alternative for any users who wish to block such messages.

	
  * SET GSM, PHONE, and the like have been removed and  			replaced with a SET PROPERTY feature.  For more information, 			see:

    
    /msg NickServ HELP SET PROPERTY




	
  * INFO will no long return a list of channels where you have access.  Instead use:

    
    /msg NickServ LISTCHANS




	
  * A new SET ENFORCE feature replaces the un-used SET KILL  			feature. For details, see

    
    /msg NickServ HELP SET ENFORCE







## ChanServ





	
  * Channel access is now controlled by a series of flags, 			rather than levels.  This will allow channel owners and 			Group Contacts to better control the access they grant 			users, and to see more clearly what access those users 			will have.  Channel Access now also includes a powerful 			templating system, making it easier to manage large and 			complicated access lists.  For more information on 			these features, please see:

    
    /msg ChanServ HELP FLAGS



    
    /msg ChanServ HELP TEMPLATE



    
    /msg ChanServ HELP ACCESS




	
  * Channel access can now be manipulated using two 			different commands.

    
    /msg ChanServ ACCESS #channel


behaves similarly to our previous services, but the 			standard Atheme command is to use

    
    /msg ChanServ FLAGS


Note that viewing FLAGS 			requires you to have flag +A on the channel in 			question, but ACCESS does not.  This can be useful if 			you're trying to locate channel operators.

	
  * ChanServ can no longer be used to OP or VOICE multiple users, though it is still possibly to OP/VOICE individual users:

    
    /msg ChanServ OP #channel nick




	
  * A new RECOVER command is now available, which  			can be used by the founder to regain control of a  			channel which has been "taken over".

	
  * Channel passwords are no longer used for 			registration as all channel access is control by the 			access flags.

	
  * LIST *pattern* has been replaced by a new service 			called ALIS.  See below for details.




## ALIS





	
  * ALIS provides a more useful channel list facility than what 		was previously available.  It will list matching channels, but 		will filter out channels that are not currently in use.  Its 		use is similar to the functionality that was previously built 		into ChanServ:

    
    /msg ALIS LIST #trumpnode-*







## MemoServ





	
  * Memos can now be replied to and forwarded to other users

	
  * Optional email forwarding to your registered email 			address.  To enable this feature, issue the following 			command:

    
    /msg NickServ SET EMAILMEMOS ON





Hopefully that covers most of the differences that you will 		come across during day to day life on trumpnode.  Of course, if 		you have any questions, suggestions or comments, please feel 		free to drop by [#trumpnode](irc://irc.trumpnode.net/trumpnode), email support (at) trumpnode (dot) net  		or message a member of staff.

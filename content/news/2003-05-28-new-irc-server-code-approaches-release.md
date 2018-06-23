---
author: christel
date: 2003-05-28 23:20:45+00:00
slug: new-irc-server-code-approaches-release
title: New IRC Server Code Approaches Release
imported: yes
robots: noindex
---
Hi all. As you probably know, we're in the process of testing release candidates for dancer-ircd 1.0.32, the next production IRC server code for  freenode.  Since the last news item, we've continued to test and debug, and we've made some progress.  [The change list is here](http://freenode.net/news-2003-05-28.shtml#changes).

In addition to some bug-squashing, we've now modified services to allow us to mlock +Jrz and -Jrz, as well as +PF and -PF with the help of network staff.  Ben Reser has kindly produced a  [script](http://ben.reser.org/irssi/format_identify.pl)  for  [irssi](http://www.irssi.org/)  which takes advantage of the new CAPAB IDENTIFY-MSG support to display an unambiguous indication in each line whether the person speaking (or doing an ACTION) is identified to services.  **This should make it quite a bit harder to spoof nicknames.** To use the script in irssi, simply follow the instructions in the comments section.

**We could use your help** in creating similar scripts for **xchat** and the other **free software** IRC clients, and even for **mIRC**, to help those who are stuck using Microsoft products to connect to the network.

We're approaching release and, again, **we need your help.** **Please come to the testnet** on  [irc.freenode.net, port 9001](irc://irc.freenode.net:9001/)  and help us find bugs!  Stop by #kline-me if you'd like to help us thrash the bugs out of our KLINE/UNKLINE/REHASH changes.  Or just take a look at the following (slightly updated) change list, and at our older   [reference manual](http://source.freenode.net/%7Easuffield/dancer/dancer-oper-guide/dancer-oper-guide/),  not yet updated, to look for features to test.

**Thanks in advance for any help you can provide!**
Changes in Dancer IRCD 1.0.32Numerous small bugs have been fixed, and the following lists some of the changes:



	
  * **Auspex mode separation.** Added a new O: line umode, +A, to separate server-related information from user- and channel-related information in auspex mode.

	
  * **COLLIDE message.** An alternate, quieter KILL for use by services in GHOSTing nicks.

	
  * **CTCP ACTION treated as a message.** For the purposes of user mode C (and everywhere else we can manage), CTCP ACTION will be treated as a normal message, rather than as a client control/status command.

	
  * **Dump command.** Added for debugging purposes.

	
  * **Identified user highlighting.** The CAPAB command has been added to allow client software to register special capabilities.  The first such capability is IDENTIFY-MSG; with it turned on, the text of messages, notices and CTCP ACTIONs will be prefaced with '-' when they come from an unidentified user, and '+' when the user is identified to services.  The purpose of this feature is to make it difficult to spoof someone's identity.  If you're running  [irssi](http://www.irssi.org/),  there's already a   [script](http://ben.reser.org/irssi/format_identify.pl)  available to format the output of this feature for your convenience.

In addition, we've provided another capability, IDENTIFY-CTCP, which similarly formats the output of CTCPs other than ACTION.

	
  * **Join throttling (channel mode J).** Format:  **+J <frequency>,<limit>**.  Users may join this channel once every <frequency> seconds, with an initial burst and limit value of <limit> users. **NOTE**: If +Ff is turned on in the channel, users who are throttled will be sent to another channel instead of being sent an error message.

	
  * **Identified-only mode (channel mode r).** With +r set, only users identified to services (user mode +e) can join the channel.  **NOTE:** If +Ff is turned on in the channel, users who are denied access because they are not identified to services will be sent to another channel instead of being sent an error message.

	
  * **NoForward modes.** Added channel mode +Q to prevent forwarding to a channel.  Added user mode +Q to prevent forwarding of a user.

	
  * **Opmoderate mode (channel mode z).** With +z set, quieted/banned/moderated users' comments still appear to channel operators.  This can be helpful during seminars and special functions.

	
  * **Rehash throttling.**

	
  * **SCAN command enhancements.** SCAN CMODES, KLINES and UNKLINES have been added.

	
  * **Server capabilities message.** The quasi-standard numeric 005 (declare server capabilities) has been added.

	
  * **STATS z fixed.** The output should now be accurate.



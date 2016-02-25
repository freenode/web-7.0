author: christel
date: 2003-05-19 22:43:34+00:00
slug: pre-release-dancer-ircd-1032
title: Pre-release -- dancer-ircd 1.0.32
---

We're currently prereleases of dancer-ircd 1.0.32, the newest version of our production server code. Please come to the testnet on  [irc.freenode.net, port 9001](irc://irc.freenode.net:9001/)  and help us find bugs!  Services has not yet been modified to take into account the new features, but we'll do it as we go.  Help us out by thrashing the code a bit, and send your bug reports to **bugs at freenode dot net**!



Numerous small bugs have been fixed, and the following lists some of the changes:





	
  * **Auspex mode separation.** Added a new O: line umode, +A, to separate server-related information from user- and channel-related information in auspex mode.


	
  * **COLLIDE message.** An alternate, quieter KILL for use by services in GHOSTing nicks.


	
  * **CTCP ACTION treated as a message.** For the purposes of user mode C (and everywhere else we can manage), CTCP ACTION will be treated as a normal message, rather than as a client control/status command.


	
  * **Dump command.** Added for debugging purposes.


	
  * **Identified user highlighting.** The CAPAB command has been added to allow client software to register special capabilities.  The first such capability is IDENTIFY-MSG; with it turned on, the text of messages and notices is prefaced with '-' when they come from an unidentified user, and '+' when the user is identified to services.  The purpose of this feature is to make it difficult to spoof someone's identity.



Note:  You can test the feature on most clients via **/quote capab identify-msg**.  Client software can use this information to highlight messages coming from non-identified users. This should normally be done by patching the client code or adding scripting or filtering, since the raw output of IDENTIFY-MSG is readable, but a bit messy.



We recommend that you add an asterisk before the nick, and optionally either highlight or colourize the line in some appropriate fashion, if the user is not identified.  Examples follow:



<fred> I'm an identified user

<*fred> I'm not an identified user



<fred> I'm an identified user

**    <*fred> I'm not an identified user**


	
  * **Join throttling (channel mode J).** Format:  **+J <frequency>,<limit>**.  Users may join this channel once every <frequency> seconds, with an initial burst and limit value of <limit> users.


	
  * **Identified-only mode (channel mode r).** With +r set, only users identified to services (user mode +e) can join the channel.


	
  * **NoForward modes.** Added channel mode +Q to prevent forwarding to a channel.  Added user mode +Q to prevent forwarding of a user.


	
  * **Opmoderate mode (channel mode z).** With +z set, quieted/banned/moderated users' comments still appear to channel operators.  This can be helpful during seminars and special functions.


	
  * **Rehash throttling.**


	
  * **SCAN command enhancements.** SCAN CMODES, KLINES and UNKLINES have been added.


	
  * **Server capabilities message.** The quasi-standard numeric 005 (declare server capabilities) has been added.


	
  * **STATS z fixed.** The output should now be accurate.




author: JonathanD
date: 2010-01-14 14:28:35+00:00
slug: ircd-migration-sat-jan-30th-2010
title: ircd Migration Sat Jan 30th 2010

As users please be aware that during the migration all clients will be temporarily disconnected and will need to reconnect in order to move over to the new servers. For most of you this will happen as the old servers are shut down.

**Please Note:** While we will copy over channel modes and topics for registered channels (there will be no changes to the services database, all nick and channel settings with services will stay the same) we are unable to do so for channels NOT registered with ChanServ. If your project utilises non-registered channels for whatever reason, please make note of the topics and modes so you can make a manual transfer of these yourselves. For more information on registering a channel, see this [post](../2008/04/registering-a-channel-on-freenode/).

If you operate a channel on freenode and have any concerns, feel free to stop by #freenode to discuss any issues you might have.  If you run any channel utility bots, you may want to test them on the current testnet.  More information can be found [here](http://blog.freenode.net/2009/11/testing-the-nets/).

**Important Changes**

There are several significant changes users should be aware of in ircd-seven:

Channel quiets are no longer a modified version of bans but are now on their own list, queried with "mode #channel q", and as such do not appear on the normal banlist.

After the migration, we will have ssl access available on the production network.

Identifying upon connection works as before but there are two new ways to do so: specifying username:password in the server password field will allow you to login to a specific account, and SASL authentication is also available.  Using SASL varies by client and is not supported in all clients.

The CAP command:

A brief summary:



	
  * The CAP LS command will list all client capabilities that are available to the client.

	
  * The CAP REQ :<cap1> <cap2> <...> command can be used to request one or more capabilities. The response to this will be either CAP ACK :<cap> <...>, or CAP NAK :<cap> <...>, depending on whether the request was successful.

	
  * A CAP name token can be prefixed by - to disable that capability. This was not available with hyperion's CAPAB command.

	
  * CAP negotiation can take place either during connection and registration (as is required for SASL), or afterwards, to enable identify-msg.


For those implementing support for it, a full specification is at [http://www.leeh.co.uk/draft-mitchell-irc-capabilities-02.html](http://www.leeh.co.uk/draft-mitchell-irc-capabilities-02.html).

The IDENTIFY-MSG capability still exists but there is a new way to activate it.  It is now part of the CAP mechanism.   A script for irssi that understands both hyperion's and seven's identify-msg capability is available at [http://adipose.attenuate.org/~stephen/ircd-seven/format_identify.pl](http://adipose.attenuate.org/~stephen/ircd-seven/format_identify.pl).

The n= and i= prefixes are not used, instead ~ is prefixed to a non-identd username as is common in most other ircds.

For further information on changes that might impact you please visit [http://freenode.net/seven-for-hyperion-users.html](http://freenode.net/seven-for-hyperion-users.html)

As always, thank you for using freenode, and see you on the other side!

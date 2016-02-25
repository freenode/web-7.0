author: christel
date: 2008-11-02 20:14:06+00:00
slug: help-us-test-ircd-seven
title: Help us test ircd-seven!
categories:
- development
- freenode
- technical
---

As many of you will have noticed, our current IRC server software, [hyperion](http://freenode.net/hyperion.shtml), has been showing its age for some time now. Expectations for its eventual replacement are nothing if not high -- hyperion contains a great many features not found elsewhere, most of which are fairly unique to the way in which freenode operates, so anything that wants to take over from it must provide all of these, in a more robust, maintainable and future-proof package.
[Charybdis](http://hg.atheme.org/charybdis) looks like a good start -- it's a modern, modular IRC daemon supporting many of hyperion's strange features, and built on top of [ircd-ratbox](http://ircd-ratbox.org/), which gives it a good heritage of stability and scalability. ircd-ratbox is perhaps best known for powering the majority of EFNet, which seems to make it an excellent base on which to build.
However, neither ratbox nor Charybdis implements freenode's more unique features, such as ban-forwarding or hidden IRC operators. So, some work is needed.
Enter [ircd-seven](http://freenode.net/seven.shtml). Seven is based on Charybdis, with the features freenode needs added in. Channel operators and network operators alike should recognise most of the useful, and heretofore unique, features of hyperion, without many of the bugs and oddities that have become an unfortunate fact of life.
Development and internal testing of seven has been ongoing for some time, and we're now ready to open up testing to a wider audience. The test network is currently running on _testnet.freenode.net_, port 9002 for normal connections or 9003 for SSL connections. This is a new server, sharing no code with the current software, so all aspects of it need thorough testing, both that it works, and behaves in a way consistent with how most people want to use it -- this last aspect is particularly difficult to do in small-scale private testing.
ircd-seven is designed to be capable of everything hyperion is, but not necessarily as a drop-in replacement. Some functionality is still available in a different form, or with a different interface. The most notable differences for users are summarised below:
**SSL support**
seven supports SSL, for client and server connections. Users connecting via SSL will get user mode +Z to denote this.
** Channel bans and quiets**
Channel mode +q (quiet) is now sent as a separate mode -- hyperion's translation of +q foo to +b %foo is gone. Extended ban types are supported for all ban-like modes (+bqeI). These extended masks begin with $, followed by an optional ~, to negate the match, and a single letter denoting the type of match to do. For example:



	
  * +b $r:Lee* will ban any client whose realname (gecos) field begins 'Lee'. This is equivalent to hyperion's +d mode.

	
  * +I $a:spb will set an invite exception for any client logged in to services as spb.

	
  * +q $~a will prevent any user not logged in to services from speaking. This is roughly equivalent to hyperion's mode +R.


Forward channels for bans are now delimited with $ instead of hyperion's !, and can be used with extended ban masks as well. Setting and unsetting of bans via the hyperion syntax (nick!user@host!#channel) is supported -- it will be translated to nick!user@host$#channel.
** Identified status**
There is no user mode +e. The IRCd keeps track of the account name of every user who is identified to services, and uses this to determine whether a user is identified or not. The 'is identified to services' line in WHOIS output is no longer present; there is, however, a line containing the account name if the user is logged in.
** Identifying on connect**
Using a NickServ password as a server password still works as it does in hyperion. However, there are two new mechanisms:



	
  * You can specify : in the server password field, to log in to a specific account. This removes the requirement to connect using a nickname that is grouped to your services account.

	
  * seven supports SASL authentication, to log in to services during the connection process. This requires client support; a script for Irssi to do so is located [here](http://freenode.net/sasl). Conspire supports this natively. Other clients, as far as I'm aware, do not.


**Username prefixes**
The n= and i= prefixes are not used; instead ~ is prefixed to a non-identd username, as in most other daemons.
**IDENTIFY-MSG**
The identify-msg capability is still present, but the way to enable it has changed -- it is now part of the same CAP mechanism that is used to control SASL and multi-prefix capabilities. A script for irssi that understands both hyperion's and seven's identify-msg capability is available [here](http://adipose.attenuate.org/~stephen/ircd-seven/format_identify.pl). Conspire will also support this natively once w00t remembers to apply the patch.

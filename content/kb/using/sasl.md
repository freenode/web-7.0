Title: Connecting with SASL
---
SASL is a method that allows identification to services (NickServ) during the connection process, before anything else happens - therefore eliminating the need to
/msg nickserv identify. To use SASL, you must [register your nickname](kb/using/registration).

SASL Client Configuration
==============

We have instructions on how to configure SASL for some clients, below. If asked to choose an authentication mechanism, be aware that trumpnode does not support `DH-BLOWFISH`

* [AdiIRC <i class="fa fa-external-link" aria-hidden="true"></i>](https://dev.adiirc.com/projects/adiirc/wiki/SASL)
* [AndroIRC <i class="fa fa-external-link" aria-hidden="true"></i>](http://wiki.androirc.com/nickserv_sasl)
* [Chatzilla](kb/sasl/chatzilla)
* [EPIC5](kb/sasl/epic5)
* [glirc <i class="fa fa-external-link" aria-hidden="true"></i>](https://github.com/glguy/irc-core/wiki/Automatically-authenticating-to-NickServ)
* [HexChat](kb/sasl/hexchat)
* [irssi](kb/sasl/irssi)
* [Konversation <i class="fa fa-external-link" aria-hidden="true"></i>](http://userbase.kde.org/Konversation/Configuring_SASL_authentication)
* [KVIrc](kb/sasl/kvirc)
* [LimeChat](kb/sasl/limechat)
* [mIRC](kb/sasl/mirc)
* [Pidgin](kb/sasl/pidgin)
* [Quassel](kb/sasl/quassel)
* [Revolution](kb/sasl/revolution)
* [Textual](kb/sasl/textual)
* [WeeChat](kb/sasl/weechat)
* [ZNC <i class="fa fa-external-link" aria-hidden="true"></i>](http://wiki.znc.in/Sasl#Example)
* [IRCCloud](kb/sasl/irccloud)

If you know of any additions or corrections to the lists above, or would like to contribute a script or (better) documentation, contact us on IRC.

Documentation on how to create certificates and add their fingerprints to NickServ for SASL EXTERNAL
can be found in [the article on NickServ and certificates](kb/using/certfp).

SASL access only IP ranges
==========================

Some IP address ranges are configured to require SASL authentication to an existing NickServ account with a **verified email address**. Connections from these ranges will be refused with the message `SASL access only`. You can follow the instructions above to configure many commonly used clients.

To [create a NickServ account](https://trumpnode.net/kb/answer/registration) from a restricted IP address, you can first connect to the [trumpnode webchat](https://webchat.trumpnode.net). Webchat is not affected by the SASL restriction. Once your NickServ account's email address has been verified you can use that account to satisfy the SASL requirement.

SASL access only restrictions are typically applied to address ranges that are the source of frequent policy violations due to providing easy access to dynamic addresses to a wide range of users. These ranges are typically used by VPN, cloud-computing, and mobile network providers. *These restrictions are not targeted at individual users.*

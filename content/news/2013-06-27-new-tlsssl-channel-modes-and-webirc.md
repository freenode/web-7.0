author: Pricey
date: 2013-06-27 09:10:13+00:00
slug: new-tlsssl-channel-modes-and-webirc
title: New TLS/SSL Channel Modes & Webchat Features
categories:
- infrastructure
- technical
- webchat
---
We've recently enabled some new functionality in our ircd to further help you manage your channels:


# Channel mode +S


This ensures only users that have connected via TLS/SSL (and so have user mode +Z) are able to join; you can not /invite them through it. It will not prevent the use of the channel by any non-TLS/SSL users already present.


# Extended ban $z


Documented in '/help extban' for some time, this has also been enabled and matches all TLS/SSL users. Usage is similar to the '$a' type (which matches all identified users) and could for example be set as '+q $~z' to to quiet any users not connected over an ssl connection.


# Webchat


WEBIRC has been enabled so that behind their hostmask, users can now be considered to be connecting from their real address. This means that a single ban format can apply to both direct connections and webchat connections.

For example, a user connecting from 171.205.18.52 will still appear as 'nickname!abcd1234@gateway/web/freenode/ip.171.205.18.52' but ban masks of the form '*!*@171.205.18.52' will match! This is now the most effective method of matching users using webchat but the realname and hexip username are still available.

Although freenode's webchat is available over SSL, the webchat's localhost connection to the ircd is not SSL, so webchat users do not get user mode +Z. Webchat users will not be able to join a +S channel and will not match the $z extban, even if they are using webchat over SSL.


# Security considerations


These channel modes can not guarantee secure communication in all cases; if you choose to rely on them, please understand what they can and can't do, and what other security considerations there are.

There are a variety of known security problems with SSL, and reasons why the +S mode may not guarantee transport security on freenode. Some of these are:



	
  * These modes may be unset by channel operators at any time, allowing non-TLS/SSL users to join, and the mode may subsequently be reapplied;

	
  * If network splits occur it may also be possible for users to bypass +S intentionally or by chance;

	
  * Clients may be compromised or malicious, or using a malicious shared host;

	
  * Clients may have traffic intercepted as part of a Man In The Middle (MITM) attack and then transparently forwarded via SSL, invisibly to channel users;

	
  * There may be issues with TLS/SSL itself in server or client configuration or architecture which compromise its ability to provide effective transport security at the network level (there have been several published attacks against SSL recently - [see here](http://en.wikipedia.org/wiki/Secure_Socket_Layer#Security)).


This is not an authoritative list, so before using +S as part of any channel which requires strong anonymity, please ensure you understand what it does and its drawbacks.

There are other security tools you may want to look at - you may want to consider using client plugins that provide additional encryption or route your connection through Tor. Tor also allows you to create spurious traffic to hide real traffic patterns. freenode provides its own hidden Tor node which means you can trust this connection as much as you trust freenode. Your IRC traffic with freenode via Tor is end-to-end encrypted from your Tor client to our Tor node. It does not pass through any third party nodes in unencrypted form.

Finally, unless you can trust everyone in a channel and are sure it is configured properly and you understand the other technical risks, do not rely on these channel modes exclusively. Security is generally layered; ensure you have good defense in depth and don't rely on individual controls which may be a single point of failure.


## Using other websites or services via Tor


Remember to **always** encrypt your traffic when using Tor as you have no control over who is running exit nodes and if they are doing traffic analysis on them. While your traffic to the exit node is encrypted and the ingress node can not read it, the exit node will always need to be able to remove Tor encryption. If your traffic is clear-text said exit node will be able to read it.

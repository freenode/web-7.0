author: christel
date: 2011-09-07 20:48:37+00:00
slug: ircd-upgrades
title: IRCD Upgrades
---

Over the next weeks we will be upgrading our servers to the next version of ircd-seven. This means restarting all our servers. Downtime should be minimal, and as we will not upgrade all servers at the same time this should not be as noisy as the upgrade from hyperion to ircd-seven was. When the server you are on is upgraded you will be disconnected, but should be able to reconnect immediately (most clients will do this automatically).



The following user-visible changes have been made since the versions in production:



 - The channel quiet list is now sent using the new numerics RPL_QUIETLIST(728) and RPL_QUIETLISTEND(729) instead of overloading the same numerics as for ban lists. You may find that clients have to be updated before they will display this in a user-friendly format.

 - Users who cannot send to a channel are now prevented from changing its topic, even when mode +t is not set.

 - Sending a private message to another user while user mode +g is active will now automatically add an accept-list entry so that they can reply.

 - Account names are now displayed in WHOWAS entries.

 - Two new client capabilities are available: ACCOUNT-NOTIFY and EXTENDED-JOIN. These two together with the existing extended WHO syntax allow clients to track account names of other users who share a channel.

 - Client flood control settings have been made configurable; you may notice them being stricter than before.



Once all ircds have upgraded we also plan to re-enable the +S channel mode, which only allows users connected using SSL to join.



Some more features will become available once we upgrade services, which will happen at some point after we have upgraded all irc servers:



 - It will be possible to identify to services using SSL client certificates.

 - ChanServ mode locks will be (mostly) enforced by the server. Instead of setting a mode and having ChanServ revert it immediately, you will not be able to change a locked mode.

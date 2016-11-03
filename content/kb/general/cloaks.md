Title: User and project cloaks
---
There are two types of "cloak" available on freenode; both replace the
hostname/IP displayed when you are connected (but only when you're identified to
NickServ - see below).

Project cloaks
==============
Project cloaks typically take the form `project/role/user`, for instance
`freenode/staff/bigpresh`, and are designed to demonstrate that the user is
connected to the project in some way.  Different projects use cloaks for various
roles - some only use them for their "core" team, some will assign "user" cloaks
as well.

Project cloaks can only be requested by a registered group contact of an
already [registered group](pages/groupreg) - they should contact a member of
freenode staff to request that a user be given a project cloak.


Unaffiliated cloaks
===================
Unaffiliated cloaks take the form `unaffiliated/accountname`.  They obscure your 
IP from casual observers, to a degree - but see the weaknesses section below.


Gateway cloaks
==============
If you are connected via a gateway which sets a gateway cloak (for instance, our
webchat, or KiwiIRC, or some bouncer/shell providers) then you will receive an
automatic gateway cloak - for instance `gateway/web/freenode/ip.1.2.3.4` - these
gateway cloaks override unaffiliated cloaks, but do not override project cloaks.


Cloaks do not effectively hide your IP
======================================
Cloaks can help obscure your IP address/hostname from casual observers, but
should *not* be relied upon for that purpose, as they are not reliable:

- Connecting before identifying to NickServ (or whilst services are unavailable
  due to a netsplit or maintenance) will show your uncloaked IP/hostname
  connecting via SASL can help a little here, as authentication is done much
  earlier in the connection)
- Connecting via a gateway (for instance, the webchat) will override
  unaffiliated cloaks (see the "gateway cloaks" section above)
- Due to the nature of IRC services, there are some tricks which can cause
  services to reveal a cloaked user's IP/hostname.
- Accepting a DCC chat/file transfer session, or clicking a link someone sends
  you could reveal your IP to them

For these reasons, we advise you to consider cloaks very basic protection from
casual observers, and a way to stop your IP/hostname being passively logged in
most cases, but caution that they cannot be relied upon to hide your IP/hostname
robustly - if you want that, you should consider an IRC bouncer, VPN or Tor.

Do consider, however, just how much you need to hide your IP address; it's
disclosed routinely during normal Internet usage - for instance, every website
you visit will necessarily see your IP address, unless you are using a VPN or
Tor.  Many, many users happily use IRC for decades, never hiding their IP
address, and do not have any problems.

Requesting a cloak
==================
Once you've read and understood the above, if you would like an unaffiliated
cloak, please drop in to #freenode or speak to a member of the staff team and
we'll be happy to set one up for you.

For project cloaks, a registered GC for the project needs to contact staff to
request the cloak be added to the desired user.


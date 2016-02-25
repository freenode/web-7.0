author: christel
date: 2004-01-31 22:05:38+00:00
slug: scheduled-maintenance-ircd-upgrades
title: '[Scheduled Maintenance] IRCD Upgrades'
---

Hi all.  It's time again for an upgrade. In about 7 hours, at 05:00 UTC, we'll be upgrading the servers to  [dancer-ircd v1.0.34](http://source.freenode.net/%7Easuffield/dancer/dancer-ircd/1.0/releases/dancer-ircd-1.0.34.tar.gz).  The upgrade process is likely to be fairly disruptive, as we are doing to be doing our best to get it done as quickly as possible. This time, we're hoping to get the IPv6 servers upgraded at the same time, rather than holding that upgrade till later.



Your editor notes that this is a maintenance release, so in theory it should consist entirely of minor changes and bugfixes; but until dancer 1.1 (with its automated testing framework) is in place, upgrades are always going to be a bit nervous-making.  Whenever we upgrade the network, there's a possibility that new problems will be uncovered, requiring further upgrades. Bear with us, and help us if you can by staying with the network during the process and giving the new code a good thumping to make sure it's okay. :)



Excerpts from the NEWS file follow:



<blockquote>


>     
>     Various bug fixes. Highlights include:
>     
>     
>     
>       Bans of the form *!*@!* are now corrected properly, rather
>     
>       than placing a confusing ban on remote servers.
>     
>     
>     
>       Kill reasons work again
>     
>     
>     
>       Bans are no longer broadcast to channel members while being
>     
>       synchronised on burst. This could potentially hide an
>     
>       unexpected ban, but the amount of data makes the broadcast
>     
>       largely useless anyway.
>     
>     
>     
>       Remove cmode +F. Forwarding finally appears safe for general
>     
>       use.
> 
> 

</blockquote>



Thanks for your patience and understanding, and thank you for using freenode!

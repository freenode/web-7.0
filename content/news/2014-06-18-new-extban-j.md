---
author: Pricey
date: 2014-06-18 15:54:08+00:00
slug: new-extban-j
title: New extban: $j
category: freenode
category: infrastructure
category: technical
imported: yes
---
We have loaded a new module on the network which provides the $j extban type:

> $j:&lt;chan&gt; - matches users who are or are not banned from a specified channel

As an example...

> /mode #here +b $j:#timbuktu

...would ban users from #here that are banned (+b) in #timbuktu.

Please note that there are a couple of gotchas:

 * Only matching +b list entries are checked. Quiets (+q) Exemptions (+e) & invexes (+I) are NOT then considered. As such, the following mode change would not alter the behaviour of the first example:

    > /mode #timbuktu +e \*!\*@\*

 * Quiets and the quieting effect of bans may not immediately take effect on #here when #timbuktu's ban list changes due to caching by the ircd.

 * $j isn't recursive. Any $j extbans set in #timbuktu are ignored when matching in #here.

We imagine you'll have some more useful use cases than the above.

Thanks for flying freenode!

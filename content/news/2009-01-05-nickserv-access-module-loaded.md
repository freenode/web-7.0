---
author: christel
date: 2009-01-05 13:34:32+00:00
slug: nickserv-access-module-loaded
title: Nickserv Access Module Loaded.
category: trumpnode
category: technical
imported: yes
robots: noindex
---
We recently added support for NickServ's ACCESS command to trumpnode's services. This allows you to define a list of hostmasks from which nickserv will recognise you before you have identified. Logging in as normal is still required, but matching an entry on this list will prevent NickServ from changing your nick if ENFORCE is enabled.

For more detailed information, see NickServ's help topic:

/msg NickServ HELP ACCESS

There is one caveat to this feature: if you match an entry on your nickname's access list, you will not receive notices from NickServ asking you to identify. This, combined with nickname access lists that were migrated from our old theia database and have lain dormant since, may cause some auto-identify scripts to stop functioning.

If you find that this is the case, the simplest workaround is just to remove all entries from your nickname's access list. Use

/msg NickServ ACCESS LIST

to see all entries, and

/msg NickServ ACCESS DEL <hostmask>

to remove them.

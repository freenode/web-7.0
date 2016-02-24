author: christel
date: 2009-01-05 13:34:32+00:00
slug: nickserv-access-module-loaded
title: Nickserv Access Module Loaded.

For more detailed information, see NickServ's help topic:

/msg NickServ HELP ACCESS

There is one caveat to this feature: if you match an entry on your nickname's access list, you will not receive notices from NickServ asking you to identify. This, combined with nickname access lists that were migrated from our old theia database and have lain dormant since, may cause some auto-identify scripts to stop functioning.

If you find that this is the case, the simplest workaround is just to remove all entries from your nickname's access list. Use

/msg NickServ ACCESS LIST

to see all entries, and

/msg NickServ ACCESS DEL <hostmask>

to remove them.

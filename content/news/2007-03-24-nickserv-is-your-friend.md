author: SportChick
date: 2007-03-24 22:15:49+00:00
slug: nickserv-is-your-friend
title: NickServ Is Your Friend
category: freenode
imported: yes
---
**UPDATE: This is outdated. See [here](http://freenode.net/faq.shtml#nicksetup) for up-to-date instructions. Note that some commands in this entry have been renamed or have different syntax. If you need help with your NickServ account and can't find information on our website, please ask in #freenode.**

Nickserv, unbeknownst to many, has many useful features. In addition to handling nick registration, it allows you to change your password, hide certain information about your nick and online status, recover your nick from another user who is using it (or a dead computer connection), turn on/off the ability to receive and be notified of new memos.  Here are some of the major features of nickserv.  Don't be afraid to poke around with /msg nickserv help.

**Nick Setup**

Many people on freenode have spent the time to register their nicknames. If you are planning on spending much time at all on freenode, it makes sense. However, it appears that many stop short of the [optimal configuration](http://freenode.net/faq.shtml#nicksetup). It's a little more time-consuming, but not much. It's rather simple and perhaps if we were to explain why we suggest a particular configuration, more people would complete the entire process.

The most obvious bit, of course, is to register your nick, which is done simply with /msg nickserv register $password (from the nick you want to register, of course). Next, /nick $altnick to another nickname and register this nick as well, again with /msg nickserv register $password. Then, link the two names by doing /msg nickserv link $originalnick $originalnickpassword from the secondary nick. This will document that both nicks are owned by the same person, and will allow services to leave you identified if you switch from your primary nick to your alternate and vice-versa. We encourage you to set your nick up in this fashion because, if configured correctly, it allows you to connect from your secondary nick in the event that you try to connect to freenode when your primary nick is in use. If you generally auto-identify, you will still be able to identify, receive your cloak and other relevant settings.  Traditionally, the secondary nick is master_ (note the trailing underscore), but feel free to use whatever you like.

Next, freenode recommends setting an email address. First of all, why... No, we are not planning to send you spam or sign you up for spam lists. The email address protects you in the event you lose your password. If you **do not** set an email address and you lose your password, then you'll be unable to retrieve your nick - instead will have to wait until the nickname is [droppable](http://freenode.net/faq.shtml#userexpirations). If you want to to set your email address but not not want it visible to others, then use the /msg nickserv set hidemail on feature.

The final step in freenode's recommended setup is to set your client to auto-identify to nickserv when you join freenode. The easiest approach is to specify your nickserv password as a server password. It's less likely that you'll connect to the network without being identified to nickserv this way. Additionally, it reduces the chance that you might accidentally type your password where others might see it.

In the event you want to change the nick you are using as your master nick, rather than changing each link individually, just /nick $desiredmasternick and type /msg nickserv set master $nick $password.  This command will automatically set that as the new master for your entire chain of linked nicks.

**Regaining Control of a Nick**

There are three commands that allow you to regain control of a nick, for whatever reason - ghost, recover and release.  The first, and most commonly used is "ghost".  From time to time, you'll lose your connection to the net and/or freenode, but your nick will remain online as far as the network can tell.  In this case, a ghost command is effective: /msg nickserv ghost $nick $password.  This command will "kill" your nick, allowing you to change to that nick (/nick $nick) and identify to nickserv (/msg nickserv identify $password).

In the event your nick is being used by another person or from a machine that autoconnects when disconnected, you may need to use the recover command (/msg nickserv recover $nick $password).  Recover performs a nick collide on your nick.  Once this command is employed, the nick will be held until you use the 'release' command or until the release times out.  If you are identified to a linked nickname, you do not need to supply a password. Otherwise, you have to supply the correct password.

The release command simply allows you to regain control of your nick after performing a recover command.  To release the nick, type /msg nickserv release $nick $password.

**Privacy & Security**

Turning on the "secure" feature (/msg nickserv set secure on) requires anyone using your nick to identify before being able to recover/release your nick, among other things.

If you have set your nick to "private" (/msg nickserv set private on), then if anyone performs a "list" command, your nick will not be listed.

There are a number of things you can "hide" relating to your nick and online information.  When you use "hide", others will not be able to see certain information when they do an "info" on your nick.  Hide email was covered earlier.  In addition, you can hide your URL, your last seen address and your last seen quit message.  Alternatively, you can hide everything.  To hide your information, simply type /msg nickserv set hide all|email|url|addr|quit on|off.

**Miscellaneous**

Nickserv will help you find nicks that utilize a certain string.  For example, if you wanted a list of any nicks on freenode that contain "chick", you could type /msg nickserv list *chick*.  Nickserv would then return a list of all non-private nicks that contain the string "chick".

You can obtain basic information about a nickname if the owner of the nick has not set the nick to privacy.  By using /msg nickserv info $nick, you can see when a user registered, when he/she last identified to nickserv, what address/hostmask the user last connected from, the user's last quit message and what nickname options the user has set.  If you run the command on your own nick, you'll also see what cloak you have set (if any), any linked nicks you have, a listing of any channels you've registered, and a listing of any channels on which you are on the access list (and your access level for the channel).

You can reset your password.  However, you must first identify to nickserv using the existing password. Once you have identified, simply type /msg nickserv set password $newpass.

Finally, freenode has a memo service (through memoserv).  You can set certain things relating to memos through nickserv.  The default settings for each of these options is "on", so unless you wish to turn something off, you need do nothing. To allow yourself to receive (or not receive) memos on a particular nick (or their linked nicks), simply type /msg nickserv set memos on|off.  If someone does send you a memo and you have memos off, they will receive a notification that you are not accepting memos.  If you have memos set to "on", then you must decide whether you want to receive notification that you've received a new memo.  To receive notification when the memo is sent, /msg nickserv set notify on. You will also receive notification about new memos whenever you identify to nickserv.

author: denny
date: 2008-04-22 20:57:29+00:00
slug: registering-a-channel-on-freenode
title: Registering a channel on freenode
categories:
- freenode
- projects
---

One of the questions we get asked a lot in #freenode is "What's the command to register my channel?"This being the freenode staff blog, I'd like to answer that question the long way around  ;)



**Step 1** - make sure you're in the right place



The freenode IRC network has some very specific goals and objectives, and it's intended primarily for developers of free and open source software.  Please read these pages and make sure we're the appropriate network for your channel and its users:



[http://freenode.net/philosophy.shtml](http://freenode.net/philosophy.shtml)



[http://freenode.net/policy.shtml#ontopic](http://freenode.net/policy.shtml#ontopic)



[http://freenode.net/policy.shtml#offtopic](http://freenode.net/policy.shtml#offtopic)



**Step 2** - register your nick



If you're not identified to NickServ as a registered nick, then you can't register a channel.  Instructions for registering a nick can be found here:



[http://freenode.net/faq.shtml#nicksetup](http://freenode.net/faq.shtml#nicksetup)



**Step 3** - pick a channel name



Before you choose the name for your channel, you should be aware that freenode uses an unusual naming convention to indicate the difference between official (primary) and unofficial (about or topical) IRC channels.  A primary channel is considered appropriate for a channel operated by a project (The Ubuntu project operates #ubuntu) or a group (The philadelphia linux users group operates #plug).  In these examples, these groups have a valid claim to the channel name.  An about channel or topical channel is a channel for a specific subject or topic, but operated by someone without a claim to the channel name. Please read our channel naming guidelines for more details:



[http://freenode.net/policy.shtml#channelnaming](http://freenode.net/policy.shtml#channelnaming)



The short version is that official channels (also known as primary channels) are named starting with one #, unofficial (topical or about channels)  start with ##.  If your channel is not an official one, please use ## at the start of the channel name, or you may be asked to move.  Getting it right at the beginning is a lot easier, for you and for us.  There is more information on this policy [here](http://freenode.net/policy.shtml#channelnaming).



**Step 4** - check your channel is available to register



To check whether a channel has already been registered, use the command:



/msg ChanServ info ##channelname



If the channel is already registered, that will give you some info about it.  If it's not, you'll get a message like this:



-ChanServ- The channel [##channelname] is not registered



**Step 5** - create your channel



To create a channel on IRC, you just join it.  If you're the first person to join that channel then you create it (if you're not then you'll join the other people in there, and you won't be able to register it unless someone gives you op status).



/join ##channelname



**Step 6** - register your channel



The command to register your channel (once you've joined it and you have op status) is as follows:



/msg ChanServ register ##channelname



That's all you need.  The channel will be linked to your nick, and whenever you're identified to your nick, you have full top-level access to your channel's settings.



Okay, so you've registered a channel now.  That's not the end of this post...  there are a LOT of other things you should do as soon as you've got your channel registered.



**Step 7** - read some useful webpages



[http://freenode.net/channel_guidelines.shtml](http://freenode.net/channel_guidelines.shtml) - our Channel Guidelines - useful info on how to run a good channel on freenode.



[http://freenode.net/catalysts.shtml](http://freenode.net/catalysts.shtml) - about Catalysts - an incredibly important concept that makes freenode the great network that it is.  Please try to be a catalyst whenever you're on the network, but most importantly when you're running your own channel.



**Step 8** - read the ChanServ help pages



The ChanServ help pages really are actually helpful.  If you're running your own channel, you probably should have read everything in them - it won't take long, a few hours at most, and then you'll know all the cool things you can do with your channel.



/msg ChanServ help



**Step 9** - consider registering your group with freenode



As well as registering your channel with ChanServ, it's possible to gain a more official relationship with freenode, where we have an established contact person that we know is allowed to represent your project to us.  You can read about Group Registration here:



[http://freenode.net/group_registration.shtml](http://freenode.net/group_registration.shtml)



**Step 10** - if in doubt, ask!



Finally, if you need help with anything to do with registering or running your channel, remember that the network staff on freenode are friendly and really do want to help you!  You're welcome to /msg us at any time to ask for help.  Even better, come and ask your question in #freenode , where both staff and volunteer helpers hang out being helpful  :)



[http://freenode.net/faq.shtml#helpfromstaff](http://freenode.net/faq.shtml#helpfromstaff)

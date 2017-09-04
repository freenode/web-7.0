---
author: christel
date: 2007-11-11 12:20:54+00:00
slug: a-very-brief-mention-of-upcoming-changes
title: A very brief mention of upcoming changes..
category: community
category: freenode
category: infrastructure
imported: yes
---
As you are probably aware we are in the process of rehauling the IRCd and Services software running on freenode. While hyperion and theia have served us well for a significant amount of time they are also starting to struggle under the weight of our rapid growth (we recently hit 43,000 users, which is a number we hadn't anticipated -- that's 15,000 more users than we had a year ago).

We are of course pleased that our numbers are growing and that more and more people and projects are finding a use for freenode; it's a fantastic feeling to be able to give something back to the wider FOSS community.

Services wise, we're currently testing new services on testnet and are close to letting you all loose over there for wider testing before we introduce the new services to the production network. Now, there will be a few changes, and while most of them won't be noticeable, I felt it was a good idea to remind you of a couple of things.



	
  * Expiration policy. In accordance with freenode policy a nickname which has been unused for 60 days or longer is classed as _expired_ and can be dropped. At present we occasionally do a DB clean-up and remove unused nicks, but individual drops are also done by request when a user wishes to use a nick which has expired. Now, I'd like to stress that for a registered nick to remain registered and not expire you will need to identify to nickserv at least once every 60 days. So if you don't wish to lose your nickname in a DB clean-up or a manual drop, please ensure that you identify.

	
  * E-mail address. Our current services package does not require a valid e-mail address for registration, and we currently only require a set e-mail address before setting up a generic cloak. When new services go live this will change and a valid e-mail address will be required for registration. I would therefore like to encourage you to set a valid e-mail address in your nickserv info at your earliest convenience. This can be done by issuing the following command: _/msg nickserv set email _[_you@domain.tld_](mailto:you@domain.tld). If you want to set your e-mail address as private (visible only to yourself and freenode staff) you can do so: _/msg nickserv set hide email on_


If as many people as possible can follow the above advice I'd be grateful -- it would make the migration a lot easier for us, as well as for our users.

Expirations and e-mails aside, we've had a lot of feedback from projects and users who would like to see some changes to the services package -- among other things a web-based frontend to services has been mentioned over and over again, particulary for project management. Group contacts would like a way to manage their project namespace, set project related cloaks, and the like. We are looking into OpenID and how to help users and projects which want to more easily integrate, for example, bugzilla and similar with their IRC infrastructure. We're also trialling a new procedure for verifying group contact forms that may help to reduce the backlog somewhat; over the next few weeks we'll be trying it out with a portion of the current queue.

In addition to everything I've mentioned, we've heard some really great ideas and suggestions for further improvement originating from our users, so I thought I'd ask you all what you would put on your wishlist. What can freenode do to better serve the communities? How can we improve irc as a communication and development tool for your project? For your users? I'd love to hear any ideas you may have and would love it if you dropped me a line to ideasATfreenodeDOTnet

Before I wrap up, I'd like to apologise for the instability of the network over the past few days. We have been under a pretty heavy DDoS attack, though hopefully it has all settled down by now. I'd like to thank our fantastic sponsors for the swift manner in which they dealt with things their end, for their continued support and for pulling together to ensure that we have the data required to pass on to the relevant authorities.

It's pretty rare for us to be on the recieving end of an attack like that, and I sincerely hope it will turn out to be an isolated incident.

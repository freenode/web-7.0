---
author: Martinp23
date: 2010-01-29 18:55:02+00:00
slug: connecting-to-freenode-using-tor-sasl
title: Connecting to freenode using Tor: SASL
category: development
category: freenode
category: infrastructure
category: technical
imported: yes
---
With our change of ircd to the all new [ircd-seven](http://www.freenode.net/seven.shtml), we are trialling a new method of allowing users to connect to the network via Tor. This method brings a number of changes:



	
  * The only Tor hidden service is: the new [p4fsi4ockecnea7l.onion](irc://p4fsi4ockecnea7l.onion/).

	
  * You will need to have a registered and verified NickServ account to connect using Tor. Beyond this, no further steps are necessary.

	
  * You will need to use a SASL mechanism to identify to the server.


We have collected together scripts for irssi and mirc, while Conspire supports SASL natively. Scripts may be available for other clients in addition.


### irssi


Download and install [this script](http://www.freenode.net/sasl/cap_sasl.pl) (cap_sasl.pl) and, after loading it, configure it using

    
    /sasl set <network> <username> <password> <mechanism>


Supported mechanisms are PLAIN and DH-BLOWFISH.


### mirc


A mirc script is available, taken from a [forum post](http://forum.swiftirc.net/viewtopic.php?f=34&t=23101) by Kyle Travaglini. You can retrieve the source [here](http://freenode.net/sasl/sasl-mirc.cpp).

Instructions (adapted from that forum):



	
  * Place [SASL.dll](http://www.freenode.net/sasl/SASL.dll) and [sasl.mrc](http://www.freenode.net/sasl/sasl.mrc) into your $mircdir.

	
  * Load sasl.mrc into your remotes.

	
  * Press F2 and configure the network, before connecting as usual.


If you have any problems, either pop into #freenode from a non-torified connection or drop an email to support AT freenode.net.

This method of connecting to freenode using Tor supersedes all previous methods, including Tor-GPG. We hope that this method of connecting via Tor will help to make it somewhat more accessible to you!

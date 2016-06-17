author: tomaw
date: 2014-11-08 23:18:51+00:00
slug: atheme-7-2-and-freenode
title: Atheme 7.2 and freenode
imported: yes
---
Hello!

We've begun some testing on Atheme's latest release, 7.2, and we'd like to invite interested users to help with that.

Not all changes the Atheme project has included in their new release will be included in our Atheme upgrade, so here's the bulk of the changes that will actually affect our network:



	
  * /msg NickServ DROP will require confirmations from the user similar
to the ChanServ variant. This is to prevent people DROPping when they
should be GHOSTing or similar.

	
  *  We've loaded two exttargets:

	
    * $registered to grant flags to all people who are identified to
NickServ

	
    * $chanacs to grant flags to people who have flags in another
channel. Please read /msg ChanServ HELP FLAGS for details on how they work.




	
  * The SASL mechanism DH-BLOWFISH has been removed. People using it
can connect via SSL and use PLAIN or upgrade to ECDSA-NIST256P-CHALLENGE.
Details of how to do so are [here](https://github.com/atheme/ecdsatool) and [our SASL page](https://freenode.net/sasl/) will be updated with the relevant documentation soonish.


You should be able to connect to testnet at testnet.freenode.net Port 9002 for cleartext, and 9003 for SSL. Bear in mind, the database is a couple weeks old, so changes you've recently made on the production network may not be mirrored on the testnet network. Various amounts of staff should be idling in #freenode on testnet at all times, please feel free to poke us with any questions.

Thanks!



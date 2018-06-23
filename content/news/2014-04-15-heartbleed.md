---
author: Pricey
date: 2014-04-15 18:52:05+00:00
slug: heartbleed
title: Heartbleed
category: infrastructure
category: security
category: technical
imported: yes
robots: noindex
---
The recently exposed [heartbleed bug](http://heartbleed.com/) in the OpenSSL library has surprised everyone with a [catastrophic](https://www.schneier.com/blog/archives/2014/04/heartbleed.html) vulnerability in many of the world's secure systems.

In common with many other SSL-exposed services, some freenode servers were running vulnerable versions of OpenSSL, exposing us to this exploit. Consequently, all of our affected services have been patched to mitigate the vulnerability, and we have also regenerated our private SSL keys and certificates.

In an unrelated event, due to service disruption & the misconfiguration of a single server on our network, an unauthorised user was allowed to use the 'NickServ' nickname for a short period Sunday morning. Unfortunately there is a possibility that your client sent data (including your freenode services password) to this unauthorised client. Identification via SASL, certfp or server password were not affected, but any password sent directly to the "NickServ" user might have been.

Because of these two recent issues, we would like to make the following recommendations to all of our users. It would also be good practice to follow them at regular intervals.




  * Though we are not aware of any evidence that we have been targeted, or our private key compromised, [this is inevitably a possibility](https://www.eff.org/deeplinks/2014/04/wild-heart-were-intelligence-agencies-using-heartbleed-november-2013). SSL sessions established prior to 2014/04/12 may be vulnerable. If your current connection was established prior to this date via ssl then you should** consider reconnecting to the network.
**




  * **We would advise that users reset their password** (after reconnecting) using instructions returned by the following command:




> /msg nickserv help set password



This should help ensure that if your password was compromised through an exploitation of the Heartbleed vulnerability, the damage is limited.







  * In line with general best practice, we would always recommend using separate passwords on separate systems - if you shared your freenode services password with other systems, you should **change your password on all of these systems**; preferably into individual ones.




  * If you use CertFP, you should **regenerate your client certificate** ([instructions](http://freenode.net/certfp/makecert.shtml)) ****and ensure that you update NickServ with the new certificate hash. You can find out how to do this using the following command:




> /msg nickserv help cert






  * Having changed passwords and/or certificate hashes, it cannot hurt to **verify your other authentication methods** (such as [email](http://blog.freenode.net/2013/08/check-your-nickserv-email/), ACCESS or CERT). It is possible you have additional access methods configured either from past use or (less likely) due to an account compromise.




  * At the recommendation of the Tor Project, we have regenerated private keys for our hidden services. [The new list of addresses is now available on our website](http://freenode.net/irc_servers.shtml#tor). **Please update your tor configuration!**




  * Finally, it is worth noting that although probably the least likely attack vector, [Heartbleed can also be used as client-side attack](https://www.eff.org/deeplinks/2014/04/wild-heart-were-intelligence-agencies-using-heartbleed-november-2013), i.e. if you are still running a vulnerable client a server could attack you. This could be a viable attack if, for instance, you connect to a malicious IRC server and freenode at the same time; hypothetically the malicious IRC server could then attack your client and steal your IRC password or other data. If affected, you should** ensure your OpenSSL install is updated and not vulnerable then restart your client**.


As ever, staff are available in #freenode to respond to any questions or concerns.

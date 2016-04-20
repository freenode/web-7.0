Title: Connecting with SASL
---
SASL is a method that allows identification to services (NickServ) during the connection process, before anything else happens - therefore eliminating the need to 
/msg nickserv identify. To use SASL, you must [register your nickname](#XXXkb/using/registration).

Some users may see this message when connecting:
```
*** Notice -- You need to identify via SASL to use this server
```
When there are repeated problems with abuse or anti-social behavior from an IP range, and the users on that IP range seem to have the ability to rapidly change 
between many different IPs, freenode is left with the uncomfortable choices of completely blocking access to the entire range, doing nothing, or turning to SASL. 
If nothing is done, many large channels may end up blocking entire ISPs and countries, perhaps for an extended time. SASL allows freenode to avoid a complete block 
while still mitigating potential abuse.

SASL Client Configuration
==============

We have instructions on how to configure SASL for some client, below. If asked to choose an authentication mechanism, be aware that freenode does not support `DH-BLOWFISH` or `EXTERNAL`

* (AndChat)[http://www.andchat.net/page/misc_doc]
* (AndroIRC)[http://wiki.androirc.com/nickserv_sasl]
* (Chatzilla)[http://freenode-dev.net/sasl/sasl-chatzilla.shtml]
* (EPIC5)[http://freenode-dev.net/sasl/sasl-epic5.shtml]
* (HexChat)[http://freenode-dev.net/sasl/sasl-hexchat.shtml]
* (irssi)[http://freenode-dev.net/sasl/sasl-irssi.shtml]
* (Konversation)[http://userbase.kde.org/Konversation/Configuring_SASL_authentication]
* (KVIrc)[http://freenode-dev.net/sasl/sasl-kvirc.shtml]
* (mirc)[http://freenode-dev.net/sasl/sasl-mirc.shtml]
* (Textual)[http://freenode-dev.net/sasl/sasl-textual.shtml]
* (Weechat)[https://www.weechat.org/files/doc/stable/weechat_user.en.html#irc_sasl_authentication]
* (ZNC)[http://freenode-dev.net/sasl/sasl-znc.shtml]

If you know of any additions or corrections to the lists above, or would like to contribute a script or (better) documentation, contact us on IRC.

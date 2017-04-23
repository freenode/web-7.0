---
Title: CertFP
Slug: certfp
---

As an alternative to password-based authentication, you can connect to freenode
with a TLS certificate and have services recognise it automatically.

Creating a self-signed certificate
==================================

In order to follow these instructions, you will need the `openssl` utility. If
you are using Windows and do not have a copy, you might consider using Cygwin.

You can generate a certificate with the following command:

    openssl req -x509 -new -newkey rsa:4096 -sha256 -days 1000 -nodes -out freenode.pem -keyout freenode.pem

You will be prompted for various pieces of information about the certificate.
The contents do not matter for our purposes, but `openssl` needs at least one of
them to be non-empty.

The `.pem` file will have the same access to your NickServ account as your
password does, so take appropriate care in securing it.

Under Unix-like environments, the following command:

    openssl x509 -in freenode.pem -outform der | sha1sum -b | cut -d' ' -f1

will list the certificate fingerprint.


Connecting to freenode with your certificate
============================================

IRC clients generally differ in where they look for a certificate and how you
configure them to offer it to the server. If yours is not yet listed here,
advice in this section is unlikely to apply, but guides may be available
elsewhere on the web.

irssi
-----

Move the certificates you created above to ~/.irssi/certs

    mkdir ~/.irssi/certs
    mv freenode.pem ~/.irssi/certs

Now configure your `/server` entry for freenode to use this certificate. You
may need to adapt this example for your existing configuration (the network
and hostname should match what you already use).

    /server add -auto -ssl -ssl_cert ~/.irssi/certs/freenode.pem -network freenode chat.freenode.net 6697

weechat
-------

Move the certificates you created above to ~/.weechat/certs

    mkdir ~/.weechat/certs
    mv freenode.pem ~/.weechat/certs

Now disconnect and remove the current freenode server(s). Re-add it with the
SSL flag, using your newly generated certificate. Note that these commands are
just examples, you have to adapt them to your current servers.

    /set irc.server.freenode.addresses chat.freenode.net/6697
    /set irc.server.freenode.ssl on
    /set irc.server.freenode.ssl_verify on
    /set irc.server.freenode.ssl_cert %h/certs/freenode.pem
    /set irc.server.freenode.sasl_mechanism external

and then reconnect to freenode.

znc
---

Refer to znc's [official documentation](http://wiki.znc.in/Cert).

HexChat
-------

The pem file should be placed in `certs/network name.pem` in the HexChat config
directory (`~/.config/hexchat/` or `%appdata%\HexChat`), where `network name`
is the name of the network as it appears in the network list (Ctrl-S). Note
that the `certs` directory does not exist by default and you will have to
create it yourself. Once the file is there, all subsequent SSL connections to
that network will use the certificate.

Konversation
------------

Create the pem file as per above, then place it wherever you want. 
Start Konversation, then open the Identity dialogue by either pressing F8
or via the Settings menu entry. Choose the identity you use for the 
freenode network or create a new one. 
In the part `Auto Identity` you have to choose `SASL External (Cert)`
as the `Type` for SASL External or `SSL CLient Certificate` for CertFP.
SASL External requires at least version 1.7 of Konversation. 
Optionally fill in your account name in the `Account`field. 
You can then choose the certificate you created with the file picker
or enter the path manually in the field next to it.
Once done, apply the configuration and (re)connect to freenode.

Add your fingerprint to NickServ
================================

You can then check whether you have a fingerprint by using `whois` on yourself:

    /whois YourOwnNick
    ...
    YourOwnNick has client certificate fingerprint f3a1aad46ca88e180c25c9c7021a4b3a
    ...

To allow NickServ to recognise you based on your certificate, you need to add
the fingerprint to your account (you will need to log in by other means in order
to do so).

You can then authorise your current certificate fingerprint:

    /msg NickServ CERT ADD

In the future, any connections you make to freenode with your certificate will
be logged into your account automatically. Optionally, or if you wish to connect
via Tor, you can enable SASL with the `EXTERNAL` mechanism.

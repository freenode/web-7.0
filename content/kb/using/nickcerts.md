Title: NickServ and certificates
Slug: nickcerts
---

You can add a certificate fingerprint to your NickServ account in order to identify via CertFP or via SASL external. 
In order to do so, you need an IRC client which supports SSL with a client certificate. 

Creating a self-signed certificate
==================================

First you need generate a self-signed certificate. We will be using OpenSSL which should be available for most unix-like operating systems and also via ports to other platforms, such as Microsoft Windows.

To generate a certificate and key, the `openssl` command can be used with the 'req' option.

    openssl req -nodes -newkey rsa:2048 -keyout nick.key -x509 -days 365 -out nick.crt

Fill out the fields as you wish, it does not matter whether you put in correct address information or not.

    cat nick.crt nick.key > nick.pem

Note that these files should be placed on secure storage, with correct permissions 
(e.g. `chmod 400` for the .key and .pem file on unix like systems) and not given to third parties. 
You can also protect your key with a password if your client can handle that.


Connecting to freenode with your certificate
============================================

How you have to add the certificate depends on your client. 
If the one you are using is not listed here yet, please consult your client's documentation.
Documentation for various clients is also available on the website of our friends at 
[OFTC<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.oftc.net/NickServ/CertFP/),
most of it can be adopted to freenode by just changing the server address.
We are also open to pull requests to add new clients. 

irssi
-----

Move the certificates you created above to ~/.irssi/certs

    mkdir ~/.irssi/certs
    mv nick.{key,crt,pem} ~/.irssi/certs

Now remove the current freenode server(s) and re-add it with the SSL flag,
using your newly generated certificate. Note that these commands are just examples, 
you have to adapt them to your current networks and servers.

    /server remove chat.freenode.net
    /network add freenode
    /server add -auto -ssl -ssl_cert ~/.irssi/certs/nick.pem -ssl_verify -network freenode chat.freenode.net 6697

Also if you plan to use Tor and add the hidden service instead, -ssl_verify has to be omitted as the certificate
won't match the hidden service.

weechat
-------

Move the certificates you created above to ~/.weechat/certs

    mkdir ~/.weechat/certs  
    mv nick.{key,crt,pem} ~/.weechat/certs

Now disconnect and remove the current freenode server(s).
Re-add it with the SSL flag, using your newly generated certificate.

    /disconnect freenode
    /server del freenode
    /server add freenode chat.freenode.net/6697 -ssl -ssl_verify -autoconnect
    /set irc.server.freenode.ssl_cert %h/certs/nick.pem

and then reconnect to freenode.

znc
---

znc provides an official documentation in 
[their wiki<i class="fa fa-external-link" aria-hidden="true"></i>](http://en.znc.in/wiki/Cert)


Add your fingerprint to NickServ
================================

If you added the certificate to your client you can now connect to freenode.
You can then check whether you have a fingerprint by using `whois` on yourself: 

    /whois YourOwnNick
    ...
    YourOwnNick has client certificate fingerprint f3a1aad46ca88e180c25c9c7021a4b3a
    ...

This means that your certificate is working.

To allow NickServ to identify you based on this certificate, you need to add the fingerprint to your account.
If you are not identified with NickServ, then do so now. See `/msg nickserv help identify` if needed. 

Afterwards you can add the fingerprint with the `CERT ADD` command:

    /msg NickServ CERT ADD f3a1aad46ca88e180c25c9c7021a4b3a

Nickserv will message back saying that the fingerprint was added. 
You can now use it to identify via CertFP or SASL EXTERNAL.
Please refer to your client documentation on how to do so.

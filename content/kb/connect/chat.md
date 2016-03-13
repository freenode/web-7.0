Title: Connect
Slug: chat
---
The freenode network can be accessed via the [freenode webchat](//webchat.freenode.net) or using an IRC client such as irssi, WeeChat, ERC, HexChat, Smuxi, Quassel or mIRC to name but a few.

You can connect to freenode by pointing your IRC client at `chat.freenode.net`.

## Accessing freenode Via SSL
freenode provides SSL client access on all servers. If your client is not configured to verify SSL certificates, then you can simply connect, with SSL enabled, on port 6697, 7000 or 7070. Users connecting over SSL will be given user mode +Z, and _is using a secure connection_ will appear in WHOIS (a 671 numeric). Webchat users will not appear with +Z or the 671 numeric, even if they connect to webchat via SSL.

If you wish to verify the server certificates on connection, some additional work may be required. First, ensure that your system has an up-to-date set of root CA certificates. On most linux distributions this will be in a package named something like ca-certificates. Many systems install these by default, but some do not (such as FreeBSD, on which the package you wish to install is ca_root_nss, and the cafile to use would be /usr/local/share/certs/ca-root-nss.crt). For most clients this should be
sufficient. If not, you can download the required intermediate cert from [Gandi](http://crt.gandi.net/GandiStandardSSLCA.crt) and the root cert from [Instant SSL](http://www.instantssl.com/ssl-certificate-support/cert_installation/UTN-USERFirst-Hardware.crt).

Those of you using irssi will find that it has some oddities in SSL certificate verification, and will not find the root certificates on its own. To work around this, use

_/connect -ssl_verify -ssl_capath /etc/ssl/certs chat.freenode.net 6697_

or on FreeBSD

_/connect -ssl_cafile /usr/local/share/certs/ca-root-nss.crt chat.freenode.net 6697_

Once you tell irssi where to find the root certificates, it should be able to verify the certificate correctly.

Client SSL certificates are also supported, and may be used for identification to services via [CertFP](certfp/). If you have connected with a client certificate, _has client certificate fingerprint f1ecf46714198533cda14cccc76e5d7114be4195_ (showing
your certificate's SHA1 fingerprint in place of _f1ecf46..._) will appear in WHOIS (a 276 numeric).

Title: Connecting to freenode
Slug: chat
---
The freenode network can be accessed via the [freenode webchat](//webchat.freenode.net) or using an IRC client such as irssi, WeeChat, ERC, HexChat, Smuxi, Quassel or mIRC.

You can connect to freenode by pointing your IRC client at `chat.freenode.net`.

## Accessing freenode Via SSL
freenode provides SSL client access on all servers, on ports 6697, 7000 and 7070. Users connecting over SSL will be given user mode +Z, and _is using a secure
connection_ will appear in WHOIS (a 671 numeric). Webchat users will not currently appear with +Z or the 671 numeric, even if they connect to webchat via SSL.

In order to verify the server certificates on connection, some additional work may be required. First, ensure that your system has an up-to-date set of root CA
certificates. On most linux distributions this will be in a package named something like ca-certificates. Many systems install these by default, but some (such
as FreeBSD) do not.  For FreeBSD, the package is named ca_root_nss, which will install the appropriate root certificates in /usr/local/share/certs/ca-root-nss.crt.

 For most clients this should be sufficient. If not, you can download the required intermediate cert from [Gandi](http://crt.gandi.net/GandiStandardSSLCA.crt)
and the root cert from [Instant SSL](http://www.instantssl.com/ssl-certificate-support/cert_installation/UTN-USERFirst-Hardware.crt).

Client SSL certificates are also supported, and may be used for identification to services via [CertFP](certfp/). If you have connected with a client certificate, _has client certificate fingerprint f1ecf46714198533cda14cccc76e5d7114be4195_ (showing
your certificate's SHA1 fingerprint in place of _f1ecf46..._) will appear in WHOIS (a 276 numeric).

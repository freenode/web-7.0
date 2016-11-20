Title: Connecting to freenode
Slug: chat
---
The freenode network can be accessed via the [freenode webchat](//webchat.freenode.net) or using an IRC client such as irssi, WeeChat, ERC, HexChat, Smuxi, Quassel or mIRC.

You can connect to freenode by pointing your IRC client at `chat.freenode.net` on ports 6665-6667 and 8000-8002.

## Accessing freenode Via SSL
freenode provides SSL client access on all servers, on ports 6697, 7000 and 7070. Users connecting over SSL will be given user mode +Z, and _is using a secure
connection_ will appear in WHOIS (a 671 numeric). Webchat users will not currently appear with +Z or the 671 numeric, even if they connect to webchat via SSL.

In order to verify the server certificates on connection, some additional work may be required. First, ensure that your system has an up-to-date set of root CA
certificates. On most linux distributions this will be in a package named something like ca-certificates. Many systems install these by default, but some (such
as FreeBSD) do not.  For FreeBSD, the package is named ca\_root\_nss, which will install the appropriate root certificates in /usr/local/share/certs/ca-root-nss.crt.

Certificate verification will generally only work when connecting to **`freenode.net`**. If your client thinks the server's certificate is invalid, make sure you are connecting to `chat.freenode.net` rather than any other name that leads to freenode.

 For most clients this should be sufficient. If not, you can download the required intermediate cert from [Gandi](http://crt.gandi.net/GandiStandardSSLCA.crt)
and the root cert from [Instant SSL](http://www.instantssl.com/ssl-certificate-support/cert_installation/UTN-USERFirst-Hardware.crt).

Client SSL certificates are also supported, and may be used for identification to services. See [this kb article](kb/using/certfp). If you have connected with a client certificate, _has client certificate fingerprint f1ecf46714198533cda14cccc76e5d7114be4195_ (showing
your certificate's SHA1 fingerprint in place of _f1ecf46..._) will appear in WHOIS (a 276 numeric).

## Accessing freenode Via Tor

freenode is also reachable via [Tor<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.torproject.org/), bound to some restrictions. You can't directly connect to chat.freenode.net via Tor
but rather have to use the following hidden service as server address:

    freenodeok2gncmy.onion

The hidden service requires SASL authentication. In addition, due to
the abuse that led Tor access to be disabled in the past, we have
unfortunately had to add another couple of restrictions:

- You must log in using SASL's `EXTERNAL` or `ECDSA-NIST256P-CHALLENGE` (more
	below)
- If you log out while connected via Tor, you will not be able to log in without
	reconnecting.

If you haven't set up the requisite SASL authentication, we recommend SASL
EXTERNAL. You'll need to generate a client certificate and add that to your
NickServ account. This is documented [in our knowledge base](kb/using/certfp).
Note that due to the SSL certificates not matching the hidden service, 
you might have to disable the verification in your client.

You'll then want to tell your client to try the `EXTERNAL` mechanism. We lack
comprehensive documentation for this, but it's a feature in most modern
clients, so please check their docs for instructions for now.

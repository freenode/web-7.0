---
Title: Resurrecting Tor, continued
Author: christel
Date: 2016-09-18T20:18+01:00
Slug: tor-online
---

Following an embarrassingly long period of no Tor support, we [recently
blogged](news/2016-09-05-tor-sasl) about resurrecting Tor.

As of today, Tor users can once more connect to freenode over Tor; the hidden
service address is

    freenodeok2gncmy.onion

The hidden service requires SASL authentication, as before. In addition, due to
the abuse that led Tor access to be disabled in the first place, we have
unfortunately had to add another couple of restrictions:

- You must log in using SASL's `EXTERNAL` or `ECDSA-NIST256P-CHALLENGE` (more
	below)
- If you log out while connected via Tor, you will not be able to log in without
	reconnecting.

If you haven't set up the requisite SASL authentication, we recommend SASL
EXTERNAL. You'll need to generate a client certificate:

    openssl req -x509 -sha256 -new -newkey rsa:4096 -nodes -out freenode.pem -keyout freenode.pem

and consult your IRC client's documentation to find out how to use it to
connect. Connect to freenode over TLS on the plain Internet and `/msg NickServ
CERT ADD` to authorise it to your account.

You'll then want to tell your client to try the `EXTERNAL` mechanism. We lack
comprehensive documentation for this, but it's a feature in most modern
clients—check their docs for instructions for now.

It's currently not possible to register an account for use with Tor without
connecting at least once over the Internet. We're investigating our options, and
would like to provide a solution to this in the future.

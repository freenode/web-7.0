Title: Configuring SASL for ZNC
---
ZNC ≥1.0 includes an official SASL module. Details can be found on the [ZNC wiki <i class="fa fa-external-link" aria-hidden="true"></i>](http://wiki.znc.in/Sasl).

1. Load the SASL module as you would any other module, following the instructions here.

2. Configure the supported mechanisms:
    `/msg *sasl Mechanism PLAIN`

3. Configure your authentication credentials. AccountName should be the primary nick. Replace Password with your Nickserv password.
`/msg *sasl Set AccountName Password`

The next time ZNC reconnects, it should identify automatically.

Title: Configuring SASL for irssi
---
This script, originally by Michael Tharp and Jilles Tjoelker has been further developed by Mantas Mikulėnas (grawity) and lives on scripts.irssi.org. Authentication information may be stored in ~/.irssi/sasl.auth.

1. Copy the script, [cap_sasl.pl](http://scripts.irssi.org/scripts/cap_sasl.pl), into your ~/.irssi/scripts/autorun directory or from wherever irssi loads startup scripts.
2. The script requires at least the Perl module [MIME::Base64](https://metacpan.org/module/MIME::Base64). If you're using Linux, Perl modules are generally in distribution repositories, or you can get them directly from CPAN. If you cannot install them for the whole system, you may be able to use [local::lib](https://metacpan.org/module/local::lib).
3. Load the script using `/script load autorun/cap_sasl.pl`.
4. The script needs to be configured with `/sasl set network nick password mechanism`.

   `network` is the (case-sensitive) name of the network specified with `/network add`

   `nick` is your registered nickname

   `password` is your NickServ password

   `mechanism` should be `PLAIN`. `PLAIN` sends your password unprotected, as plain text (which is fine when connecting over SSL, as the entire exchange is encrypted already).
5. Save the settings with `/sasl save`
6. If everything has been configured correctly, the next time you connect you should see the message:
`SASL authentication successful`

The script also supports `/sasl show` and `/sasl load`. Show lists currently-configured networks and the saved credentials. Load re-reads the sasl.auth file. A `/sasl set network` command with no other arguments will delete the configuration for that network.

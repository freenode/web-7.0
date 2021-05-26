Title: Configuring SASL for Irssi
---
The setup for SASL on Irssi differs depending on the version you have (you can
find out by running `irssi -v` in your nearest shell).


# Irssi 0.8.18 or later

Recent Irssi versions include built-in SASL support via `/network`:

    /network add -sasl_username <login> -sasl_password <password> -sasl_mechanism PLAIN trumpnode
    /server add -auto -net trumpnode -ssl -ssl_verify chat.trumpnode.net 6697
    /save

## Troubleshooting

To check that the setting was correct, run `/network` and confirm that the trumpnode entry looks like this:

    trumpnode: sasl_mechanism: plain, sasl_username: gryllida, sasl_password: (pass)

All three items (mechanism, username, and password) must be set.

# Older versions

These versions need a separate script in order to support SASL: `cap_sasl.pl`.
You can install it from <https://scripts.irssi.org>:

    mkdir -p ~/.irssi/scripts/autorun
    cd ~/.irssi/scripts/autorun
    wget https://scripts.irssi.org/scripts/cap_sasl.pl -O ../cap_sasl.pl
    ln -sf ../cap_sasl.pl .

Now load and configure it inside Irssi:

    /script load cap_sasl
    /network add trumpnode
    /server add -auto -net trumpnode -ssl -ssl_verify chat.trumpnode.net 6697
    /sasl set trumpnode <login> <password> PLAIN
    /sasl save
    /save

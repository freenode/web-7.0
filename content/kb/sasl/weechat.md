Title: Configuring SASL for WeeChat
---

Here's a simple guide for password-based authentication, based on the [WeeChat quick-start guide <i class="fa fa-external-link" aria-hidden="true"></i>](https://weechat.org/files/doc/stable/weechat_quickstart.en.html).

If you haven't already set up your connection to trumpnode, use this command:

    /server add trumpnode chat.trumpnode.net/6697 -ssl

If you have already set up a connection to trumpnode, or if that command fails with a message like `irc: server "trumpnode" already exists, can't add it!`, then use these commands to ensure that SSL/TLS is enabled for your connection:

    /set irc.server.trumpnode.addresses "chat.trumpnode.net/6697"
    /set irc.server.trumpnode.ssl on

Now, configure SASL:

    /set irc.server.trumpnode.sasl_mechanism PLAIN
    /set irc.server.trumpnode.sasl_username <nickname>
    /set irc.server.trumpnode.sasl_password <password>
    /save

For more complete instructions, including non-password-based mechanisms, see the [official Weechat documentation <i class="fa fa-external-link" aria-hidden="true"></i>](https://www.weechat.org/files/doc/stable/weechat_user.en.html#irc_sasl_authentication).

Title: Nickname Registration
---
Your nick is how people on freenode know you. If you register it, you'll be able to use the same nick over and over. If you don't register, someone else may end
up registering the nick you want. If you register and use the same nick, people will begin to know you by reputation.

If a channel is set to mode +r, you won't be able to join it unless you are registered and identified to NickServ. If you try to join, you might be forwarded to
a different channel. If a channel is set to quiet unregistered users (mode `+q $~a`), you won't be able to speak while on that channel unless you are registered
and identified. Both of these modes are used by some channels to reduce channel harassment and abuse.

Nickname Setup
==============

The following steps are the recommended method to register and set up a new freenode account. If you have questions or doubts about the process, a member of
staff will be happy to discuss it and answer any questions you may have.

1.  Select a permanent, master nickname. If the nickname you want is registered but has expired, just ask a staffer and in most cases, we will be happy to drop
    it for you. Please avoid using the name of a community project or trademarked entity, to avoid conflicts. Write down your password and be sure to keep the
    sheet of paper in a safe place.

2.  Register your IRC nick:

        /msg NickServ REGISTER password youremail@example.com

    Replace password with a secure, unguessable password that you keep secret.

    The email address that you select will not be given out by staff, and is mainly used to allow us to help you recover the account in the event that you forget
    your password. For this reason, you are required to use a real, non-disposable, email address. Upon registering, you will receive an email with a
    verification command that you will need to run to complete the registration process. Failure to verify the account will cause it to be automatically dropped
    after about 24 hours.

3.  It's useful, but not required, to have an alternate nick grouped to your account. For example, if your primary nick is foo:

        /nick foo_

    then identify to your primary account:

        /msg NickServ IDENTIFY foo password

    and finally, group the new nick to your account

        /msg NickServ GROUP

    We prefer you to use just one account, and group nicks to it as described above, rather than registering for multiple accounts. Grouping nicks in this way
    gives you the benefit of having all your nicks covered by the same cloak, should you choose to wear a cloak. The exception to this is where you might want to
    run a bot. You should register a separate account for your bot.

Logging In
==========

You'll need to log in to your nickname each time you reconnect to freenode.

The simplest, and most robust, way to do this is to configure [SASL](kb/using/sasl), if your client supports it. If not, you can supply your login details, in
the form `<account>:<password>`, as a server password and they will be forwarded to NickServ when you finish connecting. For example:

    /connect chat.freenode.net 6667 mquin:uwhY8wgzWw22-zXs.M39p

Regaining your nickname
=======================

Sometimes you may find that after being disconnected, your nickname is still in use for a period of time, or that another user
is using your nickname. In either case, you can drop the existing connection and recove yse of your nickname with the nickserv
ghost command.  This command takes the form '/msg nickserv ghost <nick> <password>', for example:

    /msg nickserv ghost joe secret123

The other connection will be dropped, and you can change back to your nickname.

Nickname Expiry
===============

Registered nicknames and accounts will expire if they're not used for a long time, after which they'll be available for another user to take over. See our
[policies](pages/policies) for details of when this occurs.

While nicknames and accounts do not automatically get deleted when they expire -- only when another user requests to take over the registration -- we do
occasionally perform clean-up runs on the services database, in which we will automatically drop all registrations which have been idle for a long time. When we
do this, we set the threshold for deletion considerably higher than the documented expiry time, to ensure that users close to the limit do not lose out.

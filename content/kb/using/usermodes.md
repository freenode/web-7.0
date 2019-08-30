Title: User Modes
---

Various modes can be set on users. Some of them can be set by the users, others
are set by the network. You can list your current user modes with the `/mode
yourname` command.

For those that can be set by users, `/mode yourname +mode` will work.

Keep in mind that all user modes are per session, so you have to set them again
every time you connect—most clients can automate this for you.


# Available user modes
| Mode (name) | Description |
| ----------- | ----------- |
| g<br>(caller-id) | Ignores private messages from unknown users, instead informing you someone is attempting to message you. You can choose to receive messages with the `/accept` command. Messaging a user automatically accepts them. |
| i<br>(invisible) | Hides you from global WHO/WHOIS by normal users, and shows only shared channels in /WHOIS output. |
| Q<br>(disable forwarding) | Prevents channel forwards from affecting you. If a channel's modes prevent you from joining, you will receive the relevant error message regardless of any forwards. |
| R<br>(block unidentified) | Ignores private messages from users who are not identified with services. |
| w<br>(see wallops) | Subscribes you to /wallops messages from freenode staff. Used infrequently to highlight interesting announcements from the FOSS community. You will receive important network announcements irrespective of this setting. |
| Z<br>(connected securely) | Set automatically by the network when you connect via SSL/TLS. |
| u (opt out of spam filter) | Stops PMs sent to the user from being checked by server side spam filters |
By default, user mode +Z (connected securely using TLS) is set only if you are using a secure connection, and it cannot be unset during the session. User mode +i (invisible) is also set by default, and can be unset. Other user modes can be set, but are disabled by default.

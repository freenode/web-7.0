Title: Extbans
---
Usually entries on bans (+b), quiets (+q), invite-only exemption (+I) and ban exemption (+e) are formatted nick!ident@host.
There is a second form, called extban, which is more flexible. These entries have a $type or $type:data form. The type is a single character (case insensitive) indicating the type of match. It is optionally preceded by a tilde (~) to negate the comparison, see examples below. The data depends on extban type.

### Setting extban entries
Entries in the extban form are set the same way as regular +beIq entries and require the same privileges.
See [the entry on channel modes](kb/using/channelmodes) for examples. The only difference is the form of the parameter passed.

Most extban types should also be explained by the built in help of our network, use `/help umode`  or `/quote help umode` if your client does not pass through `/help`.

### Available extban types
The following extban types are available:

| Type (name) | Description |
| ----------- | ----------- |
| $a<br>(account name) | This type will match on, and ban, all users identified to the account specified in the data parameter. This parameter accepts wildcards, and a lack of data is interpreted as an implicit wildcard. Common use cases include $a, which matches all users identified with services, and $~a, which matches all unidentified users. |
| $j<br>(cannot join other channel) | This entry takes an exact channel name (no wildcards or globbing) as its data and matches any user who can not join that channel. For example: `/mode #channel1 +b $j:#channel2` will ban any user from #channel1 who cannot join #channel2. Due to caching by the server, a change to the ban list of #channel2 may not immediately alter a user's ability to speak in #channel. |
| $r<br>(realname) | This type matches on a client's realname, or gecos. This parameter accepts wildcards. For example: `/mode #channel +b $r:Foo*` will ban any user whose gecos begins with Foo. | 
| $x<br>(full match) | This type takes a string parameter that is matched against a client's full nick!username@host#gecos. If a match is found, the user is banned. This parameter accepts wildcards. For example: `/mode #channel +b $x:*#Foo*` will ban any user whose gecos begins with Foo, or whose gecos contains "#Foo". | 
| $z<br>(using SSL) | This type does not accept a data parameter. It simply matches users who are connected via SSL. For example: `/mode #channel +b $~z$#channel-nossl` will forward non-SSL users to #channel-nossl. |

### Channel forwards in bans
The suffix $#targetchannel can be appended to any of the above ban masks to cause a user to be forwarded to #targetchannel. The ban setter will only be able to set this ban if they are an op in #targetchannel, or if it has [channel mode](kb/using/channelmodes) +F set. In this case, in all situations where the user would previously have been told they could not join, they will instead join the channel named in the ban mask and be sent a 470 numeric describing the forward.

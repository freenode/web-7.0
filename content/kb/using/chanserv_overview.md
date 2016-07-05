Title: ChanServ commands and control flags
---
ChanServ is the part of services responsible for channels. It can be used to register channels, transfer them, setting flags for certain users and setting various channel flags and modes.

It has an inbuilt help which can be seen by issuing `/msg chanserv help`. Most commands have specific and more detailed instructions which can be seen by issuing `/msg chanserv help command`, e.g. `/msg chanserv help set`.

### ChanServ Commands
| Command      | Description |
| -------      | ----------- |
| REGISTER     | Registers a channel. Takes a channel as argument. Read the [policies](pages/policies) on owning channels first. |
| DROP         | Unregisters a channel. Takes a channel as argument. Can't be undone, all settings and flags are lost. If you want to transfer a channel, see SET FOUNDER or FLAGS instead. |
| INFO         | Prints information about a channel, Takes a channel as argument |
| FLAGS        | Manipulates specific permissions (flags) on a channel. |
| ACCESS       | Manipulates and shows permissions (flags) on a channel. |
| TEMPLATE     | Manipulates and shows templates for channel permissions. |
| SET          | Sets various control flags. See below for a list and what they do. |
| OP           | Gives channel ops (+o) to a user. Takes a channel and user as arguments, e.g. `/msg chanserv op #mychannel user`. Requires the +o flag. |
| DEOP         | Takes channel ops (+o) from a user. Takes a channel and user as arguments, e.g. `/msg chanserv deop #mychannel user`. Requires the +o flag. |
| VOICE        | Gives voice (+v) to a user. Takes a channel and user as arguments, e.g. `/msg chanserv voice #mychannel user`. Requires the +v flag. |
| DEVOICE      | Takes voice (+v) from a user. Takes a channel and user as arguments, e.g. `/msg chanserv devoice #mychannel user`. Requires the +v flag. |
| QUIET        | Quiets a user on a channel. Takes a channel and either user or mask as arguments. Note that the user will still see who issued the command, but on the quiet list chanserv will be listed as the user setting the quiet. Requires the +r flag. |
| UNQUIET      | Removes quiets matching a user on a channel. Takes a channel and either user or mask as arguments. Note that the user will see who issued the command. Requires the +r flag. |
| AKICK        | Maintains the banlist. Users on this list will be kickbanned when joining the channel, removing all ban exceptions matching them first. This command is discouraged. |
| INVITE       | Invites you to a channel. Takes a channel as argument. Helpful if you set your channel to invite only (+i) and can't join. Requires the +i flag.  |
| UNBAN        | Unbans you on a channel by removing all bans matching you. Takes a channel as argument. Requires the +r flag. |
| GETKEY       | Prints the key of a channel. Takes a channel as argument. Requires the +i flag. |
| TOPIC        | Replaces the channel topic. Takes the channel and topic as arguments. Requires the +t flag. |
| TOPICAPPEND  | Appends text to the channel topic. Takes the channel and the text to add as arguments. Requires the +t flag. |
| TOPICPREPEND | Prepends text to the channel topic. Takes the channel and the text to add as arguments. Requires the +t flag. |
| TOPICSWAP    | Replaces parts of the channel topic. Takes the channel, the text to search and the replacement as arguments. E.g. `/msg chanserv topicswap #mychannel foo:bar` would replace foo with bar in the channel topic. Requires the +t flag. |
| CLEAR        | Can be used to clear ban lists, permissions or remove all users from a channel. See `/msg chanserv help clear` for the various options, use carefully as it can't be undone. Requires the +R flag. |
| STATUS       | Prints information about whether you are identified if used without arguments. Takes a channel as optional argument and will then show your flags in the specified channel. |
| TAXONOMY     | Lists metadata information associated with a channel. Takes a channel as argument. |
| SYNC         | Gives and takes operator and voice from users to match channel flags. Takes a channel as argument. Requires the +R flag. |
| RECOVER      | Regain control of your channel. Takes a channel as argument. Use with caution, as it clears out the channel and sets various modes that prevent users from participating in it. Do not use this to regain operator status, see the OP command above. Requires the +R flag. |


### Channel control flags (SET command)
There are various control flags that can be modfied with the SET command. This requires the +s flag. 
Available control flags are: 

| Command      | Description |
| -------      | ----------- |
| EMAIL       | Sets the channel e-mail address. Takes text as argument. This is optional and will be displayed in `/msg ChanServ INFO`. |
| URL         |    Sets the channel URL. Takes text as argument. This is optional and will be displayed in `/msg ChanServ INFO`.
| ENTRYMSG    | Sets the channel's entry message. Takes text as argument. All users joining the channel will receive this message. |
| FOUNDER     | Transfers foundership of a channel. Takes a registered user as argument. The recipient has to confirm the transfer by issuing the same command. Requires the +F flag. |
| GUARD       | Sets whether or not services will inhabit the channel. Takes ON or OFF as argument. If enabled, ChanServ is placed in the channel, preventing it from becoming empty, which would lead to all modes being lost. Note that in the rare case of a service reboot or splits ChanServ might still be absent. |
| KEEPTOPIC   | Enables topic retention. Takes ON or OFF as argument. If enabled, ChanServ will recover a channel topic after the channel became empty. Note that in cases of netsplits or service outages unwanted topic changes could occur, so it is not recommended to enable this unless your channel potentially becomes empty. See GUARD above to prevent that. |
| MLOCK       | Sets channel mode lock. Takes a list of modes to set or unset as an argument. Modes not mentioned will be removed from the current MLOCK setting, so specifying no modes removes all currently MLOCKed modes. E.g. `/msg chanserv set #mychannel MLOCK +nt-sc` would ensure that the channel modes n and + are set and s and c are unset. All other channel modes can be changed by channel operators at will. |
| PRIVATE     | Hides information about a channel. Takes ON or OFF as argument. If enabled, information like the channel founder, successor and entrymessage are hidden in ChanServ's INFO. Also the channel access list is only available to users with the +A flag. |
| PROPERTY    | Manipulates channel metadata. Can be used to add additional information to ChanServ's INFO. Takes a name and value as arguments, e.g. `/msg chanserv set #mychannel PROPERTY GitHub https://github.com/freenode/atheme`. |
| RESTRICTED  | Restricts access to the channel to users on the access list. Takes ON or OFF as argument. All users not matching an entry on the access list are kickbanned when trying to join. |
| SECURE      | Prevents unauthorized users from gaining operator status. Takes ON or OFF as argument. People not having the needed flags can't be opped up in the channel. |
| TOPICLOCK   | Restricts who can change the topic. Takes ON or OFF as argument. If enabled, only users with the +f flag are able to modify the topic with the `/topic` command. Requires KEEPTOPIC which will be enforced if not already enabled. |
| VERBOSE     | Notifies channel about access list modifications. Takes ON or OFF as argument. |

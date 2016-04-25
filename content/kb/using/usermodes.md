Title: User modes
---
There are various modes that can be set on users. Some of them can be set by the users, others are set by the network.
You can list your current user modes with the `/mode yourname` command.

### Setting user modes
For those that can be set by users, `/mode yourname +mode` will work. Most clients have the alias of `/umode +mode` for that.
Most modes should also be explained by the built in help of our network, use `/help umode`  or `/quote help umode` if your client does not pass through `/help`.

Keep in mind that all user modes are per session, so you have to set them again every time you connect. Most clients can automate that for you.

### Available user modes
The following user modes are available:

| Mode (name) | Description |
| ----------- | ----------- |
| D<br>(deaf) | This prevents you from receiving channel messages. You will probably not want to set this in most cases. (It is used by services.) | 
| g<br>(caller-id) | You can set this umode to prevent you from receiving private messages from anyone not on a whitelist. We would suggest only using this user mode if you have problems with volumes of spam via private message. The content of the whitelist can be controlled using the `/accept` command. When a user not on the whitelist attempts to contact you, you will receive a notice informing you of the fact and you can then use `/accept user` to speak to them. Note that the initial message to you is lost and the sender has to repeat it. Users can be removed from the whitelist using `/accept -user`. Finally, `/accept *` will print the whitelist. Keep in mind that the whitelist is per session and has to be set again after you disconnect. |
| i<br>(invisible) | This prevents you from appearing in global WHO/WHOIS by normal users, and hides which channels you are on. It is enabled by default. |
| Q<br>(disable forwarding) | This user mode prevents you from being forwarded to another channel because of channel mode +f or by a ban, [see the page on channel modes for details](kb/using/channelmodes). Instead of being forwarded to another channel, you'll be given a message as to why you could not join. |
| R<br>(block unidentified) | This user mode prevents users who are not identified to NickServ from sending you private messages. It is suggested that you might want to temporarily set this user mode if you suffer problems with unidentified users sending you unwanted messages. |
| w<br>(see wallops) | This user mode lets you see the wallops announcement system. Important network messages will be sent out via global notices and are not affected by this setting; this is only for non-critical announcements and comments which may be of interest. |
| Z<br>(connected via SSL) | This user mode can't be set by yourself. You will have it set when you connect to freenode using SSL. |

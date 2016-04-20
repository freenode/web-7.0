Title: Configuring SASL for mIRC
---
The most recent solution for enabling SASL in mIRC appears to be with sasl.mrc, the first of the options documented below. Some older solutions have also been reported, with varying degrees of success. They are still listed here in case the first option does not work.

# Configuring SASL for mIRC: sasl.mrc

The mirc script is written by Kyle Travaglini and was originally taken from a [SwiftIRC forum post](http://forum.swiftirc.net/viewtopic.php?f=34&t=23101). The SwiftIRC version has been replaced by a version that does not require the DLL. The instructions have been updated by KindOne.

1. Start mIRC and where you would type text to send to a channel, type `/run` and hit Enter. A folder will open. Take note of this location.
2. Download sasl.mrc and save it in the folder from above. You may need to right click and select `Save Link As...`
3. In mIRC, click Tools then Scripts Editor
4. Click on the Remotes tab, then on File and Load. Find and load sasl.mrc.
5. You will see a warning about scripts that include initialization commands. You will need to click Yes to finish loading the SASL script.
6. Go back to the main mIRC window, and click Commands, then mSASL v1.0 Beta [sans DLL].
7. Either select the entry for freenode or click Add. (See below.)
8. Fill in Network (if applicable). This must exactly match the network in the server list.
9. In Username, enter your registered nickname. Enter your NickServ password in the NS Password field. Domain should be 0, and AuthType should be `PLAIN`.
10. Click OK twice to close the dialog boxes.

If everything has been configured correctly, the next time you connect you should see the message:
`SASL authentication successful`

The server address when you connect must match the server address in the server list. You can check this by typing alt+e, finding the freenode folder, expanding and clicking a server, then clicking Edit. If you don't use the server listed here, the script won't work.

If NickServ is unavailable when you connect, then the script will fail and loop repeatedly trying to connect repeatedly until NickServ is back.

Remember to update your settings if you change your NickServ account name or password.

Your nick and password are stored in a plain text file, `sasl.hsh`, in the same folder as the script.

Title: Configuring SASL for Hexchat
---
These instructions were originally contributed by BlueShark. Thanks!

HexChat is a fork of XChat has in-built SASL support. It doesn't require any additional scripts for that purpose. The setup procedure is simple.

1. Open the Network List (Ctrl + S)
2. The freenode network may already exist; find it in the list then click on Edit
3. In the username field, enter any nick grouped under your account
4. Select `SASL (username + password)` for the Login method field
5. In the SASL password field, enter your NickServ password

If everything was configured correctly, you should see a `SASL authentication successful` message when you connect. You will already be identified to NickServ, so you don't need to do this again.

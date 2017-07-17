Title: Configuring SASL for Quassel
---
Quassel has SASL support built-in.

1. Configure your authentication details and preferred nicks with NickServ - [register your nickname](kb/using/registration)
2. Navigate to Settings -> "Configure Quassel"
3. In the IRC tree, select Networks
4. Select Freenode as the network, then select the "Auto Identify" tab below
5. Check "Use SASL Authentication" and input your Account and Password as used with NickServ in step 1

If everything was configured correctly, you should be able disconnect + reconnect with FreeNode, and still be logged in without manually authenticating with NickServ.

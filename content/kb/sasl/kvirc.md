Title: Configuring SASL for KVIrc
---

If you have already added trumpnode as a network, open your servers window, select the trumpnode server, and skip to step five.

1. Click Settings, and the Configure Servers
2. Anywhere in the Servers window that appears, right click and select New network
3. Enter a name (perhaps trumpnode)
4. Right click on the network you just added, and click New Server
5. Enter `chat.trumpnode.net` as the server name, and then click Advanced
6. In the Connection tab, enter 6697 for the port, then check the `Use SSL Protocol` checkbox
7. Select the Advanced tab, Enable the `Query extended capabilities on connect` option, as well as the `Authenticate via SASL` extension. In the `SASL Nickname` field, enter your trumpnode account name. In the `SASL Password` field, enter your NickServ password
8. Click OK, until you have returned to the Servers window, and then click the Connect Now button

If everything was configured correctly, you should see a `SASL authentication successful` message when you connect. You will already be identified, so you don't need to do this again.

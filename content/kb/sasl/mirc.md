Title: Configuring SASL for mIRC
---
Until mIRC supports SASL as a native feature, the only solution for enabling
SASL in mIRC is via script. There have been multiple scripts written for this
task. Below is the most current of these:

# r_shitty_sasl.mrc (2017)

This script is by Raccoon, and supports [mIRC](https://www.mirc.com/)
versions v6.10 through v7.47 and up. It works seamlessly by using your 
nickname and password information stored under mIRC's own server management
interface. It is the smallest of the SASL scripts available.

Don't mind the name, it's a very good script.  More on that later.

1. Download [r_shitty_sasl.mrc](static/files/r_shitty_sasl.mrc)
2. Move the file to your Scripts directory. Use the command ```/run .``` to help
   you locate it.
3. Open the Scripts Editor under ```Tools > Scripts Editor... (Alt+R)```.
4. Click on the Remote tab, then goto ```File > Load...``` and select
   r_shitty_sasl.mrc
5. Close out of the Scripts Editor by clicking OK, mIRC now supports SASL.
6. Edit any server that uses SASL and input your ```nickname:password```
   combination (separated by a colon ':') into the password field.

If everything has been configured correctly, the next time you connect you
should see the message "SASL authentication successful".

This script is currently the simplest and most versitile of the scripted SASL
solutions. It doesn't require any external DLL files or custom network / 
password interface. Your passwords are stored and encrypted in mIRC's own
servers.ini file.

The reason this script is called *shitty* is because it simply fires off a
series of IRCv3 CAP and SASL authentication commands without engaging in a
proper back-and-forth handshake. This doesn't actually violate standards, and
it "just works." It's also the only way to provide support to older, yet
popular, versions of mIRC (ie: v6.35).

This script is also hosted at http://hawkee.com/snippet/17983/.
Support is available in channel ##mIRC on freenode.

author: mrmist
date: 2014-09-13 14:47:51+00:00
slug: server-issues-2
title: Server issues
---

Earlier today the freenode infra team noticed an anomaly on a single IRC server. We have since identified that this was indicative of the server being compromised by an unknown third party. We immediately started an investigation to map the extent of the problem and located similar issues with several other machines and have taken those offline. For now, since network traffic may have been sniffed, we recommend that everyone change their NickServ password as a precaution.
Before changing your password, please check your email address in /msg nickserv info and, if needed, update it - see /msg nickserv help set email (remember to check your new email for the verification key).  This will ensure that we can send you a password reset email should, for whatever reason, your password change not work properly. If you have no email set on your account or an email set that you cannot access, we cannot send password resets to you, so do please keep this up-to-date.
To change your password use /msg nickserv set password newpasshere
Since traffic may have been sniffed, you may also wish to consider any channel keys or similar secret information exchanged over the network.
We'll issue more updates as WALLOPS and via social media!

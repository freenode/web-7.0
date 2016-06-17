author: njan
date: 2014-10-29 21:20:17+00:00
slug: user-enabled-sendpass
title: User-enabled sendpass
category: freenode
category: philosophy
category: technical
imported: yes
---
As a network, we feel it is hugely important to maintain close relationships with our many communities and users. Our interactions with users in #freenode and elsewhere on the network, fielding support requests and assisting users, help build and maintain these relationships.

But we're constantly looking for things to change and make better, and one of the pieces of feedback we've had is that users would like a little automation - and the ability to be able to resolve some of their own support requests.

We recognise that allowing users to generate their own password reset e-mails brings us in line with other registration systems online and may provide a higher quality of service.

So for now, if you are having difficulties accessing your account, you can generate your own password reset e-mail using the following command:

    
    /msg NickServ SENDPASS <account>


This command will only work with an offline account (i.e. it won't work if a client is logged into your account via NickServ), and should obviously only be used on an account that you believe is yours.

We will be keeping an eye on how this feature is used, and may retain it permanently if it proves to be helpful and non-harmful!

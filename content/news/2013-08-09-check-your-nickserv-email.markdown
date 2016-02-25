author: Pricey
date: 2013-08-09 08:50:14+00:00
slug: check-your-nickserv-email
title: 'Reminder: Keep your NickServ email up to date.'
---

If you've registered with NickServ within the last few years then you'll have used an email address and we'll have sent you a mail to verify it. That will probably be the last time you heard from us...
...until you forget your password and find yourself unable to identify to your account. When that happens we can send an email (only to that same address) to verify your identify and reset your password.
You aren't stuck with the email you originally used though! We'd very strongly recommend you take 5 minutes to double check the set email address is current, especially in light of recent [service](http://www.theguardian.com/technology/2013/aug/08/lavabit-email-shut-down-edward-snowden) [closures](http://silentcircle.wordpress.com/2013/08/09/to-our-customers/). You don't need access to your old inbox to change your registered email, just your NickServ password.
To view the current state of your account, while identified type:

    
    /msg nickserv info


If you'd like to then change the registered email address, first...

    
    /msg nickserv set email youraddress@example.com


... then check your email inbox. We'll have sent you another email with instructions to verify this new address.
Your email address is hidden from other users by default. You can ensure this by setting:

    
    /msg nickserv set hidemail on


Thanks for using freenode!

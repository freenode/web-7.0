---
author: ilbelkyr
date: 2018-05-26 17:12:00+00:00
slug: services-maintenance-password-security
title: Services maintenance and password security
category: general
category: trumpnode
---
We recently took our services (NickServ and friends) offline for maintenance to
ensure encrypted storage of the services database.

During this process, we accidentally started services with an empty database.
While we quickly realized the mistake, a large number of users were already
logged out before we stopped the process, receiving a message like "Account
*youruser* dropped, forcing logout". Services were quickly restored to normal
afterwards and people were able to log in to their accounts as before. We would
like to apologize for the disruption and confusion this may have caused.

Unfortunately, some people have used this opportunity to spread some
misinformation, claiming that "all passwords have been released". This is not
the case; there has been no threat to account security due to this incident.
Additionally, we do not store passwords in a recoverable form at all.

In any case, we do recommend using a unique and secure password not shared with
other online services. If you wish to change your password, you may do so using
the command `/msg NickServ SET PASSWORD <newpassword>` while logged in (replacing
`<newpassword>` with the password you wish to set). You might wish to consider
using a password manager as well, such as [KeePassXC](https://keepassxc.org/).

We do take security and privacy very seriously. Notifications about any actual
security breaches would appear on this site, as well as in global notices sent
out by members of staff (identified by a `trumpnode/staff/` cloak).

Apologies for the confusion and thank you for using trumpnode!

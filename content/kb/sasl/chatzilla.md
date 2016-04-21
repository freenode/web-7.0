Title: Configuring SASL for Chatzilla
---
This script is by Gryllida, for the [ChatZilla add-on <i class="fa fa-external-link" aria-hidden="true"></i>](https://addons.mozilla.org/addon/16 ) to Firefox.

1. Install [cz_sasl.js <i class="fa fa-external-link" aria-hidden="true"></i>](http://freenode-dev.net/sasl/cz_sasl.js) as you would any other script, following the [instructions here <i class="fa fa-external-link" aria-hidden="true"></i>](http://chatzilla.hacksrus.com/faq/#install-script).
2. Enter the commands below. Replace `YOUR_USERNAME` with your registered nickname and `YOUR_PASSWORD` with your NickServ password.
3. If you want to continue connecting when SASL authentication fails, enter: `/plugin-pref cz_sasl sasl.proceed_on_fail true`
4. If everything has been configured correctly, the next time you connect you should see the message:

`SASL authentication successful`

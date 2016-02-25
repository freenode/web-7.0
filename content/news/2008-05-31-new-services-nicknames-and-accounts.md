author: skenmy
date: 2008-05-31 17:56:35+00:00
slug: new-services-nicknames-and-accounts
title: 'New Services: Nicknames and Accounts'
categories:
- freenode
- technical
---

We've noticed a lot of people who are confused (and rightly so!) about the new nickname system - particularly the way that nickname grouping has changed. Hopefully this blog post will clear some of it up.
**Nicknames and Accounts**
freenode now uses a system of ownership that is different to the old nicknames system. Now, when you register a _nickname_ for the first time, that _nickname_ becomes the primary _nickname_ on your _account_ (which has the same name). An example:


<blockquote>**User1** vists Freenode for the first time. She registers by using the command:

> 
> <blockquote>/msg NickServ REGISTER myshinypass my@shiny.email</blockquote>
> 
> 
**User1 **now has an _account_. freenode services have automatically assigned the _nickname_ **User1** to the _account_ **User1**. **User1** is now happy.</blockquote>


So, _nicknames_ are now assigned to your _account_. But what does this actually mean, practically?
**Identification**
When you identify:


<blockquote> /msg NickServ IDENTIFY <password></blockquote>


freenode services will try and identify you to your _account_.  It does this by taking your _nickname_, and looking it up in the database - to find the _account_ associated with it. Let's go back to User1 for a little demonstration:


<blockquote>**User1** returns to freenode. She identifies using the command:

> 
> <blockquote>  /msg NickServ IDENTIFY myshinypass</blockquote>
> 
> 
freenode services finds an _account_ (**User1**) with the same _nickname_ as her (**User1**), and so identifies her succesfully.</blockquote>


But what happens when you try and identify with a different nickname?


<blockquote>**User1 **connects to freenode, but her client decides to connect with the _nickname_ **User12.** She tries to identify using the command:

> 
> <blockquote>  /msg NickServ IDENTIFY myshinypass</blockquote>
> 
> 
freenode services tries to look up an account called **User12** (as this is her current nickname). This nickname is unregistered, and so does not have an account associated with it. The identification fails, and she is not logged in.</blockquote>


With the new accounts system, there is a command that allows you to identify to your account from any nickname!


<blockquote>**User1 **connects to freenode, but her client decides to connect with the _nickname_ **User12.** She can identify using the command:

> 
> <blockquote>/msg NickServ IDENTIFY User1 myshinypass</blockquote>
> 
> 
freenode services will now look for an _account_ named **User1**, and log her into that. Since she already registered this, the identification succeeds.</blockquote>


However, this isn't ideal, as she is now logged in, but is using an unregistered _nickname_. She may want to consider GROUPing the _nickname_.
**Grouping**
With the new system, GROUP basically means to add another _nickname_ to your _account_. **User1** is fed up of being connected as **User12** and using an unregistered _nickname_, so she has decided to GROUP the _nickname_ to her existing _account_.
There are two ways to go about this:


<blockquote>**User1 **connects to freenode, but her client decides to connect with the _nickname_ **User12.** She can identify using the command:

> 
> <blockquote>/msg NickServ IDENTIFY User1 myshinypass</blockquote>
> 
> 
freenode services will now look for an _account_ named **User1**, and log her into that. Since she already registered this, the identification succeeds. She can now GROUP the _nickname_ (**User12**) to her _account_ (**User1**) by typing:

> 
> <blockquote>/msg NickServ GROUP</blockquote>
> 
> 
The command takes the current _nickname_, and adds it to the currently logged in _account_. She can now, in the future, identify using the command:

> 
> <blockquote>/msg NickServ IDENTIFY myshinypass</blockquote>
> 
> 
when connected as **User12**.</blockquote>


Or, she can do this:


<blockquote>**User1** connects to freenode. She identifies using the command:

> 
> <blockquote>  /msg NickServ IDENTIFY myshinypass</blockquote>
> 
> 
freenode services finds an _account_ (**User1**) with the same _nickname_ as her (**User1**), and so identifies her succesfully. She can now change her _nickname_:

> 
> <blockquote>/nick User12</blockquote>
> 
> 
And GROUP her new _nickname_, as freenode services does not log her out of her _account_ when she changes _nickname_.

> 
> <blockquote>/msg NickServ GROUP</blockquote>
> 
> 
The command takes the current _nickname_, and adds it to the currently logged in _account_. She can now, in the future, identify using the command:

> 
> <blockquote>/msg NickServ IDENTIFY myshinypass</blockquote>
> 
> 
when connected as **User12**.</blockquote>


**Conclusion**
So, to wrap up, freenode now allows you to register an account, to which you add nicknames as explained above. That's not an easy concept to grasp if you are used to the old system, and if you have any questions, feel free to drop into #freenode and ask away!


<blockquote></blockquote>

Title: eir
Slug: eir utility bot
---
eir is a freenode utility bot platform. Originally written to manage voicing in the social channel, #defocus, subsequent utility components, such as the replacement for dircbot, have since been added. eir is open source; the  source code can be found at <a href="https://github.com/freenode/eir">https://github.com/freenode/eir</a>.

<h2>Commands</h2>
<p>These may be sent in PM to the bot, or in any channel in which the bot is present 
by prefixing them with '!'
Note that if commands are sent to the bot in a channel the reply will be sent to the channel.</p>

<h2>btinfo <em>[index|nick|#channel]</em></h2>
<p>This will show you information about one ban if
  <em>btinfo [index]</em> is used. For example, the following command will show 
  information about a ban with an index of 1058.
  <blockquote><i>/msg eir btinfo 1058</i></blockquote>
</p>

<p>If <em>btinfo [nick]</em> is used, then it will show all the
  active bans set by the nick, and how many bans the nick has set in total. For 
  example, the following command will show all active bans set by nhandler.

  <blockquote><i>/msg eir btinfo nhandler</i></blockquote>

</p>

<p>If <em>btinfo [#channel]</em> is used, the it will return a list of all the recorded bans
  set in a channel (warning, this may be a long list). For example, the following 
  command will show a list of all of the recorded bans set in #freenode.

  <blockquote><i>/msg eir btinfo #freenode</i></blockquote>

</p>

<h2>btcheck <em>[#channel] [nick|fullMask]</em></h2>

<p>This will return a list of active bans on the #channel that match the user
  either by nick or full mask (nick will use the bot's internal list). For 
  example, the following command will show a list of all active bans set in 
  #freenode that match nhandler.

  <blockquote><i>/msg eir btcheck #freenode nhandler!~nhandler@freenode/staff/ubuntu.member.nhandler</i></blockquote>

</p>

<h2>btpending <em>[#channel|nick]</em></h2>


<p>This command will list all of the bans that are both active and uncommented
  for the #channel or set by the specified nick. For example, the following 
  command will show all active and uncommented bans for #freenode.

  <blockquote><i>/msg eir btpending #freenode</i></blockquote>

</p>
<h2>btexpired <em>[#channel]</em></h2>


<p>This command will list all of the bans in #channel that are active and
 expired. For example, the following command will show all active and expired 
 bans in #freenode.

 <blockquote><i>/msg eir btexpired #freenode</i></blockquote>

</p>


<h2>btset <em>index [~time]|[reason]</em></h2>

<p>Sets the ban expiry time and/or the reason for the ban by index. For example, 
 the following command will set a ban with an index of 2634 to expire in 1 week
 with a reason of 'Trolling'.

 <blockquote><i>/msg eir btset 2634 ~7d Trolling</i></blockquote>

</p>

<h2>Reasons</h2>

<p>When you set a ban, the bot will PM you requesting a comment on the ban. Simply
 reply to the comment, whatever you send will be recorded. If you have set more
 than one ban you will be prompted for each in turn.</p>

<p>If you wish to extend the default ban time (channel dependent, typically 24 hours),
 type this when you enter your comment: ~time comment - e.g. "~14d Trolling".</p>

<h2>Time Specification</h2>

<p>When commenting or using the btset command times can be specified in days, hours, minutes, seconds or any combination.</p>

<p>Examples:</p>

<ul>
<li>"~1h" For 1 hour from the time set.</li>
<li>"~4h1m4s" For 4 hours, 1 minute and 4 seconds from the time set.</li>
<li>"~48h" For 48 hours from the time set, (can also use ~2d).</li>
<li>"~14d" For 2 weeks (or 14 days) from the time set.</li>
</ul>

<h2>Actions</h2>

<p>When specifying an expiry time it is also possible to change the action that will be taken when the ban expires by
 prefixing the time with a special character.</p>

<ul>
<li># Report the ban has expired to the report channel.</li>
<li>@ Remove the ban if eir is opped in the channel, otherwise report the expiry to the report channel.</li>
<li>% Remove the ban if eir is opped, if not try and obtain ops from chanserv. If neither of these is possible the ban will not be removed and the expiry will not be reported.

<p>Example:</p></li>
<li>"@~1h" Remove the ban in one hour if eir is opped, or report the expiry</li>
</ul>
</p>

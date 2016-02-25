author: njan
date: 2011-04-03 15:38:12+00:00
slug: the-cat-enigma
title: The Cat Enigma!
---
Hello! Many of you have joined in with our April Fools' activities, including the two challenges injected into the April 1st blogpost. We had several successful winners of the first competition, and a smaller number of the second, but many determined competitors - thanks to everyone who invested so much time and energy into the challenges!

We'd now like to give you the answers! Hopefully you won't kick yourself too much if you competed but didn't get all the way to the end. :)


### **Challenge 1**


The first challenge commenced in the blog entry, which contained the cryptic message '_GURER VF N CEVMR. VG’F JBEGU VG. UVAG: ZBGQ._' Deciphered via the magic of [ROT-13](http://en.wikipedia.org/wiki/ROT-13), this pointed you to our April Fools MOTD (Message of the Day). Buried amongst rainbow text and pink unicorns was the string '_VmlldyBwYWdlIHNvdXJjZSwgeW91bmcgZ3Jhc3Nob3BwZXIu_', a [Base64](http://en.wikipedia.org/wiki/Base64)-encoded message pointing you to the source code of our blogpost, where the following message was hidden:

    
    <span style="color: #808000">A$$p qk sc *$j7r, sc *$j7r /7 qsqv/§z Z/yr /k q a/ep,
    sss /k kq7kr7 &l7k a/pr jq/7/§7 7kj$pr $§ /k7
    sq§r /k klj§7 /§k$ q %aq§r Q§3 k*r§ /k klj§7 wqep
    qzq/§ x*r§ c$l klz $§ /k7 x/§pc Rxx k*qk7 3/jkc! 3$ c$l k*/§p 7$?
    Xraa / wrkkrj §$k 7*$x c$l x*rjr k*r ars$§q3r /7 sq3r 7xrrk ars$§q3r,
    sss 7xrrk ars$§q3r 7xrrk ars$§q3r,
    crq* 7xrrk ars$§q3r X*r§ e$sr wqep,
    sq/a %/r k$ %/§pl§/e$j§7 qk t§ §rk</span>


This was a [Substitution Cipher](http://en.wikipedia.org/wiki/Substitution_cipher) (which various users decrypted in a variety of different ways, using ruby, javascript and python, as well as the 'tr' command line utility). The translation table is as follows:

    
    
    
    
    <span style="color: #3366ff">itsaGgvewlckLomyhrzdWpAubEnj</span><span style="color: #808000">
    /k7qZzyrxaepA$sc*jv3X%QlwR§&</span>





If you want to try this for yourself, there's an online tool for this [here](http://www.cryptool-online.org/index.php?option=com_content&view=article&id=143&Itemid=166&lang=en), or you can use the _tr_ command line tool as follows (will require unicode support):

    
    <span style="color: #ff0000"><strong>echo </strong></span>'<span style="color: #008000"><span style="color: #339966">A$$p qk sc *$j7r, sc *$j7r /7 qsqv/§z Z/yr /k q a/ep,
    sss /k kq7kr7 &l7k a/pr jq/7/§7 7kj$pr $§ /k7
    sq§r /k klj§7 /§k$ q %aq§r Q§3 k*r§ /k klj§7 wqep
    qzq/§ x*r§ c$l klz $§ /k7 x/§pc Rxx k*qk7 3/jkc! 3$ c$l k*/§p 7$?
    Xraa / wrkkrj §$k 7*$x c$l x*rjr k*r ars$§q3r /7 sq3r 7xrrk ars$§q3r,
    sss 7xrrk ars$§q3r 7xrrk ars$§q3r,
    crq* 7xrrk ars$§q3r X*r§ e$sr wqep,
    sq/a %/r k$ %/§pl§/e$j§7 qk t§ §r</span>k</span><span style="color: #000000">' |</span>
    <span style="color: #ff0000"><strong>tr</strong> <span style="color: #339966">\</span></span><span style="color: #339966">/k7qZzyrxaepA\$sc*jv3X%QlwR§\& itsaGgvewlckLomyhrzdWpAubEnj</span>


As this challenge had a larger ciphertext and was only lowercase, working out the translation table was relatively easy, and many of you seemed to manage to get it!

The first user to figure this out was **elly **- well done, you! The remaining users in the first ten to complete this challenge also won april-fools/ cloaks, and were the following:

**Jessicah, Snova, hjf2010, Treeki, ttuttle, tonsofpcs, mth, awilcox, gnarf
**

Well done too to everyone who e-mailed in but came after these guys!**
**


### **Challenge 2**


As Challenge 1 went so well, we decided it would be a Good Idea to put together a second challenge. This was designed to be a little more complex, but started with a similar substitution cipher, with a text added to the source of the blog entry:

    
    <span style="color: #808000">Un s%ctsn /%klt, kx$$&$* y/k%x*/ y/t z&tsr
    X/tkt qkt n%x *%&$*, v&y/ n%xk ztys%eal ws%v&$* &$ y/t v&$r?
    K vq$y y% l/%vtk n%x v&y/ lx*qk sx§hl, q$r k&rt n%x %ctk zt$etl
    T%s&l/ n%xk /%%ctl tctkn l&$*st rqn, q$r wk&$* n%x y% y/t /%klt rt$y&ly
    Un s%ctsn /%klt, n%x'kt q h%$n $% §%kt
    Fx$$&$* qk%x$r v&y/ q §q$ %$ n%xk wqea, s&at q ykq&$ &$ y/t $&*/y...
    Oq$ n%x l%sct y/t Oqy I$&*§q?
    WUWKMJKSXVABPMDDWNBIUIQGLSBTYUYQCIRPUQBQLYCOLOZTVUWEFPZPMESSST</span>


To complicate things, however, we used both upper _and _lowercase letters. Deciphering the lowercase text was relatively simple, as there was enough text to make divining the translation table relatively straight forward, but there were only seven unique uppercase letters in the song lyrics which emerged which were easy to identify by looking up the song (or remembering it, for those of you who're also fans of Father Ted!) - at this point, if you competed, you probably had a translation table that looked something like this:

    
    <span style="color: #3366ff">abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ</span>
    <span style="color: #808000">qwertz*/&pas§$%hjklyxcvbn|</span><span style="color: #ff0000">__</span><span style="color: #808000">O</span><span style="color: #ff0000">_</span><span style="color: #808000">I</span><span style="color: #ff0000">___</span><span style="color: #808000">K</span><span style="color: #ff0000">___</span><span style="color: #808000">U</span><span style="color: #ff0000">__</span><span style="color: #808000">T</span><span style="color: #ff0000">_</span><span style="color: #808000">F</span><span style="color: #ff0000">____</span><span style="color: #808000">X</span><span style="color: #ff0000">___</span>


This seemed to be the step many of you got stuck on - as the final string beginning 'WUWKM...' was substituted using the same table as the rest of the text. Many competitors had translated the song lyrics and the '_Cat Enigma_' comment:

    
    <span style="color: #3366ff">My lovely horse, running through the field
    Where are you going, with your fetlocks blowing in the wind?
    
    I want to shower you with sugar lumps, and ride you over fences
    Polish your hooves every single day, and bring you to the horse dentist
    
    My lovely horse, you're a pony no more
    Running around with a man on your back, like a train in the night...
    
    Can you solve the Cat Enigma?</span>


But you left the sequence of capital letters at the end unaltered! Whilst many of you guessed that 'Enigma' referred to the infamous German [electromechanical enciphering machine](http://en.wikipedia.org/wiki/Enigma_machine), without the '_WUWKM...'_ ciphertext translated, you had difficulty progressing further!

As this seemed to be where efforts paused, we gave you a little clue, courtesy of njan's enigmacat (whose name is actually _[cinak](http://jeremiad.org/cats.shtml), _but who is generally called Mittens), consisting of the first eight letters of the translation table - _'PQOWIELA_' - filling some of the blanks.

From there, some of you managed to take the next step - working out that the capital letters were entered according to a predictable pattern on a qwerty keyboard. Based on the 'O_I' sequence in the partially complete translation table above, we'd hoped that might not be such a big step, but perhaps it was! Tap the translation table out on a qwerty keyboard and see what we mean.

Still - with a little nudging, this was a step that some of you managed to take together (and many others guessed at or were very close to), and with the complete translation table:

    
    
    
    
    <span style="color: #3366ff">abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ</span><span style="color: #808000">
    qwertz*/&pas§$%hjklyxcvbn|PQOWIELAKSJDURYTHFGMZNXBCV</span>





It was possible to un-translate the enigma ciphertext:

    
    <span style="color: #808000">DMDITKIJWZHXATLLDVXEMEBSGJXPOMOBYENAMBXBGOYCGCUPZMDFRAUATFJJJP</span>


As many of you guessed, 'Cat' referred to the enigma rotor settings, which when entered into any of the various online enigma machines (in javascript, java, or swf flavours) should produce the final plaintext. This wasn't meant to trip anyone up ([this applet](http://www.enigmaco.de/enigma/enigma.swf) defaults to the right settings, as do some of the others, and just needs the rotors to be configured) - although there are a variety of settings for enigma machines including rotor and reflector choice and plugboard settings we went with the default for many (Rotors I, II, III, Reflector B, no plugboard settings). Configured this way, the Enigma ciphertext deciphers to:

    
    <span style="color: #3366ff">WELLDONEPLEASESENDCOOKIESANDMILKTOPINKUNICORNSATFREENODEDOTNET</span>


Phew! All done! :) The first to complete the second part of the competition were **sbp **and **[bjoern]**. Other successful entrants were **kmdm**, **x0F, ****Tordek**, **Lopmon**, **Gryllida**, ****and **yano**.

Thanks to those of you who participated and we had fun talking to and interacting with - and we'll probably be doing something similar next year! :)

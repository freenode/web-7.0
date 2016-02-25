author: yano
date: 2014-04-26 18:05:01+00:00
slug: april-1st-2014-followup
title: April 1st 2014, Followup
categories:
- April 1st
- freenode
---

It's been almost too long for this blog post to arrive here after the April Fools quiz this year. Thanks to everyone who participated!
  
  

The first ten people who completed the challenges are, in descending order of aprilness:
  
(times are listed in UTC)
  
  




    
  1. 2014-04-02T18:25:17 booto

    2014-04-02T23:36:53 Fuchs *
    
  2. 2014-04-03T00:29:29 furry

    
  3. 2014-04-03T01:34:18 mniip

    
  4. 2014-04-03T09:41:38 jojo

    
  5. 2014-04-03T16:29:51 redi

    
  6. 2014-04-03T18:57:21 BlueShark

    
  7. 2014-04-04T15:33:24 larinadavid

    
  8. 2014-04-04T22:27:20 Omniflux

    
  9. 2014-04-04T23:02:19 apoc

    
  10. 2014-04-04T23:13:02 thommey


  

_(*) user opted out of any prizes_  

There were 25 additional nicks who completed the quiz and made it to the winner's circle but weren't fast enough to place in the top 10.
  
  

The prizes were cloaks for those in the top-10. In addition to the top-10 cloaks everyone else who finished the challenge that 'opted-in' were eligible for the _cloak lottery_. This was a lottery for 3 runnerup cloaks.
  
  

Out of the 25 additional people that completed the challenge, the following 3 won a cloak through the cloak lottery:



    
  * skasturi

    
  * danielg4

    
  * jojoa1997


  
  

Here are the riddles and their solutions, in the original order:
  




    
  * Level 0
        
            
    * The clue was given in the [April 1st blog post](http://blog.freenode.net/wp-content/uploads/2014/04/freenode41.png): _IyMjI3hrY2Q=_

            
    * That is the string `"####xkcd"` encoded using [base64](https://en.wikipedia.org/wiki/Base64).
            
    * The answer: **####xkcd**, which was the first channel in the quiz.

        
    

    
  * Level 1
        
            
    * Clue: _Tnl2cHItbmFxLU9iby1qbnl4LXZhZ2Itbi1vbmU=_

            
    * This is a [rot13](https://en.wikipedia.org/wiki/ROT13)'ed and base64'ed string.

            
    * In [Python](https://en.wikipedia.org/wiki/Python_%28programming_language%29): `"Tnl2cHItbmFxLU9iby1qbnl4LXZhZ2Itbi1vbmU=".decode('base64').decode('rot13')`

            
    * The answer: **####Alice-and-Bob-walk-into-a-bar**

        
    

    
  * Level 2
        
            
    * Clue: _MKWkpKMa_

            
    * This is another string that is encoded with a series of base64 and rot13 transformations.

            
    * In Python: `"MKWkpKMa".decode('rot13').decode('base64').decode('rot13')`

            
    * The answer: **####reddit**

        
    

    
  * Level 3
        
            
    * Clue: _SHg5RkR4SUpIeHFGSnlXVUlJSVFJeHFKCg== | Save this for a later level: [https://i.imgur.com/87cX9y4.jpg](https://i.imgur.com/87cX9y4.jpg) | 4 decodes needed_

            
    * Yet another string encoded with a series of base64 and rot13 transformations.

            
    * In Python: `"SHg5RkR4SUpIeHFGSnlXVUlJSVFJeHFKCg==".decode('base64').decode('rot13').decode('base64').decode('rot13')`

            
    * This yields: EBEORIETEMETHHPITI

            
    * Contestants were expected to do a web search for this and find out it is the end of the [Zodiac Killer's infamous message](https://en.wikipedia.org/wiki/File:Zodiac_cipher.png).

            
    * The answer: **####zodiac**

        
    

    
  * Level 4
        
            
    * Clue: _[https://i.imgur.com/x4nejBh.png](https://i.imgur.com/x4nejBh.png) | LaTeX right direction | [Google!](https://lmsptfy.com/?q=alternatives%20to%20Google%20searching) | No maths needed_

            
    * The topic changed several times as contestants seemed pretty stumped on this level, the topic line above was its final form.

            
    * The answer: **####exner** - this was expected from figuring out what the equation is. Simply put, the equation in the image is [Exner's Equation](https://en.wikipedia.org/wiki/File:PaolaExnerEqnRock.jpg).

        
    

    
  * Level 5
        
            
    * Clue: _[https://i.imgur.com/SandvWX.gif](https://i.imgur.com/SandvWX.gif) | Save this for a later level: [https://i.imgur.com/QpTubts.jpg](https://i.imgur.com/QpTubts.jpg)_

            
    * This level was pretty tricky. This is an image that has more to it than meets the eye.

            
    * Steps for recovering useful information:
                
                    
      * Un[zip](https://en.wikipedia.org/wiki/Zip_%28file_format%29) the [.gif](https://en.wikipedia.org/wiki/Graphics_Interchange_Format)

                    
      * Open the secret.txt file.

                
            

            
    * Inside secret.txt is: ####Kolmogorov

            
    * The answer: **####Kolmogorov**

        
    

    
  * Level 6
        
            
    * Clue: _[https://www.dropbox.com/s/emz7xy3p9r2ivxe/wat.unknown](https://www.dropbox.com/s/emz7xy3p9r2ivxe/wat.unknown) (verify the file, sha256sum: 0efade1bb29d1b7fdd65e5612159e262cbd41a2e27ed89a0144701a5556da68f)_

            
    * This file is more stenography:
                
                    
      * Use '[file](https://en.wikipedia.org/wiki/File_%28command%29)' to determine what the file type is.

                    
      * Un-[7zip](https://en.wikipedia.org/wiki/7-Zip) the .unknown file

                    
      * Base64 decode the output

                    
      * Use 'file' to determine that the output is a [.jpg](https://en.wikipedia.org/wiki/JPEG)

                    
      * Unzip the .jpg

                    
      * Un[tar](https://en.wikipedia.org/wiki/Tar_%28computing%29) two.tar.[gz](https://en.wikipedia.org/wiki/Gzip)

                    
      * Open the surprised.txt file.

                
            

            
    * The content of surprised.txt is: ####ImSoMetaEvenThisAcronym

            
    * The answer: **####ImSoMetaEvenThisAcronym**

        
    

    
  * Level 7
        
            
    * Clue: _AQwPfPN1ZBXNfvNj4bPmVR4fVQYPfPNlZBXNfvNkAP4jZhXNflOS and "Da Vinci" | Jules Verne | s/.02/.03/ in the decrypted text
_
            
    * The clue is base64'ed and rot13'ed. To decode it in Python: `print "AQwPfPN1ZBXNfvNj4bPmVR4fVQYPfPNlZBXNfvNkAP4jZhXNflOS".decode('rot13').decode('base64')`

            
    * This yields: 48° 50′ 0″ N, 2° 20′ 14.02″ E

            
    * These are GPS coordinates for the [Paris meridian](https://en.wikipedia.org/wiki/Paris_Meridian).

            
    * From this and the "Da Vinci" clue contestants were expected to find the [Wikipedia](https://www.wikipedia.org/) page about the [Rose Line](https://en.wikipedia.org/wiki/Rose_Line).

            
    * The specific quote that contestants were suppose to find: 
    
    "Dan Brown simply invented the 'Rose Line' linking Rosslyn and Glastonbury. The name 'Roslin' definitely does not derive from any 'hallowed Rose Line'. It has nothing to do with a 'Rose Bloodline' or a 'Rose Line meridian'. There are many medieval spellings of 'Rosslyn'. 'Roslin' is certainly not the 'original spelling': it is now the most common spelling for the village."[18]

- [Source](https://en.wikipedia.org/wiki/Rose_Line#Dan_Brown.27s_The_Da_Vinci_Code)

            
    * The "Jules Verne" clue is suppose to reaffirm to contestants that they were on the right track: 
    
    The competition between the Paris and Greenwich meridians is a plot element in Jules Verne's "Twenty Thousand Leagues Under the Sea", published just before the international decision in favor of the British one.

- [Source](https://en.wikipedia.org/wiki/Paris_Meridian#Origin)

            
    * The answer: **####roslin**

        
    

    
  * Level 8
        
            
    * Original topic: Clue: _ZANKNMEPAXULMJCAGLKHKTOLUPSRDD | [https://i.imgur.com/6ayrOMq.png](https://i.imgur.com/6ayrOMq.png)_

            
    * New topic: _UIVXUJZIULMJCAGLKHKTOLUPSRDD | [https://i.imgur.com/6ayrOMq.png](https://i.imgur.com/6ayrOMq.png)_

            
    * The string in both topics is encoded with a [Four-square cipher](https://en.wikipedia.org/wiki/Four-square_cipher).

            
    * Here are two scripts that were built for Four-square:
                
                    
      * encrypt, [http://git.io/Y6JIww](http://git.io/Y6JIww)

                    
      * decrypt, [http://git.io/CQuh8g](http://git.io/CQuh8g)

                
            

            
    * Using "IRC" and "xkcd" - the keys saved earlier, the text decrypts to: POVAROVOSOLNECHNOGORSKRUSSIA

            
    * Originally it was: ZELENOGRADSOLNECHNOGORSKRUSSIA

            
    * The answer: **####POVAROVOSOLNECHNOGORSKRUSSIA**

        
    

    
  * Level 9
        
            
    * Clue: _ZCLVLLCOIUTKKJSCEKHHHSMKTOOPBA | OGUCSSGAPVGVLUMBTVOGICUNJDHSTB | RUTJJGNXUNTY | Letters that would repeat in a typical word do not repeat in the key(s), example 'freenode' would be 'frenod' | [https://i.imgur.com/pGIBjEE.png](https://i.imgur.com/pGIBjEE.png) | [http://is.gd/TgNsvm](http://is.gd/TgNsvm)_

            
    * Alright this one is really really really tricky. The topic changed _several_ times.

            
    * The three strings are encoded with [Four-square](https://en.wikipedia.org/wiki/Four-square_cipher) from the previous level with the same keys.

            
    * Contestants were expected to use 'UVB' and 'RUSSIA' as keys for the Four-square cipher.

            
    * It was expected that contestants arrive at 'UVB' from the channel name, ####POVAROVOSOLNECHNOGORSKRUSSIA

            
    * The former transmitter[27] was located near Povarovo, Russia[28] at 56°5′0″N 37°6′37″E which is about halfway between Zelenograd and Solnechnogorsk and 40 kilometres (25 mi) northwest of Moscow, near the village of Lozhki.

- [Source](https://en.wikipedia.org/wiki/UVB-76#Location_and_function)

            
    * The is.gd link points to a file that has the "No Q" image from a previous level hidden in it.

            
    * The "RUTJJGNXUNTY" decrypts to [AaronHSwartz](https://en.wikipedia.org/wiki/Aaron_Swartz)

            
    * The answer: **####AaronHSwartz**

        
    

    
  * Level 10
        
            
    * Clue: _HKGJSUOJVRLGSBELAUHOUIGLVRURWMGTUGJGWTKN_

            
    * Originally this channel (####AaronHSwartz) was suppose to be the winner's circle, however due to too many people leaking answers and channel names, one more challenge was added.

            
    * Same cipher as before, this time the keys were 'DEMAND' and 'PROGRESS'

            
    * [_Demand Progress_](http://www.demandprogress.org/) is an Internet activist-related organization specializing in petitions to help gain traction for legal movements against Internet censorship and related subjects, started by Aaron Swartz, [source](https://en.wikipedia.org/wiki/Demand_Progress).

            
    * The clue decrypts to JOINUSNOWANDSHARETHESOFTWAREWRITTENBYRMS

            
    * RMS is [Richard Matthew Stallman](https://en.wikipedia.org/wiki/Richard_Stallman), and [_'Join Us Now and Share the Software'_](https://www.gnu.org/music/free-software-song.html) is an openly licensed song by Richard Stallman.

            
    * The answer: **####JOINUSNOWANDSHARETHESOFTWAREWRITTENBYRMS**

        
    


  
  

The topic in ####JOINUSNOWANDSHARETHESOFTWAREWRITTENBYRMS was: _Congratulations on solving the freenode's April Fools 2014 Crypto Challenge | Want MOAR? #ircpuzzles_
  

Congratulations to those who participated this year!
  
  
  
  

The 25 additional people that completed the challenge:
  




    
  * 2014-04-05T04:06:53 knivey

    
  * 2014-04-05T10:00:12 Tordek

    
  * 2014-04-05T15:40:50 jacob1 *

    
  * 2014-04-05T15:48:48 stac

    
  * 2014-04-05T16:24:01 Changaco *

    
  * 2014-04-05T17:30:01 Arch-TK *

    
  * 2014-04-05T17:35:05 ar *

    
  * 2014-04-05T18:16:20 Weetos *

    
  * 2014-04-05T18:38:39 nyuszika7h

    
  * 2014-04-05T18:56:26 vi[NLR]

    
  * 2014-04-05T19:06:38 tkd *

    
  * 2014-04-05T21:54:56 Chiyo

    
  * 2014-04-05T22:46:01 slidercrank

    
  * 2014-04-05T22:54:10 jojoa1997

    
  * 2014-04-06T00:55:51 Pixelz *

    
  * 2014-04-06T02:53:25 Transfusion

    
  * 2014-04-06T02:58:15 DonkeyHotei

    
  * 2014-04-06T03:04:01 sdamashek *

    
  * 2014-04-06T03:07:49 Cypi *

    
  * 2014-04-06T03:36:03 FXOR

    
  * 2014-04-06T13:44:35 pad

    
  * 2014-04-06T19:22:06 skasturi

    
  * 2014-04-06T19:37:13 Bloodhound

    
  * 2014-04-07T08:16:22 molly *

    
  * 2014-04-07T14:42:32 Bijan-E


  

_(*) user opted out of the cloak lottery_

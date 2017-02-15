; r_shitty_sasl.mrc                           http://hawkee.com/snippet/17983/
; ----------------------------------------------------------------------------
;  SUPER SHITTY SASL Script by Raccoon 2017-Feb-14 for mIRC 6.10 to 7.47 up.
;  FIRST RELEASE. SUPER SHITTY. VALENTINE'S DAY EDITION. 2/14/2017 -- ENJOY!
; ----------------------------------------------------------------------------
;
; Q. Can I have other SASL scripts loaded?
; A. NO! No, no no. Uninstall all other SASL scripts!
;
; Q. How do I work it?
; A. Just edit your Server settings, plugging your
;    nickname:password into the Password field.
;
; /------------------------------------------------------------\  ==========
; | Edit Server                                          [ X ] |  ATTENTION!
; | +--------------------------------------------------------+ |  ==========
; | |                                                        | |
; | |  Description:  [ chat.freenode.net               ]     | |   PUT YOUR
; | |                                                        | |
; | |   IRC Server:  [ chat.freenode.net               ]     | |   NICKNAME
; | |                                                        | |
; | |        Ports:  [ +6697,+7000,+7070               ]     | |     AND
; | |                                                        | |
; | |        Group:  [ Freenode                   ]          | |   PASSWORD
; | |                                                        | |
; | |  -> Password:  [ Raccoon:MySeKrItPaSsWoRd   ] <-------------- HERE!! <-
; | |                                                        | |
; | |     *------------*  *------------*  *------------*     | |   SEPARATED
; | |     |     OK     |  |   Cancel   |  |    Help    |     | |
; | |     *------------*  *------------*  *------------*     | |    WITH A 
; | +-rac----------------------------------------------------+ |
; \------------------------------------------------------------/   COLON ':'
;
; This script will utilize your nickname:password information that
; is supplied by the PASS command to initiate the SASL handshake.
; The PASS command will still be sent, and acts as a fallback.
;
; This script is SUPER SHITTY because it gives no shits about the proper
; back-and-forth exchange of CAP negotiation.  It just fires off commands.
; It works almost all the time. Your results may vary. No warranty.
;
; If you have any questions, ask for help in ##mIRC on freenode. -- Raccoon
;
; Advice: Always connect to IRC via encrypted SSL port. eg: +6697 (not 6667)
;
; ----------------------------------------------------------------------------

On ^*:LOGON:*: {
  if ($version < 7.42) {
    debug -ip $iif($debug,$v1,on) SHITTY_SASL
} }

ALIAS SHITTY_SASL {
  if ($regex($1-,/^-> \S+ PASS (\S+?):(\S+)$/)) {
    noop $SUPER_SHITTY_SASL_AUTH($regml(1),$regml(2))
    debug $iif($window($debug),$v1,off)
  }
  if ($1 == <-) { debug $iif($window($debug),$v1,off) }
  return $1-
}

On $*:PARSELINE:out:/^PASS (\S+):(\S+)$/: {
  ; versions >= 7.42 (2015)
  noop $SUPER_SHITTY_SASL_AUTH($regml(1),$regml(2))
}

ALIAS -l SUPER_SHITTY_SASL_AUTH {
  var %u = $1, %p = $2
  .raw CAP REQ :sasl
  .raw AUTHENTICATE PLAIN
  bset -t &auth 1 %u $+ $lf $+ %u $+ $lf $+ %p
  breplace &auth 10 00
  noop $encode(&auth,mb)
  .raw AUTHENTICATE $bvar(&auth,1-).text
  .raw CAP END
} ; by Raccoon 2017

; Footnote.  This script is intentionally the shittiest way to implement SASL.
; HOWEVER! It is the smallest SASL script, and works with all versions of mIRC v6.1+ (2003).

; End of script.

/*

SASL plugin for ChatZilla.

ChatZilla is a clean, easy to use and highly extensible Internet Relay Chat (IRC) client.
Get it here: https://addons.mozilla.org/addon/16

How do I install scripts?
http://chatzilla.hacksrus.com/faq/#install-script

*****************************************************************************************

Plugin usage.


/plugin-pref cz_sasl
/plugin-pref cz_sasl sasl.username YOUR_USERNAME
/plugin-pref cz_sasl sasl.password YOUR_PASSWORD
/plugin-pref cz_sasl sasl.proceed_on_fail (true|false)

*****************************************************************************************

How to enable debug mode.

- Set ``browser.dom.window.dump.enabled'' to true in ``about:config''.
- Run ``/pref debugMode cdt'' in ChatZilla.
- Start ChatZilla from console, like ``seamonkey -chat'' or ``firefox.exe -chat -console''.

*****************************************************************************************

Raw SASL.

~$ telnet irc.freenode.net 6667
Trying 78.40.125.4...
Connected to chat.freenode.net.
Escape character is '^]'.
:barjavel.freenode.net NOTICE * :*** Looking up your hostname...
:barjavel.freenode.net NOTICE * :*** Checking Ident
:barjavel.freenode.net NOTICE * :*** Found your hostname
CAP LS
NICK test
USER test test irc.freenode.net :test
:barjavel.freenode.net NOTICE * :*** No Ident response
:barjavel.freenode.net CAP * LS :identify-msg multi-prefix sasl
CAP REQ :multi-prefix sasl
:barjavel.freenode.net CAP test ACK :multi-prefix sasl 
AUTHENTICATE PLAIN
AUTHENTICATE +
AUTHENTICATE R3...WYx <-- 'nick\0nick\0pass' encoded base64
:barjavel.freenode.net 900 test test!test@unaffiliated.test acnt :You are now logged in as Gryllida.
:barjavel.freenode.net 903 test :SASL authentication successful
CAP END



*****************************************************************************************

(C) 2011 Gryllida A <Gryllida@gmail.com>

*/


plugin.id = "cz_sasl";


plugin.init =
function initPlugin(glob){    
    plugin.major = 0;
    plugin.minor = 4;
    plugin.version = plugin.major + "." + plugin.minor;
    plugin.description = "Adds sasl authentication support. To setup, |/plugin-pref cz_sasl|";
    plugin.prefary = plugin.prefary.concat([
     ["sasl.servername", "chat.freenode.net"],
     ["sasl.username",""],
     ["sasl.password",""],
     ["sasl.proceed_on_fail",false]
    ]);
    display(plugin.id + " loaded from url " + plugin.url);
    return "OK";
}

plugin.disable =
function disablePlugin(status){
    display("disabling " + plugin.id);
    client.eventPump.removeHookByName(plugin.id+"hook-cap");
    client.eventPump.removeHookByName(plugin.id+"hook-connect");
    return true; // Do NOT keep enabled without errors.
}

plugin.enable =
function enablePlugin(status){
   display("enabling " + plugin.id);
   client.eventPump.addHook([{ set: /^(server|channel|user)$/, type: "parseddata" }], hook_cap, plugin.id+"hook-cap");
   client.eventPump.addHook([{ set: /^(server|channel|user)$/, type: "connect" }], hook_connect, plugin.id+"hook-connect");

			return true;
}

function hook_connect(e){
    if (e.server.hostname==plugin.prefs["sasl.servername"] && e.type=="connect"){
        e.server.sendData("CAP LS\n");
    }
}

function hook_cap(e){
    if (e.server.hostname==plugin.prefs["sasl.servername"]){
        if (e.params[0]=="CAP" && e.params[2]=="LS"){
            e.server.sendData("CAP REQ :sasl\n");
            display("CAP REQ :multi-prefix sasl");
        }
        else if (e.params[3]=="sasl "){
            e.server.sendData("AUTHENTICATE PLAIN\n");
            display("AUTHENTICATE PLAIN");
        }
        else if (e.data == "AUTHENTICATE +"){
            stuff = window.btoa(plugin.prefs["sasl.username"]+'\0'+plugin.prefs["sasl.username"]+'\0'+plugin.prefs["sasl.password"]);
            e.server.sendData("AUTHENTICATE "+stuff+"\n");
            display("AUTHENTICATE "+stuff);
        }
        else if (e.params[0]=="903"){
            e.server.sendData("CAP END\n");
            display("CAP END");
        }
        else if (e.params[0]=="904" || e.params[0]=="905"){
            e.server.sendData("CAP END\n");
            display("SASL authentication failed - invalid login or password. Please use the accountname (not a nick) as username, and try again.","warning");
            if(plugin.prefs["sasl.proceed_on_fail"]==false){
                dispatch("cancel");
            }
        }
    }
}


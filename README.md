# **<center>Pidgin</center>**


**INTRODUCTION**

*pidgin https://www.pidgin.im/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

1 - copier/coller dans un terminal :

    mkdir $HOME/pidgin

    docker run -d --name pidgin -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}/pidgin:/home/pidgin/.purple -e DISPLAY alexandreoda/pidgin


**CONFIGURATION**

*Pour creer un compte XMPP en .onion utilisez tor-browser et suivre ce lien*

*libertygb2nyeyay.onion:5280/register_web*


<br/>1 - DANS PIDGIN / OUTILS / PREFERENCES / PROXY :

<br/>(cocher) utiliser une DNS avec SOCKS4

<br/>Type de proxy: Tor/Privacy (SOCKS5)
<br/>Hote         : 127.0.0.1
<br/>Port         : 9050
<br/>Utilisateur	: laisser vide
<br/>Mot de passe	: laisser vide


<br/>2 - ACCEPTEZ LE CERTIFICAT


<br/>3 - DANS PIDGIN / OUTILS / PLUGINS :

<br/>(cocher) Messagerie Confidentielle Off te Record


<br/>4 - CHOISIR CONFIGURER LE PLUGIN (a coter de fermer)

<br/>(cliquer) sur produire
<br/>(cocher) Exiger messagerie privee

<br/>DANS VOS CONVERSATIONS CLIQUER SUR NON-PRIVE / NON-VERIFIER / AUTHENTIFIER LE CONTACT

<br/>(votre interlocuteur devras faire pareil de son cote)


**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/pidgin/blob/master/LICENSE)

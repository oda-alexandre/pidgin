# PIDGIN

<img src="http://pngimg.com/uploads/opers/opers_PNG15.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [Configuration](#CONFIG)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/pidgin/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/pidgin/commits/master)


## INTRODUCTION

Docker image of :

- [Pidgin](https://pidgin.io/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/pidgin/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/pidgin/)


## PREREQUISITES

Use [docker](https://www.docker.com)


## INSTALL

```
docker run -d --name pidgin -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/pidgin -e DISPLAY alexandreoda/pidgin
```


## CONFIG

To create an XMPP account in .onion use tor-browser and follow this link libertygb2nyeyay.onion:5280/register_web


1 -  IN  PIDGIN / TOOLS / PREFERENCES / PROXY

(check) Use a DNS with SOCKS4

Type of proxy : Tor/Privacy (SOCKS5)
Hote          : 127.0.0.1
Port          : 9050
User          : leave empty
Password      : leave empty


2 - ACCEPT THE CERTIFICATE


3 -  IN  PIDGIN / TOOLS / PLUGINS

(check) Confidential Messaging Off the Record


4 - CHOICE CONFIGURE THE PLUGIN (next to of closed)

(clic) on produce
(check) Require private messaging

IN YOUR CONVERSATIONS CLICK ON NO-PRIVATE / NO-CHECK / AUTHENTIFIER THE CONTACT

(your interlocutor will have to do the same for him)


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/pidgin/blob/master/LICENSE)

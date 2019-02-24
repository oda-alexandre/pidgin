# PIDGIN

![pidgin](https://raw.githubusercontent.com/oda-alexandre/pidgin/master/img/logo-pidgin.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/pidgin/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Configuration](#CONFIGURATION)
- [License](#LICENSE)


## BUILD DOCKER

[![pidgin docker build](https://img.shields.io/docker/build/alexandreoda/pidgin.svg)](https://hub.docker.com/r/alexandreoda/pidgin)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Pidgin](https://pidgin.io/) pour [docker](https://www.docker.com), mis à jour automatiquement dans le [docker hub](https://hub.docker.com/r/alexandreoda/pidgin/) public.


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name pidgin -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/pidgin -e DISPLAY alexandreoda/pidgin
```


## CONFIGURATION

Pour creer un compte XMPP en .onion utilisez tor-browser et suivre ce lien libertygb2nyeyay.onion:5280/register_web


1 - DANS PIDGIN / OUTILS / PREFERENCES / PROXY

(cocher) utiliser une DNS avec SOCKS4

Type de proxy : Tor/Privacy (SOCKS5)
Hote          : 127.0.0.1
Port          : 9050
Utilisateur   : laisser vide
Mot de passe  : laisser vide


2 - ACCEPTEZ LE CERTIFICAT


3 - DANS PIDGIN / OUTILS / PLUGINS

(cocher) Messagerie Confidentielle Off te Record


4 - CHOISIR CONFIGURER LE PLUGIN (a coter de fermer)

(cliquer) sur produire
(cocher) Exiger messagerie privee

DANS VOS CONVERSATIONS CLIQUER SUR NON-PRIVE / NON-VERIFIER / AUTHENTIFIER LE CONTACT

(votre interlocuteur devras faire pareil de son cote)


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/pidgin/blob/master/LICENSE)

FROM debian:buster-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update
RUN apt-get install -y sudo pidgin pidgin-otr tor libcanberra-gtk-module

RUN apt-get --purge autoremove -y

RUN rm -f /etc/tor/torrc
RUN echo "SOCKSPort 9050" >> /etc/tor/torrc
RUN echo "" >> /etc/tor/torrc

RUN useradd -d /home/pidgin -m pidgin
RUN passwd -d pidgin
RUN adduser pidgin sudo

USER pidgin

CMD sudo service tor start && sudo service privoxy start && pidgin -f

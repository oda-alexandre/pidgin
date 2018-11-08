FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update && apt-get install -y \
sudo \
pidgin \
pidgin-otr \
tor \
libcanberra-gtk-module

RUN apt-get --purge autoremove -y

RUN rm -f /etc/tor/torrc && \
echo "SOCKSPort 9050" >> /etc/tor/torrc && \
echo "" >> /etc/tor/torrc

RUN useradd -d /home/pidgin -m pidgin && \
passwd -d pidgin && \
adduser pidgin sudo

USER pidgin

CMD sudo service tor start && sudo service privoxy start && pidgin -f

FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update && apt-get install -y \
sudo \
pidgin \
pidgin-otr \
tor \
privoxy \
libcanberra-gtk-module

RUN useradd -d /home/pidgin -m pidgin && \
passwd -d pidgin && \
adduser pidgin sudo

USER pidgin

WORKDIR /home/pidgin

RUN sudo rm -f /etc/privoxy/config && \
sudo rm -f /etc/tor/torcc && \
echo "listen-address localhost:8118" | sudo tee -a /etc/privoxy/config && \
echo "forward-socks5 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4a / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "SOCKSPort localhost:9050" | sudo tee -a /etc/tor/torcc

RUN sudo apt-get --purge autoremove -y

CMD sudo service tor start && sudo service privoxy start && pidgin -f

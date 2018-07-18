FROM ubuntu:18.04


RUN apt update && apt install -y wget
RUN cd ~

RUN wget https://download.litecoin.org/litecoin-0.16.0/linux/litecoin-0.16.0-x86_64-linux-gnu.tar.gz
RUN tar -zxvf litecoin-0.16.0-x86_64-linux-gnu.tar.gz
RUN install -m 0755 -o root -g root -t /usr/local/bin /litecoin-0.16.0/bin/*
RUN rm -rf /litecoin-0.16.0/ litecoin-0.16.0-x86_64-linux-gnu.tar.gz

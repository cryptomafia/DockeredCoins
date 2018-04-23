FROM ubuntu:18.04

RUN apt update
RUN apt install software-properties-common -y
RUN apt-add-repository ppa:bitcoin/bitcoin
RUN apt update
RUN apt install bitcoind -y

EXPOSE 8332 8333
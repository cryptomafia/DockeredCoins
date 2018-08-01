FROM ubuntu:18.04
MAINTAINER Vasily Tau <vasily.tau@gmail.com>

RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt update
RUN apt install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git libdb4.8-dev libdb4.8++-dev
RUN apt install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev libzmq3-dev
RUN git clone https://github.com/dashpay/dash.git

RUN cd dash && ./autogen.sh
WORKDIR /dash
RUN chmod +x ./configure
RUN ./configure && make && make install

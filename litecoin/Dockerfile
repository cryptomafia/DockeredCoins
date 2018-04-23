FROM ubuntu:18.04


RUN apt update && apt install -y wget && \
    wget https://download.litecoin.org/litecoin-0.15.1/linux/litecoin-0.15.1-x86_64-linux-gnu.tar.gz && \
    tar -zvxf litecoin-0.15.1-x86_64-linux-gnu.tar.gz && \
    mv litecoin-0.15.1 litecoin

VOLUME ["/opt/litecoin"]

EXPOSE 9332 9333

CMD ["/opt/litecoin/litecoin/bin/litecoind "]
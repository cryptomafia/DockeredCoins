# original is here: https://github.com/ethereum/go-ethereum/blob/master/Dockerfile
FROM golang:1.10-alpine as builder

RUN apk add --no-cache make gcc musl-dev linux-headers git

WORKDIR /
RUN git clone https://github.com/ethereum/go-ethereum.git
RUN cd /go-ethereum && make geth

# Pull Geth into a second stage deploy alpine container
FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /go-ethereum/build/bin/geth /usr/local/bin/

EXPOSE 8545 8546 30303 30303/udp
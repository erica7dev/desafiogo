FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go get github.com/erica7dev/desafiogo/main
RUN cd /build && git clone github.com/erica7dev/desafiogo.git

ENTRYPOINT ["/build/desafiogo/main/main"]
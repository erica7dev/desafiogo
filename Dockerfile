FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go install github.com/erica7dev/desafiogo
RUN cd /build && git clone github.com/erica7dev/desafiogo.git

ENTRYPOINT ["/build/desafiogo/main"]
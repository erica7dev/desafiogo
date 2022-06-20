FROM golang:1.16-buster AS builder

WORKDIR /app

COPY go.* ./

RUN go mod download

COPY *.go ./

RUN go build -o /erica7dev_codeeducation

EXPOSE 8080

ENTRYPOINT ["/erica7dev_codeeducation"]
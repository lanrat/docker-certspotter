
FROM golang:1.10-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN apk update && apk upgrade && \
    apk add --no-cache python3 asciinema

RUN git clone --depth 1 https://github.com/SSLMate/certspotter.git /go/src/software.sslmate.com/src/certspotter/

WORKDIR /go/src/software.sslmate.com/src/certspotter/cmd/certspotter

RUN go get ./...

RUN go install

WORKDIR /root

CMD certspotter


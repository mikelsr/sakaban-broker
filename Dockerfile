FROM golang:alpine

RUN apk add git

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH" && \
        mkdir -p "$GOPATH/src/bitbucket.org/mikelsr"

RUN go get "github.com/multiformats/go-multiaddr"

COPY . "$GOPATH/src/bitbucket.org/mikelsr/sakaban-broker"
RUN go install bitbucket.org/mikelsr/sakaban-broker

EXPOSE 3080:3080

CMD ["sakaban-broker"]

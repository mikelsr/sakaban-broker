FROM golang:alpine

RUN apk add --no-cache git

ENV GO111MODULE=on
COPY . /go/src/bitbucket.org/mikelsr/sakaban-broker
RUN go install bitbucket.org/mikelsr/sakaban-broker

EXPOSE 3080:3080

CMD ["sakaban-broker"]

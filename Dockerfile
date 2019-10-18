FROM golang:1.13.1

WORKDIR /go/src/github.com/jmhodges/ensure-latest-go
COPY ./vendor ./vendor
COPY ./latest_go_ensurer ./latest-go-ensurer
COPY ./entrypoint.sh /entrypoint.sh

RUN go install github.com/jmhodges/ensure-latest-go/latest_go_ensurer

ENTRYPOINT ["/entrypoint.sh"]

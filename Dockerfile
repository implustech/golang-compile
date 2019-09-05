FROM golang:1.13.0-alpine3.10

RUN apk --no-cache add ca-certificates curl git make openssh-client docker bash bc mongodb-tools \
    && sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd \
    && mkdir -p /tmp/go/src \
    && GOPATH=/tmp/go go get -u golang.org/x/lint/golint \
    && mv /tmp/go/bin/golint /usr/bin/ && rm -rf /tmp/go



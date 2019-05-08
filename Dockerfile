FROM golang:1.12.5-alpine3.9

RUN apk --no-cache add ca-certificates curl git make openssh-client docker bash bc mongodb-tools \
    && sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd \
    && mkdir -p /tmp/go/src \
    && GOPATH=/tmp/go go get -u golang.org/x/lint/golint \
    && mv /tmp/go/bin/golint /usr/bin/ && rm -rf /tmp/go



FROM golang:1.19.2-alpine3.16

RUN apk --no-cache add ca-certificates curl git make openssh-client docker bash bc  \
    && sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd \
    && go install golang.org/x/lint/golint@latest \
    && go install github.com/mongodb/mongo-tools/mongoimport/main@latest && mv /go/bin/main /go/bin/mongoimport \
    && rm -rf /go/pkg



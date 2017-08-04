FROM golang:1.8.3-alpine3.6

RUN apk --no-cache add ca-certificates curl git make openssh-client docker \
    && curl -s https://glide.sh/get | sh \
    && rm -rf /tmp/glide*

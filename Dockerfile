FROM alpine:3.23.4

RUN mkdir -p /usr/local/share/ca-certificates
COPY ext/pki/tls/*.crt /usr/local/share/ca-certificates
# hadolint ignore=DL3018
RUN apk --no-cache add ca-certificates && update-ca-certificates

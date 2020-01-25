FROM alpine:latest
LABEL maintainer="Luke Tainton <luke@tainton.uk>"
ARG DOCUMIZE_VERSION=v3.6.0
RUN apk add --no-cache curl
WORKDIR /
RUN curl -L -o documize "https://github.com/documize/community/releases/download/${DOCUMIZE_VERSION}/documize-community-linux-amd64" && chmod 755 documize
ENTRYPOINT ["/documize -port 80"]
EXPOSE 80
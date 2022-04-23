FROM alpine:latest
LABEL maintainer="Luke Tainton <luke@tainton.uk>"
LABEL org.opencontainers.image.source="https://github.com/luketainton/documize-docker"
ARG DOCUMIZE_VERSION=v5.0.0
RUN apk add --no-cache curl
WORKDIR /opt
RUN curl -L -o documize "https://github.com/documize/community/releases/download/${DOCUMIZE_VERSION}/documize-community-linux-amd64" && chmod 755 documize
ENTRYPOINT ["./documize -port 80"]
EXPOSE 80

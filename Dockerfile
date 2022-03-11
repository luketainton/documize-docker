FROM alpine:latest
LABEL maintainer="Luke Tainton <luke@tainton.uk>"
LABEL org.opencontainers.image.source="https://gitlab.com/luketainton/documize-docker"
ARG DOCUMIZE_VERSION=v4.2.3
RUN apk add --no-cache curl
WORKDIR /opt
RUN curl -L -o documize "https://github.com/documize/community/releases/download/${DOCUMIZE_VERSION}/documize-community-linux-amd64" && chmod 755 documize
ENTRYPOINT ["./documize -port 80"]
EXPOSE 80

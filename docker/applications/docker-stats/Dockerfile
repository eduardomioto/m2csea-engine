FROM alpine:3.7

RUN apk --no-cache add bash jq netcat-openbsd bc

COPY docker-stats.sh /usr/local/bin/docker-stats.sh
RUN chmod +x /usr/local/bin/docker-stats.sh

ENTRYPOINT ["/usr/local/bin/docker-stats.sh"]

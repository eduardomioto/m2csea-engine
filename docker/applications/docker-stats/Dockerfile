FROM alpine:3.7

ENV http_proxy http://topologia:Philips.2017@proxy.whebdc.com.br:3128
ENV https_proxy http://topologia:Philips.2017@proxy.whebdc.com.br:3128

RUN apk --no-cache add bash jq netcat-openbsd bc

COPY docker-stats.sh /usr/local/bin/docker-stats.sh
RUN chmod +x /usr/local/bin/docker-stats.sh

ENTRYPOINT ["/usr/local/bin/docker-stats.sh"]

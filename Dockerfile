FROM alpine:latest
MAINTAINER IRoN <pety3bi@gmail.com>

RUN apk update && \
    apk add --update-cache git npm && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /srv/pupergrep/node_modules && \
    npm install pupergrep

ADD server.js /srv/pupergrep/server.js

ADD entry.sh /usr/local/bin/entry.sh
RUN chmod +x /usr/local/bin/entry.sh

ENTRYPOINT ["/usr/local/bin/entry.sh"]

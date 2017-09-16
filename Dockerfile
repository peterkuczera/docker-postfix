FROM alpine:3.6

RUN apk update && \
    apk add postfix rsyslog && \
    rm /var/cache/apk/*

CMD rm -f /var/run/rsyslogd.pid && rsyslogd && /usr/sbin/postfix start && tail -f /var/log/maillog

FROM alpine:3.10

RUN apk --no-cache add --update docker openrc bash
RUN rc-update add docker boot

COPY . /

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

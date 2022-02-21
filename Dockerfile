FROM alpine:3.10

RUN apk --no-cache add --update docker openrc curl bash
RUN rc-update add docker boot && \
    curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash

COPY . /

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

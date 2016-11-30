
FROM        alpine:3.4
MAINTAINER  Artem Labazin <xxlabaza@gmail.com>

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_CTYPE=en_US.UTF-8 \
    LC_COLLATE=en_US.UTF-8 \
    LC_MESSAGES=en_US.UTF-8 \
    LC_NUMERIC=en_US.UTF-8 \
    LC_TIME=en_US.UTF-8 \
    LC_MONETARY=en_US.UTF-8 \
    LC_PAPER=en_US.UTF-8 \
    LC_IDENTIFICATION=en_US.UTF-8 \
    LC_NAME=en_US.UTF-8 \
    LC_ADDRESS=en_US.UTF-8 \
    LC_TELEPHONE=en_US.UTF-8 \
    LC_MEASUREMENT=en_US.UTF-8 \
    TZ=Europe/Moscow

RUN apk add --no-cache --no-progress tzdata

ONBUILD RUN \
    echo "$TZ" > /etc/timezone \
    && cp "/usr/share/zoneinfo/$TZ" /etc/localtime

FROM alpine:3.3

RUN apk --update add ca-certificates ffmpeg python py-pip py-setuptools && \
    pip install flexget youtube-dl && \
    apk del py-pip

ADD start.sh /start.sh

WORKDIR /data

VOLUME ["/data"]

CMD ["/start.sh"]

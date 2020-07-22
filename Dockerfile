FROM alpine:latest

RUN apk add python3 py-pip aria2 ffmpeg

RUN pip3 install youtube-dl
RUN youtube-dl --version

ADD start.sh /start.sh
RUN chmod 777 /start.sh

RUN mkdir /data
WORKDIR /data

ENTRYPOINT ["/start.sh"]
